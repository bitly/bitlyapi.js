#!/bin/sh
SCRIPT_PATH=$(readlink -f "$0")
SCRIPT_DIR=$(dirname "$SCRIPT_PATH")
cd "$SCRIPT_DIR/.." # run from repo root

BRANCH_NAME="client_update"
BASE_BRANCH="main"
COMMIT_MESSAGE="Update generated TypeScript client"
PR_TITLE="Update TypeScript client"
PR_BODY="Automated update of generated TypeScript client."

DRY_RUN=false
while [ "$1" != "" ]; do
    param=${1%%=*}
    value=${1#*=}
    case $param in
        --dry-run)
            DRY_RUN=true
            ;;
        *)
            echo "unknown parameter \"$param\" value \"$value\""
            exit 1
            ;;
    esac
    shift
done

set -eu

if ! command -v gh >/dev/null 2>&1; then
  echo "GitHub CLI (gh) is required but not installed." >&2
  exit 1
fi

if ! gh auth status >/dev/null 2>&1; then
    echo "authenticating with Github CLI"
    gh auth login
fi

gh auth status


echo "Configuring git user"
if [ -z "$(git config --get user.name)" ]; then
    git config user.name "GithubActions"
fi
if [ -z "$(git config --get user.email)" ]; then
    git config user.email "github-action@automated.bit.ly"
fi

echo "Generating TypeScript API client"
./scripts/generate_ts_api.sh

if git diff --quiet --exit-code; then
  echo "No changes generated. Exiting."
  exit 0
fi

echo "Creating update branch $BRANCH_NAME"
git checkout -B "$BRANCH_NAME"

echo "Staging changes"
git add -A

if git diff --cached --quiet --exit-code; then
  echo "No staged changes found after generation. Exiting."
  exit 0
fi

if [ "$DRY_RUN" = "true" ]; then
    echo -e "DRY RYN: Changes:\n$(git status --porcelain)"
    exit 1
fi

echo "Committing changes"
git commit -m "$COMMIT_MESSAGE"

echo "Pushing branch to origin"
git push --force-with-lease origin "$BRANCH_NAME"


echo "Checking for existing pull request"
OPEN_PR_COUNT=$(gh pr list --head "$BRANCH_NAME" --state open --json number --jq '. | length')
if [ "$OPEN_PR_COUNT" -eq 0 ]; then
    echo "Creating pull request"
    gh pr create --head "$BRANCH_NAME" --base "$BASE_BRANCH" --title "$PR_TITLE" --body "$PR_BODY"
else
    echo "An open pull request already exists for $BRANCH_NAME. Skipping creation."
fi
