# WebhooksApi

All URIs are relative to *https://api-ssl.bitly.com/v4*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createWebhook**](WebhooksApi.md#createwebhook) | **POST** /webhooks | Create Webhook |
| [**deleteWebhook**](WebhooksApi.md#deletewebhook) | **DELETE** /webhooks/{webhook_guid} | Delete Webhook |
| [**getWebhook**](WebhooksApi.md#getwebhook) | **GET** /webhooks/{webhook_guid} | Retrieve Webhook |
| [**getWebhooks**](WebhooksApi.md#getwebhooks) | **GET** /organizations/{organization_guid}/webhooks | Get Webhooks |
| [**updateWebhook**](WebhooksApi.md#updatewebhook) | **PATCH** /webhooks/{webhook_guid} | Update Webhook |
| [**verifyWebhook**](WebhooksApi.md#verifywebhook) | **POST** /webhooks/{webhook_guid}/verify | Verify Webhook |



## createWebhook

> Webhook createWebhook(webhook_create)

Create Webhook

Creates a webhook.

### Example

```ts
import {
  Configuration,
  WebhooksApi,
} from '';
import type { CreateWebhookRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new WebhooksApi(config);

  const body = {
    // WebhookCreate
    webhook_create: ...,
  } satisfies CreateWebhookRequest;

  try {
    const data = await api.createWebhook(body);
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
| **webhook_create** | [WebhookCreate](WebhookCreate.md) |  | |

### Return type

[**Webhook**](Webhook.md)

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
| **422** | UNPROCESSABLE_ENTITY |  -  |
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## deleteWebhook

> deleteWebhook(webhook_guid)

Delete Webhook

Deletes a webhook.

### Example

```ts
import {
  Configuration,
  WebhooksApi,
} from '';
import type { DeleteWebhookRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new WebhooksApi(config);

  const body = {
    // string | A GUID for a Bitly webhook
    webhook_guid: Wa1bcDefG23,
  } satisfies DeleteWebhookRequest;

  try {
    const data = await api.deleteWebhook(body);
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
| **webhook_guid** | `string` | A GUID for a Bitly webhook | [Defaults to `undefined`] |

### Return type

`void` (Empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | SUCCESS |  -  |
| **400** | BAD_REQUEST |  -  |
| **402** | UPGRADE_REQUIRED |  -  |
| **403** | FORBIDDEN |  -  |
| **404** | NOT_FOUND |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getWebhook

> Webhook getWebhook(webhook_guid)

Retrieve Webhook

Returns a webhook.

### Example

```ts
import {
  Configuration,
  WebhooksApi,
} from '';
import type { GetWebhookRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new WebhooksApi(config);

  const body = {
    // string | A GUID for a Bitly webhook
    webhook_guid: Wa1bcDefG23,
  } satisfies GetWebhookRequest;

  try {
    const data = await api.getWebhook(body);
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
| **webhook_guid** | `string` | A GUID for a Bitly webhook | [Defaults to `undefined`] |

### Return type

[**Webhook**](Webhook.md)

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
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getWebhooks

> Webhooks getWebhooks(organization_guid)

Get Webhooks

Fetch all webhooks available for an Organization

### Example

```ts
import {
  Configuration,
  WebhooksApi,
} from '';
import type { GetWebhooksRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new WebhooksApi(config);

  const body = {
    // string | A GUID for a Bitly organization
    organization_guid: Oa1bcd234eF,
  } satisfies GetWebhooksRequest;

  try {
    const data = await api.getWebhooks(body);
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

[**Webhooks**](Webhooks.md)

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
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## updateWebhook

> Webhook updateWebhook(webhook_guid, webhook_update)

Update Webhook

Update a webhook

### Example

```ts
import {
  Configuration,
  WebhooksApi,
} from '';
import type { UpdateWebhookRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new WebhooksApi(config);

  const body = {
    // string | A GUID for a Bitly webhook
    webhook_guid: Wa1bcDefG23,
    // WebhookUpdate
    webhook_update: ...,
  } satisfies UpdateWebhookRequest;

  try {
    const data = await api.updateWebhook(body);
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
| **webhook_guid** | `string` | A GUID for a Bitly webhook | [Defaults to `undefined`] |
| **webhook_update** | [WebhookUpdate](WebhookUpdate.md) |  | |

### Return type

[**Webhook**](Webhook.md)

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


## verifyWebhook

> Webhook verifyWebhook(webhook_guid)

Verify Webhook

Sends ping event to test webhook configuration.

### Example

```ts
import {
  Configuration,
  WebhooksApi,
} from '';
import type { VerifyWebhookRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new WebhooksApi(config);

  const body = {
    // string | A GUID for a Bitly webhook
    webhook_guid: Wa1bcDefG23,
  } satisfies VerifyWebhookRequest;

  try {
    const data = await api.verifyWebhook(body);
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
| **webhook_guid** | `string` | A GUID for a Bitly webhook | [Defaults to `undefined`] |

### Return type

[**Webhook**](Webhook.md)

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
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

