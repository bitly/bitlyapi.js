# CampaignsApi

All URIs are relative to *https://api-ssl.bitly.com/v4*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createCampaign**](CampaignsApi.md#createcampaign) | **POST** /campaigns | Create Campaign |
| [**createChannel**](CampaignsApi.md#createchannel) | **POST** /channels | Create Channel |
| [**getCampaign**](CampaignsApi.md#getcampaign) | **GET** /campaigns/{campaign_guid} | Retrieve a Campaign |
| [**getCampaigns**](CampaignsApi.md#getcampaigns) | **GET** /campaigns | Retrieve Campaigns |
| [**getChannel**](CampaignsApi.md#getchannel) | **GET** /channels/{channel_guid} | Get a Channel |
| [**getChannels**](CampaignsApi.md#getchannels) | **GET** /channels | Retrieve Channels |
| [**updateCampaign**](CampaignsApi.md#updatecampaign) | **PATCH** /campaigns/{campaign_guid} | Update Campaign |
| [**updateChannel**](CampaignsApi.md#updatechannel) | **PATCH** /channels/{channel_guid} | Update a Channel |



## createCampaign

> Campaign createCampaign(campaign_modify)

Create Campaign

Creates a new campaign.

### Example

```ts
import {
  Configuration,
  CampaignsApi,
} from '';
import type { CreateCampaignRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new CampaignsApi(config);

  const body = {
    // CampaignModify
    campaign_modify: ...,
  } satisfies CreateCampaignRequest;

  try {
    const data = await api.createCampaign(body);
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
| **campaign_modify** | [CampaignModify](CampaignModify.md) |  | |

### Return type

[**Campaign**](Campaign.md)

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


## createChannel

> Channel createChannel(channel_modify)

Create Channel

Creates a new channel.

### Example

```ts
import {
  Configuration,
  CampaignsApi,
} from '';
import type { CreateChannelRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new CampaignsApi(config);

  const body = {
    // ChannelModify
    channel_modify: ...,
  } satisfies CreateChannelRequest;

  try {
    const data = await api.createChannel(body);
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
| **channel_modify** | [ChannelModify](ChannelModify.md) |  | |

### Return type

[**Channel**](Channel.md)

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


## getCampaign

> Campaign getCampaign(campaign_guid)

Retrieve a Campaign

Returns details for a campaign.

### Example

```ts
import {
  Configuration,
  CampaignsApi,
} from '';
import type { GetCampaignRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new CampaignsApi(config);

  const body = {
    // string | A GUID for a Bitly campaign
    campaign_guid: Ca1bcd2EFGh,
  } satisfies GetCampaignRequest;

  try {
    const data = await api.getCampaign(body);
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
| **campaign_guid** | `string` | A GUID for a Bitly campaign | [Defaults to `undefined`] |

### Return type

[**Campaign**](Campaign.md)

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


## getCampaigns

> Campaigns getCampaigns(group_guid)

Retrieve Campaigns

Returns the campaigns for the current authenticated user.

### Example

```ts
import {
  Configuration,
  CampaignsApi,
} from '';
import type { GetCampaignsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new CampaignsApi(config);

  const body = {
    // string | A GUID for a Bitly group (optional)
    group_guid: Ba1bc23dE4F,
  } satisfies GetCampaignsRequest;

  try {
    const data = await api.getCampaigns(body);
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
| **group_guid** | `string` | A GUID for a Bitly group | [Optional] [Defaults to `undefined`] |

### Return type

[**Campaigns**](Campaigns.md)

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
| **502** | BAD_GATEWAY |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getChannel

> Channel getChannel(channel_guid)

Get a Channel

Returns a channel\&#39;s details.

### Example

```ts
import {
  Configuration,
  CampaignsApi,
} from '';
import type { GetChannelRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new CampaignsApi(config);

  const body = {
    // string | A GUID for a Bitly Channel
    channel_guid: Ha1bc2DefGh,
  } satisfies GetChannelRequest;

  try {
    const data = await api.getChannel(body);
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
| **channel_guid** | `string` | A GUID for a Bitly Channel | [Defaults to `undefined`] |

### Return type

[**Channel**](Channel.md)

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


## getChannels

> Channels getChannels(group_guid, campaign_guid)

Retrieve Channels

Returns the channels available to a user.

### Example

```ts
import {
  Configuration,
  CampaignsApi,
} from '';
import type { GetChannelsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new CampaignsApi(config);

  const body = {
    // string | A GUID for a Bitly group (optional)
    group_guid: Ba1bc23dE4F,
    // string | A GUID for a Bitly campaign (optional)
    campaign_guid: Ca1bcd2EFGh,
  } satisfies GetChannelsRequest;

  try {
    const data = await api.getChannels(body);
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
| **group_guid** | `string` | A GUID for a Bitly group | [Optional] [Defaults to `undefined`] |
| **campaign_guid** | `string` | A GUID for a Bitly campaign | [Optional] [Defaults to `undefined`] |

### Return type

[**Channels**](Channels.md)

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
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## updateCampaign

> Campaign updateCampaign(campaign_guid, campaign_modify)

Update Campaign

Updates a campaign\&#39;s details.

### Example

```ts
import {
  Configuration,
  CampaignsApi,
} from '';
import type { UpdateCampaignRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new CampaignsApi(config);

  const body = {
    // string | A GUID for a Bitly campaign
    campaign_guid: Ca1bcd2EFGh,
    // CampaignModify
    campaign_modify: ...,
  } satisfies UpdateCampaignRequest;

  try {
    const data = await api.updateCampaign(body);
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
| **campaign_guid** | `string` | A GUID for a Bitly campaign | [Defaults to `undefined`] |
| **campaign_modify** | [CampaignModify](CampaignModify.md) |  | |

### Return type

[**Campaign**](Campaign.md)

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


## updateChannel

> Channel updateChannel(channel_guid, channel_modify)

Update a Channel

Updates an existing channel.

### Example

```ts
import {
  Configuration,
  CampaignsApi,
} from '';
import type { UpdateChannelRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new CampaignsApi(config);

  const body = {
    // string | A GUID for a Bitly Channel
    channel_guid: Ha1bc2DefGh,
    // ChannelModify
    channel_modify: ...,
  } satisfies UpdateChannelRequest;

  try {
    const data = await api.updateChannel(body);
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
| **channel_guid** | `string` | A GUID for a Bitly Channel | [Defaults to `undefined`] |
| **channel_modify** | [ChannelModify](ChannelModify.md) |  | |

### Return type

[**Channel**](Channel.md)

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

