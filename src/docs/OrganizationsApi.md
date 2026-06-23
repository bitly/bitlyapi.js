# OrganizationsApi

All URIs are relative to *https://api-ssl.bitly.com/v4*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getOrganization**](OrganizationsApi.md#getorganization) | **GET** /organizations/{organization_guid} | Retrieve an Organization |
| [**getOrganizationShortenCounts**](OrganizationsApi.md#getorganizationshortencounts) | **GET** /organizations/{organization_guid}/shorten_counts | Get Shorten Counts for an Organization |
| [**getOrganizationShortenCountsByGroup**](OrganizationsApi.md#getorganizationshortencountsbygroup) | **GET** /organizations/{organization_guid}/shorten_counts_by_group | Get Shorten Counts for an Organization by Group |
| [**getOrganizations**](OrganizationsApi.md#getorganizations) | **GET** /organizations | Retrieve Organizations |
| [**getPlanLimits**](OrganizationsApi.md#getplanlimits) | **GET** /organizations/{organization_guid}/plan_limits | Get Plan Limits |



## getOrganization

> Organization getOrganization(organization_guid)

Retrieve an Organization

Retrive details for the specified organization.

### Example

```ts
import {
  Configuration,
  OrganizationsApi,
} from '';
import type { GetOrganizationRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new OrganizationsApi(config);

  const body = {
    // string | A GUID for a Bitly organization
    organization_guid: Oa1bcd234eF,
  } satisfies GetOrganizationRequest;

  try {
    const data = await api.getOrganization(body);
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
| **organization_guid** | `string` | A GUID for a Bitly organization | [Defaults to `undefined`] |

### Return type

[**Organization**](Organization.md)

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
| **404** | NOT_FOUND |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getOrganizationShortenCounts

> Metrics getOrganizationShortenCounts(organization_guid, unit, units, unit_reference)

Get Shorten Counts for an Organization

Returns the shorten counts for a specific organization over a specified time period.

### Example

```ts
import {
  Configuration,
  OrganizationsApi,
} from '';
import type { GetOrganizationShortenCountsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new OrganizationsApi(config);

  const body = {
    // string | A GUID for a Bitly organization
    organization_guid: Oa1bcd234eF,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetOrganizationShortenCountsRequest;

  try {
    const data = await api.getOrganizationShortenCounts(body);
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
| **organization_guid** | `string` | A GUID for a Bitly organization | [Defaults to `undefined`] |
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**Metrics**](Metrics.md)

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
| **404** | NOT_FOUND |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getOrganizationShortenCountsByGroup

> Metrics getOrganizationShortenCountsByGroup(organization_guid)

Get Shorten Counts for an Organization by Group

Returns the shorten counts for a specific organization by group for the current month.

### Example

```ts
import {
  Configuration,
  OrganizationsApi,
} from '';
import type { GetOrganizationShortenCountsByGroupRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new OrganizationsApi(config);

  const body = {
    // string | A GUID for a Bitly organization
    organization_guid: Oa1bcd234eF,
  } satisfies GetOrganizationShortenCountsByGroupRequest;

  try {
    const data = await api.getOrganizationShortenCountsByGroup(body);
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
| **organization_guid** | `string` | A GUID for a Bitly organization | [Defaults to `undefined`] |

### Return type

[**Metrics**](Metrics.md)

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
| **404** | NOT_FOUND |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getOrganizations

> Organizations getOrganizations(include_all)

Retrieve Organizations

Retrieve a list of organizations for the authenticated user. By default, only organizations permitted by the token\&#39;s allowed_orgs are returned. Use include_all&#x3D;true to return all organizations regardless of token restrictions. Each organization is annotated with its authentication requirements (require_sso, require_2fa) when configured. 

### Example

```ts
import {
  Configuration,
  OrganizationsApi,
} from '';
import type { GetOrganizationsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new OrganizationsApi(config);

  const body = {
    // boolean | When set to true, returns all of the user\'s organizations regardless of the token\'s allowed_orgs restrictions.  (optional)
    include_all: true,
  } satisfies GetOrganizationsRequest;

  try {
    const data = await api.getOrganizations(body);
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
| **include_all** | `boolean` | When set to true, returns all of the user\&#39;s organizations regardless of the token\&#39;s allowed_orgs restrictions.  | [Optional] [Defaults to `undefined`] |

### Return type

[**Organizations**](Organizations.md)

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
| **404** | NOT_FOUND |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getPlanLimits

> PlanLimits getPlanLimits(organization_guid)

Get Plan Limits

Returns all plan limits and counts available for an organization.

### Example

```ts
import {
  Configuration,
  OrganizationsApi,
} from '';
import type { GetPlanLimitsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new OrganizationsApi(config);

  const body = {
    // string | A GUID for a Bitly organization
    organization_guid: Oa1bcd234eF,
  } satisfies GetPlanLimitsRequest;

  try {
    const data = await api.getPlanLimits(body);
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
| **organization_guid** | `string` | A GUID for a Bitly organization | [Defaults to `undefined`] |

### Return type

[**PlanLimits**](PlanLimits.md)

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
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

