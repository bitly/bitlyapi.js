# BSDsApi

All URIs are relative to *https://api-ssl.bitly.com/v4*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**editCustomDomain**](BSDsApi.md#editcustomdomain) | **PATCH** /custom_domains/{custom_domain} | Edit a custom domain |
| [**fetchDomainAgreements**](BSDsApi.md#fetchdomainagreements) | **GET** /domains/{domain}/agreements | Get Purchase Agreements |
| [**getBSDs**](BSDsApi.md#getbsds) | **GET** /bsds | Get the custom domains you can shorten with |
| [**getCustomDomain**](BSDsApi.md#getcustomdomain) | **GET** /custom_domains/{custom_domain} | Get a custom domain |
| [**getCustomDomains**](BSDsApi.md#getcustomdomains) | **GET** /custom_domains | Get custom domains for an organization |
| [**purchaseBsd**](BSDsApi.md#purchasebsd) | **POST** /domains | Register a domain for an organization |
| [**validateCustomDomain**](BSDsApi.md#validatecustomdomain) | **POST** /custom_domains | Add a custom domain you own |



## editCustomDomain

> CustomDomainBody editCustomDomain(custom_domain, domain_update)

Edit a custom domain

Change the settings of a custom domain. Send only the settings to change. An empty root_redirect or wildcard_redirect clears that redirect. The domain must be verified, because a domain that waits on DNS has no settings yet. Organization admins only.

### Example

```ts
import {
  Configuration,
  BSDsApi,
} from '';
import type { EditCustomDomainRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BSDsApi(config);

  const body = {
    // string | a custom domain on your account
    custom_domain: chauncey.ly,
    // DomainUpdate
    domain_update: ...,
  } satisfies EditCustomDomainRequest;

  try {
    const data = await api.editCustomDomain(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **custom_domain** | `string` | a custom domain on your account | [Defaults to `undefined`] |
| **domain_update** | [DomainUpdate](DomainUpdate.md) |  | |

### Return type

[**CustomDomainBody**](CustomDomainBody.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SUCCESS. The domain with the new settings applied |  -  |
| **400** | BAD_REQUEST |  -  |
| **403** | FORBIDDEN |  -  |
| **404** | NOT_FOUND |  -  |
| **422** | UNPROCESSABLE_ENTITY |  -  |
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## fetchDomainAgreements

> DomainAgreements fetchDomainAgreements(domain, organization_guid)

Get Purchase Agreements

Get the registrar agreements that a user must accept before Bitly registers a domain. Pass each agreement_key to POST /domains.

### Example

```ts
import {
  Configuration,
  BSDsApi,
} from '';
import type { FetchDomainAgreementsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BSDsApi(config);

  const body = {
    // string | a web domain
    domain: bit.ly,
    // string | A GUID for a Bitly organization (optional)
    organization_guid: Oa1bcd234eF,
  } satisfies FetchDomainAgreementsRequest;

  try {
    const data = await api.fetchDomainAgreements(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **domain** | `string` | a web domain | [Defaults to `undefined`] |
| **organization_guid** | `string` | A GUID for a Bitly organization | [Optional] [Defaults to `undefined`] |

### Return type

[**DomainAgreements**](DomainAgreements.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SUCCESS |  -  |
| **400** | BAD_REQUEST |  -  |
| **403** | FORBIDDEN |  -  |
| **429** | TOO_MANY_REQUESTS |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **504** | TIMEOUT |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getBSDs

> BSDsResponse getBSDs()

Get the custom domains you can shorten with

Fetch the names of the custom domains the authenticated user can shorten links with, across every organization and group they belong to. The list holds verified domains only, and any member of a group can call it. For setup and verification state, use GET /custom_domains, which returns each domain with its validation_status and group assignments and requires an organization admin.

### Example

```ts
import {
  Configuration,
  BSDsApi,
} from '';
import type { GetBSDsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BSDsApi(config);

  try {
    const data = await api.getBSDs();
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**BSDsResponse**](BSDsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SUCCESS |  -  |
| **400** | BAD_REQUEST |  -  |
| **403** | FORBIDDEN |  * X-Ratelimit-Reason - An explanation of the ratelimit received. <br>  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getCustomDomain

> CustomDomainBody getCustomDomain(custom_domain)

Get a custom domain

Get one custom domain, with its verification state, group assignments, and SSL status. Any member of a group the domain is assigned to can call it, and so can an administrator of the organization that holds it, which is the only way to read a domain that still waits on DNS verification.

### Example

```ts
import {
  Configuration,
  BSDsApi,
} from '';
import type { GetCustomDomainRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BSDsApi(config);

  const body = {
    // string | a custom domain on your account
    custom_domain: chauncey.ly,
  } satisfies GetCustomDomainRequest;

  try {
    const data = await api.getCustomDomain(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **custom_domain** | `string` | a custom domain on your account | [Defaults to `undefined`] |

### Return type

[**CustomDomainBody**](CustomDomainBody.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SUCCESS |  -  |
| **400** | BAD_REQUEST |  -  |
| **403** | FORBIDDEN |  -  |
| **404** | NOT_FOUND |  -  |
| **429** | TOO_MANY_REQUESTS |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getCustomDomains

> CustomDomains getCustomDomains(organization_guid)

Get custom domains for an organization

Get the custom domains of an organization, each with its verification state and group assignments. Without the organization_guid filter, the response covers every organization where the caller is an admin. Organizations where the caller is not an admin are left out.

### Example

```ts
import {
  Configuration,
  BSDsApi,
} from '';
import type { GetCustomDomainsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BSDsApi(config);

  const body = {
    // string | A GUID for a Bitly organization (optional)
    organization_guid: Oa1bcd234eF,
  } satisfies GetCustomDomainsRequest;

  try {
    const data = await api.getCustomDomains(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization_guid** | `string` | A GUID for a Bitly organization | [Optional] [Defaults to `undefined`] |

### Return type

[**CustomDomains**](CustomDomains.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SUCCESS |  -  |
| **403** | FORBIDDEN |  -  |
| **429** | TOO_MANY_REQUESTS |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## purchaseBsd

> PurchaseBSDResponse purchaseBsd(purchase_bsd)

Register a domain for an organization

Register a domain that the organization\&#39;s plan includes, and configure its DNS. Send the agreement_keys from GET /domains/{domain}/agreements. The caller must be an organization admin. Once the organization reaches the number of domains its plan includes, the request fails with ALREADY_RECEIVED_COMPLIMENTARY_DOMAIN. A domain priced at or above the complimentary limit fails with DOMAIN_NOT_COMPLIMENTARY. A blocked or trademarked name, or a domain over 32 characters, fails with DOMAIN_NOT_ALLOWED. A TLD that GET /domains does not offer fails with INVALID_ARG_DOMAIN. Pick a domain from GET /domains to avoid these errors. DNS verification takes up to 48 hours, so read GET /custom_domains for the validation_status when your user returns.

### Example

```ts
import {
  Configuration,
  BSDsApi,
} from '';
import type { PurchaseBsdRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BSDsApi(config);

  const body = {
    // PurchaseBSD
    purchase_bsd: ...,
  } satisfies PurchaseBsdRequest;

  try {
    const data = await api.purchaseBsd(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **purchase_bsd** | [PurchaseBSD](PurchaseBSD.md) |  | |

### Return type

[**PurchaseBSDResponse**](PurchaseBSDResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | CREATED |  -  |
| **400** | BAD_REQUEST |  -  |
| **403** | FORBIDDEN |  -  |
| **409** | CONFLICT |  -  |
| **422** | UNPROCESSABLE_ENTITY |  -  |
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |
| **504** | TIMEOUT |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## validateCustomDomain

> DomainValidate validateCustomDomain(domain_validate_body)

Add a custom domain you own

Add a domain you already own to an organization and queue it for DNS verification. Set prevalidate to true to check the domain without adding it. The caller must be an organization admin. Verification runs asynchronously and takes up to 24 hours, so read GET /custom_domains for the validation_status when your user returns. The request fails when another Bitly account already holds the domain.

### Example

```ts
import {
  Configuration,
  BSDsApi,
} from '';
import type { ValidateCustomDomainRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BSDsApi(config);

  const body = {
    // DomainValidateBody
    domain_validate_body: ...,
  } satisfies ValidateCustomDomainRequest;

  try {
    const data = await api.validateCustomDomain(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **domain_validate_body** | [DomainValidateBody](DomainValidateBody.md) |  | |

### Return type

[**DomainValidate**](DomainValidate.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SUCCESS. The domain is already on the organization, so it was queued for another DNS check and nothing was created |  -  |
| **201** | CREATED. The domain was added and queued for DNS verification |  -  |
| **202** | ACCEPTED. prevalidate was true, so the domain was checked and nothing was created |  -  |
| **400** | BAD_REQUEST |  -  |
| **403** | FORBIDDEN |  -  |
| **404** | NOT_FOUND |  -  |
| **409** | CONFLICT. Another account holds the domain, or the organization is at its custom domain limit |  -  |
| **422** | UNPROCESSABLE_ENTITY |  -  |
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

