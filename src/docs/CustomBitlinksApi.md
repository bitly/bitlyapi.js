# CustomBitlinksApi

All URIs are relative to *https://api-ssl.bitly.com/v4*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**addCustomBitlink**](CustomBitlinksApi.md#addcustombitlink) | **POST** /custom_bitlinks | Add Custom Bitlink |
| [**getClicksForCustomBitlink**](CustomBitlinksApi.md#getclicksforcustombitlink) | **GET** /custom_bitlinks/{custom_bitlink}/clicks | Get Clicks for a Custom Bitlink\&#39;s Entire History |
| [**getCustomBitlink**](CustomBitlinksApi.md#getcustombitlink) | **GET** /custom_bitlinks/{custom_bitlink} | Retrieve Custom Bitlink |
| [**getCustomBitlinkMetricsByDestination**](CustomBitlinksApi.md#getcustombitlinkmetricsbydestination) | **GET** /custom_bitlinks/{custom_bitlink}/clicks_by_destination | Get Metrics for a Custom Bitlink by Destination |
| [**updateCustomBitlink**](CustomBitlinksApi.md#updatecustombitlink) | **PATCH** /custom_bitlinks/{custom_bitlink} | Update Custom Bitlink |



## addCustomBitlink

> CustomBitlink addCustomBitlink(add_custom_bitlink)

Add Custom Bitlink

Add a keyword (or \&quot;custom back-half\&quot;) to a Bitlink with a Custom Domain (domains must match). This endpoint can also be used for initial redirects to a link.

### Example

```ts
import {
  Configuration,
  CustomBitlinksApi,
} from '';
import type { AddCustomBitlinkRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new CustomBitlinksApi(config);

  const body = {
    // AddCustomBitlink
    add_custom_bitlink: ...,
  } satisfies AddCustomBitlinkRequest;

  try {
    const data = await api.addCustomBitlink(body);
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
| **add_custom_bitlink** | [AddCustomBitlink](AddCustomBitlink.md) |  | |

### Return type

[**CustomBitlink**](CustomBitlink.md)

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
| **409** | Conflict |  -  |
| **422** | UNPROCESSABLE_ENTITY |  -  |
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getClicksForCustomBitlink

> Clicks getClicksForCustomBitlink(custom_bitlink, unit, units, unit_reference)

Get Clicks for a Custom Bitlink\&#39;s Entire History

Returns the click counts for the specified link. This returns an array with clicks based on a date.

### Example

```ts
import {
  Configuration,
  CustomBitlinksApi,
} from '';
import type { GetClicksForCustomBitlinkRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new CustomBitlinksApi(config);

  const body = {
    // string | A Custom Bitlink made of the domain and keyword
    custom_bitlink: chauncey.ly/chauncey,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetClicksForCustomBitlinkRequest;

  try {
    const data = await api.getClicksForCustomBitlink(body);
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
| **custom_bitlink** | `string` | A Custom Bitlink made of the domain and keyword | [Defaults to `undefined`] |
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**Clicks**](Clicks.md)

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
| **404** | NOT_FOUND |  -  |
| **410** | GONE |  -  |
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getCustomBitlink

> CustomBitlink getCustomBitlink(custom_bitlink)

Retrieve Custom Bitlink

Returns the details and history of the specified link.

### Example

```ts
import {
  Configuration,
  CustomBitlinksApi,
} from '';
import type { GetCustomBitlinkRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new CustomBitlinksApi(config);

  const body = {
    // string | A Custom Bitlink made of the domain and keyword
    custom_bitlink: chauncey.ly/chauncey,
  } satisfies GetCustomBitlinkRequest;

  try {
    const data = await api.getCustomBitlink(body);
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
| **custom_bitlink** | `string` | A Custom Bitlink made of the domain and keyword | [Defaults to `undefined`] |

### Return type

[**CustomBitlink**](CustomBitlink.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SUCCESS |  -  |
| **402** | UPGRADE_REQUIRED |  -  |
| **403** | FORBIDDEN |  -  |
| **404** | NOT_FOUND |  -  |
| **410** | GONE |  -  |
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getCustomBitlinkMetricsByDestination

> ClickMetrics getCustomBitlinkMetricsByDestination(custom_bitlink, unit, units, unit_reference)

Get Metrics for a Custom Bitlink by Destination

Returns click metrics for the specified link by its historical destinations.

### Example

```ts
import {
  Configuration,
  CustomBitlinksApi,
} from '';
import type { GetCustomBitlinkMetricsByDestinationRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new CustomBitlinksApi(config);

  const body = {
    // string | A Custom Bitlink made of the domain and keyword
    custom_bitlink: chauncey.ly/chauncey,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetCustomBitlinkMetricsByDestinationRequest;

  try {
    const data = await api.getCustomBitlinkMetricsByDestination(body);
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
| **custom_bitlink** | `string` | A Custom Bitlink made of the domain and keyword | [Defaults to `undefined`] |
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
| **402** | UPGRADE_REQUIRED |  -  |
| **403** | FORBIDDEN |  -  |
| **404** | NOT_FOUND |  -  |
| **410** | GONE |  -  |
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## updateCustomBitlink

> CustomBitlink updateCustomBitlink(custom_bitlink, update_custom_bitlink)

Update Custom Bitlink

Move a keyword (or custom back-half) to a different Bitlink (domains must match).

### Example

```ts
import {
  Configuration,
  CustomBitlinksApi,
} from '';
import type { UpdateCustomBitlinkRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new CustomBitlinksApi(config);

  const body = {
    // string | A Custom Bitlink made of the domain and keyword
    custom_bitlink: chauncey.ly/chauncey,
    // UpdateCustomBitlink
    update_custom_bitlink: ...,
  } satisfies UpdateCustomBitlinkRequest;

  try {
    const data = await api.updateCustomBitlink(body);
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
| **custom_bitlink** | `string` | A Custom Bitlink made of the domain and keyword | [Defaults to `undefined`] |
| **update_custom_bitlink** | [UpdateCustomBitlink](UpdateCustomBitlink.md) |  | |

### Return type

[**CustomBitlink**](CustomBitlink.md)

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
| **422** | UNPROCESSABLE_ENTITY |  -  |
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

