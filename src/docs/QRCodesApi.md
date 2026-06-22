# QRCodesApi

All URIs are relative to *https://api-ssl.bitly.com/v4*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createQRCodePublic**](QRCodesApi.md#createqrcodepublic) | **POST** /qr-codes | Create a QR Code |
| [**createStaticQRCodePublic**](QRCodesApi.md#createstaticqrcodepublic) | **POST** /qr-codes/static | Generate a static QR Code image |
| [**deleteQRCode**](QRCodesApi.md#deleteqrcode) | **DELETE** /qr-codes/{qrcode_id} | Delete a QR Code |
| [**getQRCodeByIdPublic**](QRCodesApi.md#getqrcodebyidpublic) | **GET** /qr-codes/{qrcode_id} | Retrieve a QR Code |
| [**getQRCodeImagePublic**](QRCodesApi.md#getqrcodeimagepublic) | **GET** /qr-codes/{qrcode_id}/image | Retrieve a QR Code image |
| [**getScanMetricsForQRCode**](QRCodesApi.md#getscanmetricsforqrcode) | **GET** /qr-codes/{qrcode_id}/scans | Get Scans for a QR Code |
| [**getScanMetricsForQRCodeByBrowser**](QRCodesApi.md#getscanmetricsforqrcodebybrowser) | **GET** /qr-codes/{qrcode_id}/scans/browsers | Get Scans for a QR Code by Browser |
| [**getScanMetricsForQRCodeByCities**](QRCodesApi.md#getscanmetricsforqrcodebycities) | **GET** /qr-codes/{qrcode_id}/scans/cities | Get Metrics for a QR Code by City |
| [**getScanMetricsForQRCodeByCountries**](QRCodesApi.md#getscanmetricsforqrcodebycountries) | **GET** /qr-codes/{qrcode_id}/scans/countries | Get Scans for a QR Code by Country |
| [**getScanMetricsForQRCodeByDevicesOS**](QRCodesApi.md#getscanmetricsforqrcodebydevicesos) | **GET** /qr-codes/{qrcode_id}/scans/device_os | Get Scans for a QR Code by Device OS |
| [**getScanMetricsSummaryForQRCode**](QRCodesApi.md#getscanmetricssummaryforqrcode) | **GET** /qr-codes/{qrcode_id}/scans/summary | Get Scans Summary for a QR Code |
| [**listQRMinimal**](QRCodesApi.md#listqrminimal) | **GET** /groups/{group_guid}/qr-codes | Retrieve QR Codes by Group |
| [**updateQRCodePublic**](QRCodesApi.md#updateqrcodepublic) | **PATCH** /qr-codes/{qrcode_id} | Update a QR Code |



## createQRCodePublic

> QRCodeMinimal createQRCodePublic(public_create_qr_code_request)

Create a QR Code

Create a new QR Code and return its metadata

### Example

```ts
import {
  Configuration,
  QRCodesApi,
} from '';
import type { CreateQRCodePublicRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new QRCodesApi(config);

  const body = {
    // PublicCreateQRCodeRequest
    public_create_qr_code_request: {"title":"Minimal QR Code","group_guid":"Ba1bc23dE4F","destination":{"bitlink_id":"bit.ly/abc123"},"tags":["tag1","tag2"]},
  } satisfies CreateQRCodePublicRequest;

  try {
    const data = await api.createQRCodePublic(body);
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
| **public_create_qr_code_request** | [PublicCreateQRCodeRequest](PublicCreateQRCodeRequest.md) |  | |

### Return type

[**QRCodeMinimal**](QRCodeMinimal.md)

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
| **402** | UPGRADE_REQUIRED |  -  |
| **403** | FORBIDDEN |  -  |
| **404** | NOT_FOUND |  -  |
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **410** | GONE |  -  |
| **500** | INTERNAL_ERROR |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## createStaticQRCodePublic

> PublicStaticQRCodeResponse createStaticQRCodePublic(public_create_static_qr_code_request, accept, format)

Generate a static QR Code image

Generate a static QR code image without creating or saving a QR code resource. SVG and PNG output are supported via the Accept header Contact your Account Manager to discuss enabling this feature for your account.  The &#x60;render_customizations&#x60; field supports basic appearance options. Customizations that require the rasterize API are not supported: &#x60;gradient&#x60;, &#x60;background_gradient&#x60;, &#x60;frame&#x60;, &#x60;text&#x60;, and &#x60;logo&#x60;.  The Accept header controls the response format: - &#x60;application/json&#x60; (default): Returns a JSON object with the image as a base64-encoded byte string. - &#x60;image/svg+xml&#x60;: Returns the raw SVG image. - &#x60;image/png&#x60;: Returns the raw PNG image. 

### Example

```ts
import {
  Configuration,
  QRCodesApi,
} from '';
import type { CreateStaticQRCodePublicRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new QRCodesApi(config);

  const body = {
    // PublicCreateStaticQRCodeRequest
    public_create_static_qr_code_request: {"content":"https://bitly.com","group_guid":"Ba1bc23dE4F"},
    // 'application/json' | 'image/svg+xml' | 'image/png' | Controls the response format. Use `application/json` (default) to receive a JSON-wrapped base64 image, `image/svg+xml` to receive the raw SVG, or `image/png` to receive the raw PNG. (optional)
    accept: image/svg+xml,
    // 'svg' | 'png' | The image format. Supports `svg` and `png`. Ignored if the Accept header specifies an image type. (optional)
    format: format_example,
  } satisfies CreateStaticQRCodePublicRequest;

  try {
    const data = await api.createStaticQRCodePublic(body);
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
| **public_create_static_qr_code_request** | [PublicCreateStaticQRCodeRequest](PublicCreateStaticQRCodeRequest.md) |  | |
| **accept** | `application/json`, `image/svg+xml`, `image/png` | Controls the response format. Use &#x60;application/json&#x60; (default) to receive a JSON-wrapped base64 image, &#x60;image/svg+xml&#x60; to receive the raw SVG, or &#x60;image/png&#x60; to receive the raw PNG. | [Optional] [Defaults to `undefined`] [Enum: application/json, image/svg+xml, image/png] |
| **format** | `svg`, `png` | The image format. Supports &#x60;svg&#x60; and &#x60;png&#x60;. Ignored if the Accept header specifies an image type. | [Optional] [Defaults to `&#39;svg&#39;`] [Enum: svg, png] |

### Return type

[**PublicStaticQRCodeResponse**](PublicStaticQRCodeResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`, `image/svg+xml`, `image/png`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SUCCESS |  -  |
| **400** | BAD_REQUEST |  -  |
| **403** | FORBIDDEN |  -  |
| **406** | NOT_ACCEPTABLE |  -  |
| **422** | UNPROCESSABLE_ENTITY |  -  |
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## deleteQRCode

> PublicDeleteQRCodeResponse deleteQRCode(qrcode_id)

Delete a QR Code

Delete a QR Code that has not been redirected and is not for a custom link. Also deletes the associated link (if applicable).

### Example

```ts
import {
  Configuration,
  QRCodesApi,
} from '';
import type { DeleteQRCodeRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new QRCodesApi(config);

  const body = {
    // string | The QR Code ID
    qrcode_id: Qabcde12345,
  } satisfies DeleteQRCodeRequest;

  try {
    const data = await api.deleteQRCode(body);
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
| **qrcode_id** | `string` | The QR Code ID | [Defaults to `undefined`] |

### Return type

[**PublicDeleteQRCodeResponse**](PublicDeleteQRCodeResponse.md)

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

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getQRCodeByIdPublic

> QRCodeDetails getQRCodeByIdPublic(qrcode_id)

Retrieve a QR Code

Gets the QR code with a matching id.

### Example

```ts
import {
  Configuration,
  QRCodesApi,
} from '';
import type { GetQRCodeByIdPublicRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new QRCodesApi(config);

  const body = {
    // string | The QR Code ID
    qrcode_id: Qabcde12345,
  } satisfies GetQRCodeByIdPublicRequest;

  try {
    const data = await api.getQRCodeByIdPublic(body);
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
| **qrcode_id** | `string` | The QR Code ID | [Defaults to `undefined`] |

### Return type

[**QRCodeDetails**](QRCodeDetails.md)

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

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getQRCodeImagePublic

> PublicQRCodeImageResponse getQRCodeImagePublic(qrcode_id, accept, format)

Retrieve a QR Code image

Get the image of a given QR Code. The Accept header controls how this is returned (options are \&quot;application/json\&quot;, \&quot;image/svg+xml\&quot;, and \&quot;image/png\&quot;). If the Accept header is \&quot;application/json\&quot; the format query parameter will determine the image format inside of the json (which will be base64 encoded and prefixed with its mime type as would be suitable for a HTML image src tag). To Return the QR Code image itself, set the Accept header to \&quot;image/svg+xml\&quot; or \&quot;image/png\&quot;, or remove the Accept header and set the format query parameter to “svg” or “png” (if no format is specified the default will be “svg”). 

### Example

```ts
import {
  Configuration,
  QRCodesApi,
} from '';
import type { GetQRCodeImagePublicRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new QRCodesApi(config);

  const body = {
    // string | The QR Code ID
    qrcode_id: Qabcde12345,
    // string | The file format for the QR code\'s image. If the accept header is application/json the image data will be wrapped in a json object, base64 encoded and prefixed with its mime type as would be suitable for a HTML image src tag. (optional)
    accept: image/svg+xml,
    // 'svg' | 'png' | The format type of the image. If there is an image format in the header it takes precedence. (optional)
    format: svg,
  } satisfies GetQRCodeImagePublicRequest;

  try {
    const data = await api.getQRCodeImagePublic(body);
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
| **qrcode_id** | `string` | The QR Code ID | [Defaults to `undefined`] |
| **accept** | `string` | The file format for the QR code\&#39;s image. If the accept header is application/json the image data will be wrapped in a json object, base64 encoded and prefixed with its mime type as would be suitable for a HTML image src tag. | [Optional] [Defaults to `undefined`] |
| **format** | `svg`, `png` | The format type of the image. If there is an image format in the header it takes precedence. | [Optional] [Defaults to `&#39;svg&#39;`] [Enum: svg, png] |

### Return type

[**PublicQRCodeImageResponse**](PublicQRCodeImageResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`, `image/svg+xml`, `image/png`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SUCCESS |  -  |
| **400** | BAD_REQUEST |  -  |
| **403** | FORBIDDEN |  -  |
| **404** | NOT_FOUND |  -  |
| **410** | GONE |  -  |
| **500** | INTERNAL_ERROR |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getScanMetricsForQRCode

> BitlinkScans getScanMetricsForQRCode(qrcode_id, unit, units, unit_reference)

Get Scans for a QR Code

Returns an array of scan counts for the specified QR code. The array is comprised of scan counts for each time window, where the window is based on the provided unit.

### Example

```ts
import {
  Configuration,
  QRCodesApi,
} from '';
import type { GetScanMetricsForQRCodeRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new QRCodesApi(config);

  const body = {
    // string | The QR Code ID
    qrcode_id: Qabcde12345,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetScanMetricsForQRCodeRequest;

  try {
    const data = await api.getScanMetricsForQRCode(body);
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
| **qrcode_id** | `string` | The QR Code ID | [Defaults to `undefined`] |
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**BitlinkScans**](BitlinkScans.md)

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


## getScanMetricsForQRCodeByBrowser

> ScanMetrics getScanMetricsForQRCodeByBrowser(qrcode_id, unit, units, size, unit_reference)

Get Scans for a QR Code by Browser

Returns the browsers generating scan traffic to the specified QR Code.

### Example

```ts
import {
  Configuration,
  QRCodesApi,
} from '';
import type { GetScanMetricsForQRCodeByBrowserRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new QRCodesApi(config);

  const body = {
    // string | The QR Code ID
    qrcode_id: Qabcde12345,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetScanMetricsForQRCodeByBrowserRequest;

  try {
    const data = await api.getScanMetricsForQRCodeByBrowser(body);
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
| **qrcode_id** | `string` | The QR Code ID | [Defaults to `undefined`] |
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **size** | `number` | The quantity of items to be be returned | [Optional] [Defaults to `50`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**ScanMetrics**](ScanMetrics.md)

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
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getScanMetricsForQRCodeByCities

> CityScanMetrics getScanMetricsForQRCodeByCities(qrcode_id, unit, units, size, unit_reference)

Get Metrics for a QR Code by City

Returns the city origins of scan traffic for the specified QR Code.

### Example

```ts
import {
  Configuration,
  QRCodesApi,
} from '';
import type { GetScanMetricsForQRCodeByCitiesRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new QRCodesApi(config);

  const body = {
    // string | The QR Code ID
    qrcode_id: Qabcde12345,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetScanMetricsForQRCodeByCitiesRequest;

  try {
    const data = await api.getScanMetricsForQRCodeByCities(body);
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
| **qrcode_id** | `string` | The QR Code ID | [Defaults to `undefined`] |
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **size** | `number` | The quantity of items to be be returned | [Optional] [Defaults to `50`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**CityScanMetrics**](CityScanMetrics.md)

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
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getScanMetricsForQRCodeByCountries

> ScanMetrics getScanMetricsForQRCodeByCountries(qrcode_id, unit, units, size, unit_reference)

Get Scans for a QR Code by Country

Returns the country origins of scan traffic for the specified QR Code.

### Example

```ts
import {
  Configuration,
  QRCodesApi,
} from '';
import type { GetScanMetricsForQRCodeByCountriesRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new QRCodesApi(config);

  const body = {
    // string | The QR Code ID
    qrcode_id: Qabcde12345,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetScanMetricsForQRCodeByCountriesRequest;

  try {
    const data = await api.getScanMetricsForQRCodeByCountries(body);
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
| **qrcode_id** | `string` | The QR Code ID | [Defaults to `undefined`] |
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **size** | `number` | The quantity of items to be be returned | [Optional] [Defaults to `50`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**ScanMetrics**](ScanMetrics.md)

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


## getScanMetricsForQRCodeByDevicesOS

> ScanMetrics getScanMetricsForQRCodeByDevicesOS(qrcode_id, unit, units, size, unit_reference)

Get Scans for a QR Code by Device OS

Returns the device os generating scan traffic for the specified QR Code.

### Example

```ts
import {
  Configuration,
  QRCodesApi,
} from '';
import type { GetScanMetricsForQRCodeByDevicesOSRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new QRCodesApi(config);

  const body = {
    // string | The QR Code ID
    qrcode_id: Qabcde12345,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetScanMetricsForQRCodeByDevicesOSRequest;

  try {
    const data = await api.getScanMetricsForQRCodeByDevicesOS(body);
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
| **qrcode_id** | `string` | The QR Code ID | [Defaults to `undefined`] |
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **size** | `number` | The quantity of items to be be returned | [Optional] [Defaults to `50`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**ScanMetrics**](ScanMetrics.md)

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
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getScanMetricsSummaryForQRCode

> BitlinkScansSummary getScanMetricsSummaryForQRCode(qrcode_id, unit, units, unit_reference)

Get Scans Summary for a QR Code

Returns the scan counts for a QR Code rolled up into a single field for a specified time window, where the window is based on the provided unit.

### Example

```ts
import {
  Configuration,
  QRCodesApi,
} from '';
import type { GetScanMetricsSummaryForQRCodeRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new QRCodesApi(config);

  const body = {
    // string | The QR Code ID
    qrcode_id: Qabcde12345,
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetScanMetricsSummaryForQRCodeRequest;

  try {
    const data = await api.getScanMetricsSummaryForQRCode(body);
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
| **qrcode_id** | `string` | The QR Code ID | [Defaults to `undefined`] |
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**BitlinkScansSummary**](BitlinkScansSummary.md)

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


## listQRMinimal

> QRCodesMinimal listQRMinimal(group_guid, has_render_customizations, size, search_after, query, hostname_path_query, created_before, created_after, archived, creating_login, qrc_type, is_gs1, is_expired, has_expiration, tags)

Retrieve QR Codes by Group

Retrieves a list of QR codes matching the filter settings. Values are in reverse chronological order. The pagination occurs by calling the next link in the pagination response object. 

### Example

```ts
import {
  Configuration,
  QRCodesApi,
} from '';
import type { ListQRMinimalRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new QRCodesApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // 'on' | 'off' | 'both' | Whether or not QRCode has any render customizations (like color or shape changes) (optional)
    has_render_customizations: both,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | Token used to search next batch of qr codes, only use response from API as input value. (optional)
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
    // Array<string> | Filter by the login of the authenticated user that created the QR Code (optional)
    creating_login: ["chauncey"],
    // Array<'bitlink' | 'long_url'> (optional)
    qrc_type: ["bitlink"],
    // 'on' | 'off' | 'both' | a filter value if the resource is a GS1 QR code (optional)
    is_gs1: both,
    // 'on' | 'off' | 'both' | filter bitlinks by expiration status (optional)
    is_expired: is_expired_example,
    // 'on' | 'off' | 'both' | filter bitlinks by presence of expiration (optional)
    has_expiration: has_expiration_example,
    // Array<string> | Filter by given tags (optional)
    tags: ["bitly","api"],
  } satisfies ListQRMinimalRequest;

  try {
    const data = await api.listQRMinimal(body);
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
| **has_render_customizations** | `on`, `off`, `both` | Whether or not QRCode has any render customizations (like color or shape changes) | [Optional] [Defaults to `&#39;both&#39;`] [Enum: on, off, both] |
| **size** | `number` | The quantity of items to be be returned | [Optional] [Defaults to `50`] |
| **search_after** | `string` | Token used to search next batch of qr codes, only use response from API as input value. | [Optional] [Defaults to `undefined`] |
| **query** | `string` | The value that you would like to search | [Optional] [Defaults to `undefined`] |
| **hostname_path_query** | `string` | The hostname and/or path you would like to search (case-insensitive). Subdomains included; query params and fragment ignored. | [Optional] [Defaults to `undefined`] |
| **created_before** | `number` | Timestamp as an integer unix epoch (seconds only) | [Optional] [Defaults to `undefined`] |
| **created_after** | `number` | Timestamp as an integer unix epoch (seconds only) | [Optional] [Defaults to `undefined`] |
| **archived** | `on`, `off`, `both` | Whether or not to include archived resources | [Optional] [Defaults to `&#39;off&#39;`] [Enum: on, off, both] |
| **creating_login** | `Array<string>` | Filter by the login of the authenticated user that created the QR Code | [Optional] |
| **qrc_type** | `bitlink`, `long_url` |  | [Optional] [Enum: bitlink, long_url] |
| **is_gs1** | `on`, `off`, `both` | a filter value if the resource is a GS1 QR code | [Optional] [Defaults to `&#39;both&#39;`] [Enum: on, off, both] |
| **is_expired** | `on`, `off`, `both` | filter bitlinks by expiration status | [Optional] [Defaults to `&#39;both&#39;`] [Enum: on, off, both] |
| **has_expiration** | `on`, `off`, `both` | filter bitlinks by presence of expiration | [Optional] [Defaults to `&#39;both&#39;`] [Enum: on, off, both] |
| **tags** | `Array<string>` | Filter by given tags | [Optional] |

### Return type

[**QRCodesMinimal**](QRCodesMinimal.md)

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
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## updateQRCodePublic

> QRCodeMinimal updateQRCodePublic(qrcode_id, public_update_qr_code_request)

Update a QR Code

Updates the QR code with a matching id and returns it.

### Example

```ts
import {
  Configuration,
  QRCodesApi,
} from '';
import type { UpdateQRCodePublicRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new QRCodesApi(config);

  const body = {
    // string | The QR code ID
    qrcode_id: Qabc123,
    // PublicUpdateQRCodeRequest
    public_update_qr_code_request: {"title":"Minimal QR Code Updated","tags":["tag1","tag2"]},
  } satisfies UpdateQRCodePublicRequest;

  try {
    const data = await api.updateQRCodePublic(body);
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
| **qrcode_id** | `string` | The QR code ID | [Defaults to `undefined`] |
| **public_update_qr_code_request** | [PublicUpdateQRCodeRequest](PublicUpdateQRCodeRequest.md) |  | |

### Return type

[**QRCodeMinimal**](QRCodeMinimal.md)

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
| **410** | GONE |  -  |
| **500** | INTERNAL_ERROR |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

