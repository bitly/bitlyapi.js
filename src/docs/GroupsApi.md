# GroupsApi

All URIs are relative to *https://api-ssl.bitly.com/v4*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getGroup**](GroupsApi.md#getgroup) | **GET** /groups/{group_guid} | Retrieve a Group |
| [**getGroupClicks**](GroupsApi.md#getgroupclicks) | **GET** /groups/{group_guid}/clicks | Get clicks by group |
| [**getGroupCodeScansByCity**](GroupsApi.md#getgroupcodescansbycity) | **GET** /groups/{group_guid}/codes/scans/cities | Get Scan Metrics for a Group by City |
| [**getGroupCodeScansByCountry**](GroupsApi.md#getgroupcodescansbycountry) | **GET** /groups/{group_guid}/codes/scans/countries | Get Scan Metrics for a Group by Country |
| [**getGroupCodeScansOverTime**](GroupsApi.md#getgroupcodescansovertime) | **GET** /groups/{group_guid}/codes/scans/over_time | Get Scan Metrics for a Group Over Time |
| [**getGroupFeatureUsage**](GroupsApi.md#getgroupfeatureusage) | **GET** /groups/{group_guid}/feature_usage | Get limit usage for a group |
| [**getGroupHistoricalUsage**](GroupsApi.md#getgrouphistoricalusage) | **GET** /groups/{group_guid}/historical_usage | Get historical usage for a group |
| [**getGroupLinkClicksByCity**](GroupsApi.md#getgrouplinkclicksbycity) | **GET** /groups/{group_guid}/links/clicks/cities | Get Group Link Clicks by City |
| [**getGroupLinkClicksByCountry**](GroupsApi.md#getgrouplinkclicksbycountry) | **GET** /groups/{group_guid}/links/clicks/countries | Get Group Link Clicks by Country |
| [**getGroupLinkClicksByDevice**](GroupsApi.md#getgrouplinkclicksbydevice) | **GET** /groups/{group_guid}/links/clicks/devices | Get Group Link Clicks by Device |
| [**getGroupLinkClicksByReferrer**](GroupsApi.md#getgrouplinkclicksbyreferrer) | **GET** /groups/{group_guid}/links/clicks/referrers | Get Group Link Clicks by Referrer |
| [**getGroupLinkClicksOverTime**](GroupsApi.md#getgrouplinkclicksovertime) | **GET** /groups/{group_guid}/links/clicks/over_time | Get Group Link Clicks Over Time |
| [**getGroupMetricsByCities**](GroupsApi.md#getgroupmetricsbycities) | **GET** /groups/{group_guid}/cities | Get Click Metrics for a Group by City |
| [**getGroupMetricsByCountries**](GroupsApi.md#getgroupmetricsbycountries) | **GET** /groups/{group_guid}/countries | Get Click Metrics for a Group by Country |
| [**getGroupMetricsByDevices**](GroupsApi.md#getgroupmetricsbydevices) | **GET** /groups/{group_guid}/devices | Get Click Metrics for a Group by Device Type |
| [**getGroupMetricsByReferrer**](GroupsApi.md#getgroupmetricsbyreferrer) | **GET** /groups/{group_guid}/referrers | Get Click Metrics for a Group by Referrer |
| [**getGroupMetricsByReferringNetworks**](GroupsApi.md#getgroupmetricsbyreferringnetworks) | **GET** /groups/{group_guid}/referring_networks | Get Click Metrics for a Group by Referring Networks |
| [**getGroupMetricsOverTime**](GroupsApi.md#getgroupmetricsovertime) | **GET** /groups/{group_guid}/engagements/over_time | Get Group Metrics Over Time |
| [**getGroupPreferences**](GroupsApi.md#getgrouppreferences) | **GET** /groups/{group_guid}/preferences | Retrieve Group Preferences |
| [**getGroupShortenCounts**](GroupsApi.md#getgroupshortencounts) | **GET** /groups/{group_guid}/shorten_counts | Retrieve Group Shorten Counts |
| [**getGroupTags**](GroupsApi.md#getgrouptags) | **GET** /groups/{group_guid}/tags | Retrieve Tags by Group |
| [**getGroupTopCodeScans**](GroupsApi.md#getgrouptopcodescans) | **GET** /groups/{group_guid}/codes/scans/top | Get Top Performing QR Codes for a Group |
| [**getGroupTopLinkClicks**](GroupsApi.md#getgrouptoplinkclicks) | **GET** /groups/{group_guid}/links/clicks/top | Get Group Top Performing Links by Click |
| [**getGroupTopMetrics**](GroupsApi.md#getgrouptopmetrics) | **GET** /groups/{group_guid}/engagements/top | Get Group Top Performing Links by Engagement |
| [**getGroups**](GroupsApi.md#getgroups) | **GET** /groups | Retrieve Groups |
| [**postCreateGroupExport**](GroupsApi.md#postcreategroupexport) | **POST** /groups/{group_guid}/exports | Create an inline CSV export for a group |
| [**updateGroup**](GroupsApi.md#updategroup) | **PATCH** /groups/{group_guid} | Update a Group |
| [**updateGroupPreferences**](GroupsApi.md#updategrouppreferences) | **PATCH** /groups/{group_guid}/preferences | Update Group Preferences |



## getGroup

> Group getGroup(group_guid)

Retrieve a Group

Returns details for a group.

### Example

```ts
import {
  Configuration,
  GroupsApi,
} from '';
import type { GetGroupRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new GroupsApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
  } satisfies GetGroupRequest;

  try {
    const data = await api.getGroup(body);
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

### Return type

[**Group**](Group.md)

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


## getGroupClicks

> GroupClicks getGroupClicks(group_guid, unit, units, unit_reference)

Get clicks by group

get number of clicks on bitlinks in a group

### Example

```ts
import {
  Configuration,
  GroupsApi,
} from '';
import type { GetGroupClicksRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new GroupsApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetGroupClicksRequest;

  try {
    const data = await api.getGroupClicks(body);
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
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**GroupClicks**](GroupClicks.md)

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
| **402** | UPGRADE_REQUIRED |  -  |
| **403** | FORBIDDEN |  -  |
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getGroupCodeScansByCity

> CityMetrics getGroupCodeScansByCity(group_guid, unit, units, unit_reference)

Get Scan Metrics for a Group by City

Get QR code scan metrics for a group broken down by city.

### Example

```ts
import {
  Configuration,
  GroupsApi,
} from '';
import type { GetGroupCodeScansByCityRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new GroupsApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetGroupCodeScansByCityRequest;

  try {
    const data = await api.getGroupCodeScansByCity(body);
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
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**CityMetrics**](CityMetrics.md)

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
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getGroupCodeScansByCountry

> ClickMetrics getGroupCodeScansByCountry(group_guid, unit, units, unit_reference)

Get Scan Metrics for a Group by Country

Get QR code scan metrics for a group broken down by country.

### Example

```ts
import {
  Configuration,
  GroupsApi,
} from '';
import type { GetGroupCodeScansByCountryRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new GroupsApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetGroupCodeScansByCountryRequest;

  try {
    const data = await api.getGroupCodeScansByCountry(body);
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
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
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
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getGroupCodeScansOverTime

> GroupClicks getGroupCodeScansOverTime(group_guid, unit, units, unit_reference)

Get Scan Metrics for a Group Over Time

Get QR code scan metrics over time for a group.

### Example

```ts
import {
  Configuration,
  GroupsApi,
} from '';
import type { GetGroupCodeScansOverTimeRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new GroupsApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetGroupCodeScansOverTimeRequest;

  try {
    const data = await api.getGroupCodeScansOverTime(body);
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
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**GroupClicks**](GroupClicks.md)

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
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getGroupFeatureUsage

> GroupFeatureUsage getGroupFeatureUsage(group_guid, name)

Get limit usage for a group

Get a group\&#39;s current feature limit usage, optionally provide limit name(s) for usage on specific limit(s)

### Example

```ts
import {
  Configuration,
  GroupsApi,
} from '';
import type { GetGroupFeatureUsageRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new GroupsApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // Array<string> | The limit name you would like usage for (optional)
    name: ["qr_codes"],
  } satisfies GetGroupFeatureUsageRequest;

  try {
    const data = await api.getGroupFeatureUsage(body);
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
| **name** | `Array<string>` | The limit name you would like usage for | [Optional] |

### Return type

[**GroupFeatureUsage**](GroupFeatureUsage.md)

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
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getGroupHistoricalUsage

> GroupHistoricalUsage getGroupHistoricalUsage(group_guid, name, start_date, end_date, unit)

Get historical usage for a group

Get a group\&#39;s historical usage for specific limit(s) and date range. Refer to GET /v4/groups/{group_guid}/feature_usage endpoint response for available limit names.

### Example

```ts
import {
  Configuration,
  GroupsApi,
} from '';
import type { GetGroupHistoricalUsageRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new GroupsApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // Array<string> | The limit name you would like usage for (optional)
    name: ["qr_codes"],
    // string | The start date for the date range (optional)
    start_date: 2022-02-02,
    // string | The end date for the date range (optional)
    end_date: 2023-10-04,
    // TimeUnitDWM | A unit of time (day, week, or month) (optional)
    unit: month,
  } satisfies GetGroupHistoricalUsageRequest;

  try {
    const data = await api.getGroupHistoricalUsage(body);
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
| **name** | `Array<string>` | The limit name you would like usage for | [Optional] |
| **start_date** | `string` | The start date for the date range | [Optional] [Defaults to `undefined`] |
| **end_date** | `string` | The end date for the date range | [Optional] [Defaults to `undefined`] |
| **unit** | `TimeUnitDWM` | A unit of time (day, week, or month) | [Optional] [Defaults to `undefined`] [Enum: day, week, month] |

### Return type

[**GroupHistoricalUsage**](GroupHistoricalUsage.md)

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
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getGroupLinkClicksByCity

> CityMetrics getGroupLinkClicksByCity(group_guid, unit, units, size, unit_reference)

Get Group Link Clicks by City

Get link clicks by city for all links in a group.

### Example

```ts
import {
  Configuration,
  GroupsApi,
} from '';
import type { GetGroupLinkClicksByCityRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new GroupsApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetGroupLinkClicksByCityRequest;

  try {
    const data = await api.getGroupLinkClicksByCity(body);
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
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SUCCESS |  -  |
| **400** | BAD_REQUEST |  -  |
| **403** | FORBIDDEN |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getGroupLinkClicksByCountry

> ClickMetrics getGroupLinkClicksByCountry(group_guid, unit, units, size, unit_reference)

Get Group Link Clicks by Country

Get link clicks by country for all links in a group.

### Example

```ts
import {
  Configuration,
  GroupsApi,
} from '';
import type { GetGroupLinkClicksByCountryRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new GroupsApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetGroupLinkClicksByCountryRequest;

  try {
    const data = await api.getGroupLinkClicksByCountry(body);
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
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getGroupLinkClicksByDevice

> GetGroupLinkClicksByDevice200Response getGroupLinkClicksByDevice(group_guid, unit, units, size, unit_reference)

Get Group Link Clicks by Device

Get link clicks by device for all links in a group.

### Example

```ts
import {
  Configuration,
  GroupsApi,
} from '';
import type { GetGroupLinkClicksByDeviceRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new GroupsApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetGroupLinkClicksByDeviceRequest;

  try {
    const data = await api.getGroupLinkClicksByDevice(body);
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
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **size** | `number` | The quantity of items to be be returned | [Optional] [Defaults to `50`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**GetGroupLinkClicksByDevice200Response**](GetGroupLinkClicksByDevice200Response.md)

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
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getGroupLinkClicksByReferrer

> ClickMetrics getGroupLinkClicksByReferrer(group_guid, unit, units, size, unit_reference)

Get Group Link Clicks by Referrer

Get link clicks by referrer for all links in a group.

### Example

```ts
import {
  Configuration,
  GroupsApi,
} from '';
import type { GetGroupLinkClicksByReferrerRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new GroupsApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetGroupLinkClicksByReferrerRequest;

  try {
    const data = await api.getGroupLinkClicksByReferrer(body);
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
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getGroupLinkClicksOverTime

> GroupClicks getGroupLinkClicksOverTime(group_guid, unit, units, unit_reference)

Get Group Link Clicks Over Time

Get link clicks over time for all links in a group.

### Example

```ts
import {
  Configuration,
  GroupsApi,
} from '';
import type { GetGroupLinkClicksOverTimeRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new GroupsApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetGroupLinkClicksOverTimeRequest;

  try {
    const data = await api.getGroupLinkClicksOverTime(body);
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
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**GroupClicks**](GroupClicks.md)

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
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getGroupMetricsByCities

> CityMetrics getGroupMetricsByCities(group_guid, unit, units, size, unit_reference)

Get Click Metrics for a Group by City

Returns the geographic origins of click traffic by city for the specified group.

### Example

```ts
import {
  Configuration,
  GroupsApi,
} from '';
import type { GetGroupMetricsByCitiesRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new GroupsApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetGroupMetricsByCitiesRequest;

  try {
    const data = await api.getGroupMetricsByCities(body);
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
| **402** | UPGRADE_REQUIRED |  -  |
| **403** | FORBIDDEN |  -  |
| **404** | NOT_FOUND |  -  |
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getGroupMetricsByCountries

> ClickMetrics getGroupMetricsByCountries(group_guid, unit, units, size, unit_reference)

Get Click Metrics for a Group by Country

Returns the geographic origins of click traffic by country for the specified group.

### Example

```ts
import {
  Configuration,
  GroupsApi,
} from '';
import type { GetGroupMetricsByCountriesRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new GroupsApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetGroupMetricsByCountriesRequest;

  try {
    const data = await api.getGroupMetricsByCountries(body);
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
| **403** | FORBIDDEN |  -  |
| **404** | NOT_FOUND |  -  |
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getGroupMetricsByDevices

> DeviceMetrics getGroupMetricsByDevices(group_guid, unit, units, size, unit_reference)

Get Click Metrics for a Group by Device Type

Returns the device types generating click traffic to the specified group\&#39;s links.

### Example

```ts
import {
  Configuration,
  GroupsApi,
} from '';
import type { GetGroupMetricsByDevicesRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new GroupsApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetGroupMetricsByDevicesRequest;

  try {
    const data = await api.getGroupMetricsByDevices(body);
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
| **402** | UPGRADE_REQUIRED |  -  |
| **403** | FORBIDDEN |  -  |
| **404** | NOT_FOUND |  -  |
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getGroupMetricsByReferrer

> ClickMetrics getGroupMetricsByReferrer(group_guid, unit, units, size, unit_reference)

Get Click Metrics for a Group by Referrer

Returns metrics by referrer for the specified group\&#39;s links.

### Example

```ts
import {
  Configuration,
  GroupsApi,
} from '';
import type { GetGroupMetricsByReferrerRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new GroupsApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetGroupMetricsByReferrerRequest;

  try {
    const data = await api.getGroupMetricsByReferrer(body);
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
| **403** | FORBIDDEN |  -  |
| **404** | NOT_FOUND |  -  |
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getGroupMetricsByReferringNetworks

> ClickMetrics getGroupMetricsByReferringNetworks(group_guid, unit, units, size, unit_reference)

Get Click Metrics for a Group by Referring Networks

Returns metrics by referring networks for the specified group\&#39;s links.

### Example

```ts
import {
  Configuration,
  GroupsApi,
} from '';
import type { GetGroupMetricsByReferringNetworksRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new GroupsApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetGroupMetricsByReferringNetworksRequest;

  try {
    const data = await api.getGroupMetricsByReferringNetworks(body);
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
| **403** | FORBIDDEN |  -  |
| **404** | NOT_FOUND |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getGroupMetricsOverTime

> GroupClicks getGroupMetricsOverTime(group_guid, unit, units, unit_reference)

Get Group Metrics Over Time

Get group engagement metrics over time for all links in a group.

### Example

```ts
import {
  Configuration,
  GroupsApi,
} from '';
import type { GetGroupMetricsOverTimeRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new GroupsApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetGroupMetricsOverTimeRequest;

  try {
    const data = await api.getGroupMetricsOverTime(body);
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
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**GroupClicks**](GroupClicks.md)

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
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getGroupPreferences

> GroupPreferences getGroupPreferences(group_guid)

Retrieve Group Preferences

Returns preferences for the specified group.

### Example

```ts
import {
  Configuration,
  GroupsApi,
} from '';
import type { GetGroupPreferencesRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new GroupsApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
  } satisfies GetGroupPreferencesRequest;

  try {
    const data = await api.getGroupPreferences(body);
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

### Return type

[**GroupPreferences**](GroupPreferences.md)

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


## getGroupShortenCounts

> Metrics getGroupShortenCounts(group_guid, unit, units, unit_reference)

Retrieve Group Shorten Counts

Returns all the shorten counts for a group.

### Example

```ts
import {
  Configuration,
  GroupsApi,
} from '';
import type { GetGroupShortenCountsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new GroupsApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetGroupShortenCountsRequest;

  try {
    const data = await api.getGroupShortenCounts(body);
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
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getGroupTags

> Tags getGroupTags(group_guid, type)

Retrieve Tags by Group

Returns the tags currently used in the specified group. Maximum 1000.

### Example

```ts
import {
  Configuration,
  GroupsApi,
} from '';
import type { GetGroupTagsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new GroupsApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // 'bitlink' | 'qr_code' | Tag set to return; defaults to bitlink (optional)
    type: type_example,
  } satisfies GetGroupTagsRequest;

  try {
    const data = await api.getGroupTags(body);
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
| **type** | `bitlink`, `qr_code` | Tag set to return; defaults to bitlink | [Optional] [Defaults to `&#39;bitlink&#39;`] [Enum: bitlink, qr_code] |

### Return type

[**Tags**](Tags.md)

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


## getGroupTopCodeScans

> GetGroupTopCodeScans200Response getGroupTopCodeScans(group_guid, unit, units, unit_reference, decoupled)

Get Top Performing QR Codes for a Group

Get top performing QR codes by scan count for all codes in a group.

### Example

```ts
import {
  Configuration,
  GroupsApi,
} from '';
import type { GetGroupTopCodeScansRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new GroupsApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
    // boolean | When true, ranks results by decoupled QR scan count and returns a TopLinksAndQRCodes response with links and QR codes partitioned into separate lists and a unified sorted_engagements ordering.  (optional)
    decoupled: true,
  } satisfies GetGroupTopCodeScansRequest;

  try {
    const data = await api.getGroupTopCodeScans(body);
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
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |
| **decoupled** | `boolean` | When true, ranks results by decoupled QR scan count and returns a TopLinksAndQRCodes response with links and QR codes partitioned into separate lists and a unified sorted_engagements ordering.  | [Optional] [Defaults to `undefined`] |

### Return type

[**GetGroupTopCodeScans200Response**](GetGroupTopCodeScans200Response.md)

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
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getGroupTopLinkClicks

> SortedLinks getGroupTopLinkClicks(group_guid, unit, units, size, unit_reference)

Get Group Top Performing Links by Click

Get top performing links by click for all links in a group.

### Example

```ts
import {
  Configuration,
  GroupsApi,
} from '';
import type { GetGroupTopLinkClicksRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new GroupsApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetGroupTopLinkClicksRequest;

  try {
    const data = await api.getGroupTopLinkClicks(body);
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
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **size** | `number` | The quantity of items to be be returned | [Optional] [Defaults to `50`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

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
| **400** | BAD_REQUEST |  -  |
| **403** | FORBIDDEN |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getGroupTopMetrics

> SortedLinks getGroupTopMetrics(group_guid, unit, units, size, unit_reference)

Get Group Top Performing Links by Engagement

Get top performing links by engagement for all links in a group.

### Example

```ts
import {
  Configuration,
  GroupsApi,
} from '';
import type { GetGroupTopMetricsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new GroupsApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetGroupTopMetricsRequest;

  try {
    const data = await api.getGroupTopMetrics(body);
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
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **size** | `number` | The quantity of items to be be returned | [Optional] [Defaults to `50`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

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
| **400** | BAD_REQUEST |  -  |
| **403** | FORBIDDEN |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getGroups

> Groups getGroups(organization_guid)

Retrieve Groups

Returns a list of groups in the organization.

### Example

```ts
import {
  Configuration,
  GroupsApi,
} from '';
import type { GetGroupsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new GroupsApi(config);

  const body = {
    // string | A GUID for a Bitly organization (optional)
    organization_guid: Oa1bcd234eF,
  } satisfies GetGroupsRequest;

  try {
    const data = await api.getGroups(body);
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

[**Groups**](Groups.md)

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
| **422** | UNPROCESSABLE_ENTITY |  -  |
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## postCreateGroupExport

> GroupExportResponse postCreateGroupExport(group_guid, group_export_request_body)

Create an inline CSV export for a group

Build a CSV export synchronously and return it inline as a base64 data URI plus metadata. The export_type field selects the CSV shape: link_engagements_batch (engagement metrics for explicit bitlinks or a filter), links_list (link metadata roster), or qr_codes_list (QR code metadata roster). Row caps apply per request: 200 rows when metrics are included (link_engagements_batch, or include_metrics on a list export); 1000 rows for metadata-only list exports. When the match set exceeds the cap, truncated is true and only the first cap rows are returned; row_count reports how many data rows are in the CSV. 

### Example

```ts
import {
  Configuration,
  GroupsApi,
} from '';
import type { PostCreateGroupExportRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new GroupsApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // GroupExportRequestBody
    group_export_request_body: ...,
  } satisfies PostCreateGroupExportRequest;

  try {
    const data = await api.postCreateGroupExport(body);
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
| **group_export_request_body** | [GroupExportRequestBody](GroupExportRequestBody.md) |  | |

### Return type

[**GroupExportResponse**](GroupExportResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |
| **400** | BAD_REQUEST |  -  |
| **402** | UPGRADE_REQUIRED |  -  |
| **403** | FORBIDDEN |  -  |
| **422** | UNPROCESSABLE_ENTITY |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## updateGroup

> Group updateGroup(group_guid, group_update)

Update a Group

Updates the details of a group.

### Example

```ts
import {
  Configuration,
  GroupsApi,
} from '';
import type { UpdateGroupRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new GroupsApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // GroupUpdate
    group_update: ...,
  } satisfies UpdateGroupRequest;

  try {
    const data = await api.updateGroup(body);
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
| **group_update** | [GroupUpdate](GroupUpdate.md) |  | |

### Return type

[**Group**](Group.md)

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


## updateGroupPreferences

> GroupPreferences updateGroupPreferences(group_guid, group_preferences)

Update Group Preferences

Updates preferences for a group.

### Example

```ts
import {
  Configuration,
  GroupsApi,
} from '';
import type { UpdateGroupPreferencesRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new GroupsApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // GroupPreferences
    group_preferences: ...,
  } satisfies UpdateGroupPreferencesRequest;

  try {
    const data = await api.updateGroupPreferences(body);
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
| **group_preferences** | [GroupPreferences](GroupPreferences.md) |  | |

### Return type

[**GroupPreferences**](GroupPreferences.md)

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
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

