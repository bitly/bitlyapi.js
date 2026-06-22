# BitlinksApi

All URIs are relative to *https://api-ssl.bitly.com/v4*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createBitlink**](BitlinksApi.md#createbitlink) | **POST** /shorten | Shorten a Link |
| [**createFullBitlink**](BitlinksApi.md#createfullbitlink) | **POST** /bitlinks | Create a Bitlink |
| [**deleteBitlink**](BitlinksApi.md#deletebitlink) | **DELETE** /bitlinks/{bitlink} | Delete a Bitlink |
| [**expandBitlink**](BitlinksApi.md#expandbitlink) | **POST** /expand | Expand a Bitlink |
| [**getBitlink**](BitlinksApi.md#getbitlink) | **GET** /bitlinks/{bitlink} | Retrieve a Bitlink |
| [**getBitlinksByGroup**](BitlinksApi.md#getbitlinksbygroup) | **GET** /groups/{group_guid}/bitlinks | Retrieve Bitlinks by Group |
| [**getClicksForBitlink**](BitlinksApi.md#getclicksforbitlink) | **GET** /bitlinks/{bitlink}/clicks | Get Clicks for a Bitlink |
| [**getClicksSummaryForBitlink**](BitlinksApi.md#getclickssummaryforbitlink) | **GET** /bitlinks/{bitlink}/clicks/summary | Get a Clicks Summary for a Bitlink |
| [**getEngagements**](BitlinksApi.md#getengagements) | **GET** /bitlinks/{bitlink}/engagements | Get Engagement Counts for a Bitlink |
| [**getEngagementsSummary**](BitlinksApi.md#getengagementssummary) | **GET** /bitlinks/{bitlink}/engagements/summary | Get an Engagement Count Summary for a Bitlink |
| [**getMetricsForBitlinkByCities**](BitlinksApi.md#getmetricsforbitlinkbycities) | **GET** /bitlinks/{bitlink}/cities | Get Metrics for a Bitlink by City |
| [**getMetricsForBitlinkByCountries**](BitlinksApi.md#getmetricsforbitlinkbycountries) | **GET** /bitlinks/{bitlink}/countries | Get Metrics for a Bitlink by Country |
| [**getMetricsForBitlinkByDevices**](BitlinksApi.md#getmetricsforbitlinkbydevices) | **GET** /bitlinks/{bitlink}/devices | Get Metrics for a Bitlink by Device Type |
| [**getMetricsForBitlinkByReferrerName**](BitlinksApi.md#getmetricsforbitlinkbyreferrername) | **GET** /bitlinks/{bitlink}/referrer_name | Get Metrics for a Bitlink by Referrer Name |
| [**getMetricsForBitlinkByReferrers**](BitlinksApi.md#getmetricsforbitlinkbyreferrers) | **GET** /bitlinks/{bitlink}/referrers | Get Metrics for a Bitlink by Referrers |
| [**getMetricsForBitlinkByReferrersByDomains**](BitlinksApi.md#getmetricsforbitlinkbyreferrersbydomains) | **GET** /bitlinks/{bitlink}/referrers_by_domains | Get Metrics for a Bitlink by Referrers by Domain |
| [**getMetricsForBitlinkByReferringDomains**](BitlinksApi.md#getmetricsforbitlinkbyreferringdomains) | **GET** /bitlinks/{bitlink}/referring_domains | Get Metrics for a Bitlink by Referring Domains |
| [**getSortedBitlinks**](BitlinksApi.md#getsortedbitlinks) | **GET** /groups/{group_guid}/bitlinks/{sort} | Retrieve Sorted Bitlinks for Group |
| [**getTopLinksAndQRCodesByEngagements**](BitlinksApi.md#gettoplinksandqrcodesbyengagements) | **GET** /groups/{group_guid}/engagements/sorted/top | Retrieve Top Links and Decoupled QR Codes by Engagements |
| [**updateBitlink**](BitlinksApi.md#updatebitlink) | **PATCH** /bitlinks/{bitlink} | Update a Bitlink |
| [**updateBitlinksByGroup**](BitlinksApi.md#updatebitlinksbygroup) | **PATCH** /groups/{group_guid}/bitlinks | Bulk update bitlinks |



## createBitlink

> ShortenBitlinkBody createBitlink(shorten)

Shorten a Link

Converts a long url to a Bitlink. You may see errors returned from this endpoint - \&quot;BRANDED_LINK_MONTHLY_LIMIT_EXCEEDED\&quot; occurs if you have shortened more links than your account is configured for for the month, and \&quot;DNS_CONFIGURATION_ERROR\&quot; occurs if you are attempting to shorten links against a custom domain which doesn\&#39;t have DNS properly configured.

### Example

```ts
import {
  Configuration,
  BitlinksApi,
} from '';
import type { CreateBitlinkRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlinksApi(config);

  const body = {
    // Shorten
    shorten: ...,
  } satisfies CreateBitlinkRequest;

  try {
    const data = await api.createBitlink(body);
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
| **shorten** | [Shorten](Shorten.md) |  | |

### Return type

[**ShortenBitlinkBody**](ShortenBitlinkBody.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SUCCESS |  * X-Bsd-Error - An explanation of the DNS error received <br>  |
| **201** | CREATED |  * X-Bsd-Error - An explanation of the DNS error received <br>  |
| **400** | BAD_REQUEST |  -  |
| **403** | FORBIDDEN |  * X-Ratelimit-Reason - An explanation of the ratelimit received. <br>  |
| **417** | EXPECTATION_FAILED |  -  |
| **422** | UNPROCESSABLE_ENTITY |  -  |
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## createFullBitlink

> BitlinkBody createFullBitlink(full_shorten)

Create a Bitlink

Converts a long url to a Bitlink and sets additional parameters. You may see errors returned from this endpoint - \&quot;BRANDED_LINK_MONTHLY_LIMIT_EXCEEDED\&quot; occurs if you have shortened more links than your account is configured for for the month, and \&quot;DNS_CONFIGURATION_ERROR\&quot; occurs if you are attempting to shorten links against a custom domain which doesn\&#39;t have DNS properly configured.

### Example

```ts
import {
  Configuration,
  BitlinksApi,
} from '';
import type { CreateFullBitlinkRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlinksApi(config);

  const body = {
    // FullShorten
    full_shorten: {"long_url":"https://dev.bitly.com","domain":"yourdomain.co","group_guid":"Ba1bc23dE4F","keyword":"new-link"},
  } satisfies CreateFullBitlinkRequest;

  try {
    const data = await api.createFullBitlink(body);
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
| **full_shorten** | [FullShorten](FullShorten.md) |  | |

### Return type

[**BitlinkBody**](BitlinkBody.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SUCCESS |  -  |
| **201** | CREATED |  -  |
| **400** | BAD_REQUEST |  -  |
| **402** | UPGRADE_REQUIRED |  -  |
| **403** | FORBIDDEN |  -  |
| **404** | NOT_FOUND |  -  |
| **417** | EXPECTATION_FAILED |  -  |
| **422** | UNPROCESSABLE_ENTITY |  -  |
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## deleteBitlink

> LinkDeletionResponse deleteBitlink(bitlink)

Delete a Bitlink

Delete an unedited hash Bitlink.

### Example

```ts
import {
  Configuration,
  BitlinksApi,
} from '';
import type { DeleteBitlinkRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlinksApi(config);

  const body = {
    // string | A Bitlink made of the domain and hash
    bitlink: bit.ly/12a4b6c,
  } satisfies DeleteBitlinkRequest;

  try {
    const data = await api.deleteBitlink(body);
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
| **bitlink** | `string` | A Bitlink made of the domain and hash | [Defaults to `undefined`] |

### Return type

[**LinkDeletionResponse**](LinkDeletionResponse.md)

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
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## expandBitlink

> ExpandedBitlink expandBitlink(expand_bitlink)

Expand a Bitlink

Returns the short link and long URL for the specified link.

### Example

```ts
import {
  Configuration,
  BitlinksApi,
} from '';
import type { ExpandBitlinkRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlinksApi(config);

  const body = {
    // ExpandBitlink
    expand_bitlink: ...,
  } satisfies ExpandBitlinkRequest;

  try {
    const data = await api.expandBitlink(body);
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
| **expand_bitlink** | [ExpandBitlink](ExpandBitlink.md) |  | |

### Return type

[**ExpandedBitlink**](ExpandedBitlink.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SUCCESS |  -  |
| **400** | BAD_REQUEST |  -  |
| **404** | NOT_FOUND |  -  |
| **410** | GONE |  -  |
| **422** | UNPROCESSABLE_ENTITY |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getBitlink

> BitlinkBody getBitlink(bitlink)

Retrieve a Bitlink

Returns information for the specified link.

### Example

```ts
import {
  Configuration,
  BitlinksApi,
} from '';
import type { GetBitlinkRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlinksApi(config);

  const body = {
    // string | A Bitlink made of the domain and hash
    bitlink: bit.ly/12a4b6c,
  } satisfies GetBitlinkRequest;

  try {
    const data = await api.getBitlink(body);
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
| **bitlink** | `string` | A Bitlink made of the domain and hash | [Defaults to `undefined`] |

### Return type

[**BitlinkBody**](BitlinkBody.md)

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
| **410** | GONE |  -  |
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getBitlinksByGroup

> Bitlinks getBitlinksByGroup(group_guid, size, search_after, query, hostname_path_query, created_before, created_after, archived, deeplinks, domain_deeplinks, campaign_guid, channel_guid, custom_bitlink, has_qr_codes, is_expired, has_expiration, tags, launchpad_ids, encoding_login)

Retrieve Bitlinks by Group

Returns a paginated collection of Bitlinks for a group. The list of custom bitlinks has newest entries first.

### Example

```ts
import {
  Configuration,
  BitlinksApi,
} from '';
import type { GetBitlinksByGroupRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlinksApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | Token used to search next batch, only use response from API as input value. (optional)
    search_after: search_after_example,
    // string | The value that you would like to search (optional)
    query: api,
    // string | The hostname and/or path you would like to search (case-insensitive). Subdomains included; query params and fragment ignored. (optional)
    hostname_path_query: dev.bitly.com/api-reference,
    // number | Timestamp as an integer unix epoch (seconds only) (optional)
    created_before: 1694529902,
    // number | Timestamp as an integer unix epoch (seconds only) (optional)
    created_after: 1694529902,
    // 'on' | 'off' | 'both' | Whether or not to include archived resources (optional)
    archived: both,
    // 'on' | 'off' | 'both' | Filter to only Bitlinks that contain deeplinks (optional)
    deeplinks: both,
    // 'on' | 'off' | 'both' | Filter to only Bitlinks that contain deeplinks configured with a custom domain (optional)
    domain_deeplinks: both,
    // string | Filter to return only links for the given campaign GUID, can be provided (optional)
    campaign_guid: Ca1bcd2EFGh,
    // string | Filter to return only links for the given channel GUID, can be provided, overrides all other parameters (optional)
    channel_guid: Ha1bc2DefGh,
    // 'on' | 'off' | 'both' (optional)
    custom_bitlink: both,
    // 'on' | 'off' | 'both' | a filter value if the resource has any QR codes (optional)
    has_qr_codes: both,
    // 'on' | 'off' | 'both' | filter bitlinks by expiration status (optional)
    is_expired: is_expired_example,
    // 'on' | 'off' | 'both' | filter bitlinks by presence of expiration (optional)
    has_expiration: has_expiration_example,
    // Array<string> | Filter by given tags (optional)
    tags: ["bitly","api"],
    // Array<string> | Filter by launchpad id (optional)
    launchpad_ids: ["M1234567890"],
    // Array<string> | Filter by the login of the authenticated user that created the Bitlink (optional)
    encoding_login: ["chauncey"],
  } satisfies GetBitlinksByGroupRequest;

  try {
    const data = await api.getBitlinksByGroup(body);
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
| **group_guid** | `string` | A GUID for a Bitly group | [Defaults to `undefined`] |
| **size** | `number` | The quantity of items to be be returned | [Optional] [Defaults to `50`] |
| **search_after** | `string` | Token used to search next batch, only use response from API as input value. | [Optional] [Defaults to `undefined`] |
| **query** | `string` | The value that you would like to search | [Optional] [Defaults to `undefined`] |
| **hostname_path_query** | `string` | The hostname and/or path you would like to search (case-insensitive). Subdomains included; query params and fragment ignored. | [Optional] [Defaults to `undefined`] |
| **created_before** | `number` | Timestamp as an integer unix epoch (seconds only) | [Optional] [Defaults to `undefined`] |
| **created_after** | `number` | Timestamp as an integer unix epoch (seconds only) | [Optional] [Defaults to `undefined`] |
| **archived** | `on`, `off`, `both` | Whether or not to include archived resources | [Optional] [Defaults to `&#39;off&#39;`] [Enum: on, off, both] |
| **deeplinks** | `on`, `off`, `both` | Filter to only Bitlinks that contain deeplinks | [Optional] [Defaults to `&#39;both&#39;`] [Enum: on, off, both] |
| **domain_deeplinks** | `on`, `off`, `both` | Filter to only Bitlinks that contain deeplinks configured with a custom domain | [Optional] [Defaults to `&#39;both&#39;`] [Enum: on, off, both] |
| **campaign_guid** | `string` | Filter to return only links for the given campaign GUID, can be provided | [Optional] [Defaults to `undefined`] |
| **channel_guid** | `string` | Filter to return only links for the given channel GUID, can be provided, overrides all other parameters | [Optional] [Defaults to `undefined`] |
| **custom_bitlink** | `on`, `off`, `both` |  | [Optional] [Defaults to `&#39;both&#39;`] [Enum: on, off, both] |
| **has_qr_codes** | `on`, `off`, `both` | a filter value if the resource has any QR codes | [Optional] [Defaults to `&#39;both&#39;`] [Enum: on, off, both] |
| **is_expired** | `on`, `off`, `both` | filter bitlinks by expiration status | [Optional] [Defaults to `&#39;both&#39;`] [Enum: on, off, both] |
| **has_expiration** | `on`, `off`, `both` | filter bitlinks by presence of expiration | [Optional] [Defaults to `&#39;both&#39;`] [Enum: on, off, both] |
| **tags** | `Array<string>` | Filter by given tags | [Optional] |
| **launchpad_ids** | `Array<string>` | Filter by launchpad id | [Optional] |
| **encoding_login** | `Array<string>` | Filter by the login of the authenticated user that created the Bitlink | [Optional] |

### Return type

[**Bitlinks**](Bitlinks.md)

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


## getClicksForBitlink

> Clicks getClicksForBitlink(bitlink, unit, units, unit_reference)

Get Clicks for a Bitlink

Returns the click counts for the specified link in an array based on a date.

### Example

```ts
import {
  Configuration,
  BitlinksApi,
} from '';
import type { GetClicksForBitlinkRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlinksApi(config);

  const body = {
    // string | A Bitlink made of the domain and hash
    bitlink: bit.ly/12a4b6c,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetClicksForBitlinkRequest;

  try {
    const data = await api.getClicksForBitlink(body);
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
| **bitlink** | `string` | A Bitlink made of the domain and hash | [Defaults to `undefined`] |
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**Clicks**](Clicks.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `text/csv`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SUCCESS |  -  |
| **403** | FORBIDDEN |  -  |
| **404** | NOT_FOUND |  -  |
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getClicksSummaryForBitlink

> ClicksSummary getClicksSummaryForBitlink(bitlink, unit, units, unit_reference)

Get a Clicks Summary for a Bitlink

Returns the click counts for the specified link rolled up into a single field.

### Example

```ts
import {
  Configuration,
  BitlinksApi,
} from '';
import type { GetClicksSummaryForBitlinkRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlinksApi(config);

  const body = {
    // string | A Bitlink made of the domain and hash
    bitlink: bit.ly/12a4b6c,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetClicksSummaryForBitlinkRequest;

  try {
    const data = await api.getClicksSummaryForBitlink(body);
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
| **bitlink** | `string` | A Bitlink made of the domain and hash | [Defaults to `undefined`] |
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**ClicksSummary**](ClicksSummary.md)

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
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getEngagements

> TotalEngagements getEngagements(bitlink, unit, units, unit_reference)

Get Engagement Counts for a Bitlink

Returns an array of engagement counts for the specified link. The array is comprised of button click, click and scan counts for each time window, where the window is based on the provided unit.

### Example

```ts
import {
  Configuration,
  BitlinksApi,
} from '';
import type { GetEngagementsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlinksApi(config);

  const body = {
    // string | A Bitlink made of the domain and hash
    bitlink: bit.ly/12a4b6c,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetEngagementsRequest;

  try {
    const data = await api.getEngagements(body);
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
| **bitlink** | `string` | A Bitlink made of the domain and hash | [Defaults to `undefined`] |
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**TotalEngagements**](TotalEngagements.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `text/csv`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SUCCESS |  -  |
| **400** | BAD_REQUEST |  -  |
| **403** | FORBIDDEN |  -  |
| **404** | NOT_FOUND |  -  |
| **410** | GONE |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getEngagementsSummary

> TotalEngagementsSummary getEngagementsSummary(bitlink, unit, units, unit_reference)

Get an Engagement Count Summary for a Bitlink

Returns the engagement counts for the specified link rolled up into a single field.

### Example

```ts
import {
  Configuration,
  BitlinksApi,
} from '';
import type { GetEngagementsSummaryRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlinksApi(config);

  const body = {
    // string | A Bitlink made of the domain and hash
    bitlink: bit.ly/12a4b6c,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetEngagementsSummaryRequest;

  try {
    const data = await api.getEngagementsSummary(body);
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
| **bitlink** | `string` | A Bitlink made of the domain and hash | [Defaults to `undefined`] |
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**TotalEngagementsSummary**](TotalEngagementsSummary.md)

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
| **410** | GONE |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getMetricsForBitlinkByCities

> CityMetrics getMetricsForBitlinkByCities(bitlink, unit, units, size, unit_reference)

Get Metrics for a Bitlink by City

Returns the city origins of click traffic for the specified link.

### Example

```ts
import {
  Configuration,
  BitlinksApi,
} from '';
import type { GetMetricsForBitlinkByCitiesRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlinksApi(config);

  const body = {
    // string | A Bitlink made of the domain and hash
    bitlink: bit.ly/12a4b6c,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetMetricsForBitlinkByCitiesRequest;

  try {
    const data = await api.getMetricsForBitlinkByCities(body);
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
| **bitlink** | `string` | A Bitlink made of the domain and hash | [Defaults to `undefined`] |
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **size** | `number` | The quantity of items to be be returned | [Optional] [Defaults to `50`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**CityMetrics**](CityMetrics.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `text/csv`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SUCCESS |  -  |
| **400** | BAD_REQUEST |  -  |
| **402** | UPGRADE_REQUIRED |  -  |
| **403** | FORBIDDEN |  -  |
| **404** | NOT_FOUND |  -  |
| **410** | GONE |  -  |
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getMetricsForBitlinkByCountries

> ClickMetrics getMetricsForBitlinkByCountries(bitlink, unit, units, size, unit_reference)

Get Metrics for a Bitlink by Country

Returns the country origins of click traffic for the specified link.

### Example

```ts
import {
  Configuration,
  BitlinksApi,
} from '';
import type { GetMetricsForBitlinkByCountriesRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlinksApi(config);

  const body = {
    // string | A Bitlink made of the domain and hash
    bitlink: bit.ly/12a4b6c,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetMetricsForBitlinkByCountriesRequest;

  try {
    const data = await api.getMetricsForBitlinkByCountries(body);
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
| **bitlink** | `string` | A Bitlink made of the domain and hash | [Defaults to `undefined`] |
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **size** | `number` | The quantity of items to be be returned | [Optional] [Defaults to `50`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**ClickMetrics**](ClickMetrics.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `text/csv`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SUCCESS |  -  |
| **400** | BAD_REQUEST |  -  |
| **403** | FORBIDDEN |  -  |
| **404** | NOT_FOUND |  -  |
| **410** | GONE |  -  |
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getMetricsForBitlinkByDevices

> DeviceMetrics getMetricsForBitlinkByDevices(bitlink, unit, units, size, unit_reference)

Get Metrics for a Bitlink by Device Type

Returns the device types generating click traffic to the specified link.

### Example

```ts
import {
  Configuration,
  BitlinksApi,
} from '';
import type { GetMetricsForBitlinkByDevicesRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlinksApi(config);

  const body = {
    // string | A Bitlink made of the domain and hash
    bitlink: bit.ly/12a4b6c,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetMetricsForBitlinkByDevicesRequest;

  try {
    const data = await api.getMetricsForBitlinkByDevices(body);
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
| **bitlink** | `string` | A Bitlink made of the domain and hash | [Defaults to `undefined`] |
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **size** | `number` | The quantity of items to be be returned | [Optional] [Defaults to `50`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**DeviceMetrics**](DeviceMetrics.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `text/csv`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SUCCESS |  -  |
| **400** | BAD_REQUEST |  -  |
| **402** | UPGRADE_REQUIRED |  -  |
| **403** | FORBIDDEN |  -  |
| **404** | NOT_FOUND |  -  |
| **410** | GONE |  -  |
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getMetricsForBitlinkByReferrerName

> ClickMetrics getMetricsForBitlinkByReferrerName(bitlink, unit, units, size, unit_reference)

Get Metrics for a Bitlink by Referrer Name

Returns referrer click counts for the specified link.

### Example

```ts
import {
  Configuration,
  BitlinksApi,
} from '';
import type { GetMetricsForBitlinkByReferrerNameRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlinksApi(config);

  const body = {
    // string | A Bitlink made of the domain and hash
    bitlink: bit.ly/12a4b6c,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetMetricsForBitlinkByReferrerNameRequest;

  try {
    const data = await api.getMetricsForBitlinkByReferrerName(body);
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
| **bitlink** | `string` | A Bitlink made of the domain and hash | [Defaults to `undefined`] |
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **size** | `number` | The quantity of items to be be returned | [Optional] [Defaults to `50`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**ClickMetrics**](ClickMetrics.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `text/csv`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SUCCESS |  -  |
| **400** | BAD_REQUEST |  -  |
| **403** | FORBIDDEN |  -  |
| **404** | NOT_FOUND |  -  |
| **410** | GONE |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getMetricsForBitlinkByReferrers

> ClickMetrics getMetricsForBitlinkByReferrers(bitlink, unit, units, size, unit_reference)

Get Metrics for a Bitlink by Referrers

Returns referrer click counts for the specified link.

### Example

```ts
import {
  Configuration,
  BitlinksApi,
} from '';
import type { GetMetricsForBitlinkByReferrersRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlinksApi(config);

  const body = {
    // string | A Bitlink made of the domain and hash
    bitlink: bit.ly/12a4b6c,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetMetricsForBitlinkByReferrersRequest;

  try {
    const data = await api.getMetricsForBitlinkByReferrers(body);
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
| **bitlink** | `string` | A Bitlink made of the domain and hash | [Defaults to `undefined`] |
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **size** | `number` | The quantity of items to be be returned | [Optional] [Defaults to `50`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**ClickMetrics**](ClickMetrics.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `text/csv`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SUCCESS |  -  |
| **400** | BAD_REQUEST |  -  |
| **403** | FORBIDDEN |  -  |
| **404** | NOT_FOUND |  -  |
| **410** | GONE |  -  |
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getMetricsForBitlinkByReferrersByDomains

> ReferrersByDomains getMetricsForBitlinkByReferrersByDomains(bitlink, unit, units, size, unit_reference)

Get Metrics for a Bitlink by Referrers by Domain

Returns click metrics grouped by referrers for the specified link.

### Example

```ts
import {
  Configuration,
  BitlinksApi,
} from '';
import type { GetMetricsForBitlinkByReferrersByDomainsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlinksApi(config);

  const body = {
    // string | A Bitlink made of the domain and hash
    bitlink: bit.ly/12a4b6c,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetMetricsForBitlinkByReferrersByDomainsRequest;

  try {
    const data = await api.getMetricsForBitlinkByReferrersByDomains(body);
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
| **bitlink** | `string` | A Bitlink made of the domain and hash | [Defaults to `undefined`] |
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **size** | `number` | The quantity of items to be be returned | [Optional] [Defaults to `50`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**ReferrersByDomains**](ReferrersByDomains.md)

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
| **410** | GONE |  -  |
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getMetricsForBitlinkByReferringDomains

> ClickMetrics getMetricsForBitlinkByReferringDomains(bitlink, unit, units, size, unit_reference)

Get Metrics for a Bitlink by Referring Domains

Returns the referring domain click counts for the specified link.

### Example

```ts
import {
  Configuration,
  BitlinksApi,
} from '';
import type { GetMetricsForBitlinkByReferringDomainsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlinksApi(config);

  const body = {
    // string | A Bitlink made of the domain and hash
    bitlink: bit.ly/12a4b6c,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetMetricsForBitlinkByReferringDomainsRequest;

  try {
    const data = await api.getMetricsForBitlinkByReferringDomains(body);
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
| **bitlink** | `string` | A Bitlink made of the domain and hash | [Defaults to `undefined`] |
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **size** | `number` | The quantity of items to be be returned | [Optional] [Defaults to `50`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**ClickMetrics**](ClickMetrics.md)

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
| **410** | GONE |  -  |
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getSortedBitlinks

> SortedLinks getSortedBitlinks(group_guid, sort, unit, units, unit_reference, size)

Retrieve Sorted Bitlinks for Group

Returns a list of Bitlinks sorted by group. The list of custom bitlinks has newest entries first.

### Example

```ts
import {
  Configuration,
  BitlinksApi,
} from '';
import type { GetSortedBitlinksRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlinksApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // 'clicks' | The type of sorting that you would like to do
    sort: clicks,
    // TimeUnit | A unit of time (optional)
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time. (optional)
    units: 1,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
    // number | The quantity of items to be be returned (optional)
    size: 10,
  } satisfies GetSortedBitlinksRequest;

  try {
    const data = await api.getSortedBitlinks(body);
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
| **group_guid** | `string` | A GUID for a Bitly group | [Defaults to `undefined`] |
| **sort** | `clicks` | The type of sorting that you would like to do | [Defaults to `undefined`] [Enum: clicks] |
| **unit** | `TimeUnit` | A unit of time | [Optional] [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time. | [Optional] [Defaults to `-1`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |
| **size** | `number` | The quantity of items to be be returned | [Optional] [Defaults to `50`] |

### Return type

[**SortedLinks**](SortedLinks.md)

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
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getTopLinksAndQRCodesByEngagements

> TopLinksAndQRCodes getTopLinksAndQRCodesByEngagements(group_guid, unit, units, unit_reference, size)

Retrieve Top Links and Decoupled QR Codes by Engagements

Returns the bitlinks and decoupled QR codes in a group with the most engagements over the requested time window, ranked together in descending order by engagement count. Bitlinks and decoupled QR codes are returned in separate lists; &#x60;sorted_links&#x60; preserves the unified descending-by-count ordering across both, with each entry\&#39;s id referencing either a bitlink or a QR code guid. 

### Example

```ts
import {
  Configuration,
  BitlinksApi,
} from '';
import type { GetTopLinksAndQRCodesByEngagementsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlinksApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // TimeUnit | A unit of time (optional)
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time. (optional)
    units: 1,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
    // number | The quantity of items to be be returned (optional)
    size: 10,
  } satisfies GetTopLinksAndQRCodesByEngagementsRequest;

  try {
    const data = await api.getTopLinksAndQRCodesByEngagements(body);
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
| **group_guid** | `string` | A GUID for a Bitly group | [Defaults to `undefined`] |
| **unit** | `TimeUnit` | A unit of time | [Optional] [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time. | [Optional] [Defaults to `-1`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |
| **size** | `number` | The quantity of items to be be returned | [Optional] [Defaults to `50`] |

### Return type

[**TopLinksAndQRCodes**](TopLinksAndQRCodes.md)

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
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## updateBitlink

> BitlinkBody updateBitlink(bitlink, bitlink_update_body)

Update a Bitlink

Updates fields in the specified link. To redirect the link (i.e. to update the Long URL), use the long_url parameter. This will always charge an encode limit.

### Example

```ts
import {
  Configuration,
  BitlinksApi,
} from '';
import type { UpdateBitlinkRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlinksApi(config);

  const body = {
    // string | A Bitlink made of the domain and hash
    bitlink: bit.ly/12a4b6c,
    // BitlinkUpdateBody
    bitlink_update_body: {"long_url":"https://www.newdestination.com"},
  } satisfies UpdateBitlinkRequest;

  try {
    const data = await api.updateBitlink(body);
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
| **bitlink** | `string` | A Bitlink made of the domain and hash | [Defaults to `undefined`] |
| **bitlink_update_body** | [BitlinkUpdateBody](BitlinkUpdateBody.md) |  | |

### Return type

[**BitlinkBody**](BitlinkBody.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SUCCESS |  -  |
| **400** | BAD_REQUEST |  -  |
| **402** | UPGRADE_REQUIRED |  -  |
| **403** | FORBIDDEN |  -  |
| **404** | NOT_FOUND |  -  |
| **409** | CONFLICT |  -  |
| **410** | GONE |  -  |
| **422** | UNPROCESSABLE_ENTITY |  -  |
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## updateBitlinksByGroup

> BulkUpdate updateBitlinksByGroup(group_guid, bulk_update_request)

Bulk update bitlinks

Bulk update can add or remove tags or archive up to 100 links at a time; The response includes a list of bitlink ids that were updated.

### Example

```ts
import {
  Configuration,
  BitlinksApi,
} from '';
import type { UpdateBitlinksByGroupRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlinksApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // BulkUpdateRequest
    bulk_update_request: ...,
  } satisfies UpdateBitlinksByGroupRequest;

  try {
    const data = await api.updateBitlinksByGroup(body);
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
| **group_guid** | `string` | A GUID for a Bitly group | [Defaults to `undefined`] |
| **bulk_update_request** | [BulkUpdateRequest](BulkUpdateRequest.md) |  | |

### Return type

[**BulkUpdate**](BulkUpdate.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SUCCESS |  -  |
| **400** | BAD_REQUEST |  -  |
| **403** | FORBIDDEN |  -  |
| **404** | NOT_FOUND |  -  |
| **422** | UNPROCESSABLE_ENTITY |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

