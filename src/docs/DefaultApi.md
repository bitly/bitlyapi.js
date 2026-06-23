# DefaultApi

All URIs are relative to *https://api-ssl.bitly.com/v4*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getOAuthApp**](DefaultApi.md#getoauthapp) | **GET** /apps/{client_id} | Retrieve OAuth App |



## getOAuthApp

> OAuthApp getOAuthApp(client_id)

Retrieve OAuth App

Retrieve the details for the provided OAuth App client ID

### Example

```ts
import {
  Configuration,
  DefaultApi,
} from '';
import type { GetOAuthAppRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new DefaultApi(config);

  const body = {
    // string | The client ID of an OAuth app
    client_id: 1234a56b789cd0e123456fg7h8901j123km45n6p,
  } satisfies GetOAuthAppRequest;

  try {
    const data = await api.getOAuthApp(body);
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
| **client_id** | `string` | The client ID of an OAuth app | [Defaults to `undefined`] |

### Return type

[**OAuthApp**](OAuthApp.md)

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

