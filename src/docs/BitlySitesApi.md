# BitlySitesApi

All URIs are relative to *https://api-ssl.bitly.com/v4*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**applyTemplate**](BitlySitesApi.md#applytemplateoperation) | **POST** /sites/{site_id}/template | Apply a template to a site |
| [**cloneSite**](BitlySitesApi.md#clonesite) | **POST** /sites/{site_id}/clone | Clone a Bitly Site from an existing one |
| [**createContainer**](BitlySitesApi.md#createcontainer) | **POST** /sites/{site_id}/containers | Creates a container |
| [**createSite**](BitlySitesApi.md#createsite) | **POST** /sites | Creates a New Bitly Site for a Group |
| [**createSiteBlock**](BitlySitesApi.md#createsiteblock) | **POST** /sites/{site_id}/blocks | Create a block on the provided Site ID |
| [**createSiteImage**](BitlySitesApi.md#createsiteimage) | **POST** /sites/{site_id}/images | Create a microsite image for a site |
| [**deleteSite**](BitlySitesApi.md#deletesite) | **DELETE** /sites/{site_id} | Deletes an existing Site |
| [**deleteSiteBlock**](BitlySitesApi.md#deletesiteblock) | **DELETE** /sites/{site_id}/blocks/{block_id} | Delete Site Block |
| [**deleteSiteRedirect**](BitlySitesApi.md#deletesiteredirect) | **DELETE** /sites/{site_id}/redirects/{domain}/{keyword} | Delete a redirect for a site |
| [**discardSiteDraft**](BitlySitesApi.md#discardsitedraft) | **DELETE** /sites/{site_id}/draft | Discard a Site Draft |
| [**getAggregateSiteViewsByCity**](BitlySitesApi.md#getaggregatesiteviewsbycity) | **GET** /aggregate/sites/views/cities | Get Site Views by City |
| [**getAggregateSiteViewsByCountry**](BitlySitesApi.md#getaggregatesiteviewsbycountry) | **GET** /aggregate/sites/views/countries | Get Site Views by Country |
| [**getAggregateSiteViewsByDevice**](BitlySitesApi.md#getaggregatesiteviewsbydevice) | **GET** /aggregate/sites/views/devices | Get Site Views by Device |
| [**getAggregateSiteViewsByReferrer**](BitlySitesApi.md#getaggregatesiteviewsbyreferrer) | **GET** /aggregate/sites/views/referrers | Get Site Views by Referrer |
| [**getAggregateSiteViewsOverTime**](BitlySitesApi.md#getaggregatesiteviewsovertime) | **GET** /aggregate/sites/views/over_time | Get Site Views Over Time |
| [**getAggregateSitesOverview**](BitlySitesApi.md#getaggregatesitesoverview) | **GET** /aggregate/sites/overview | Get Overview Metrics for Sites |
| [**getLaunchpadDigitalBusinessCardDownloadsOverTime**](BitlySitesApi.md#getlaunchpaddigitalbusinesscarddownloadsovertime) | **GET** /aggregate/sites/digital_business_card_downloads/over_time | Get Site Digital Business Card Downloads Over Time |
| [**getLinkPerformanceForSite**](BitlySitesApi.md#getlinkperformanceforsite) | **GET** /sites/{site_id}/link_performance | Get Link Performance counts for a Site |
| [**getMetricsForSiteByCities**](BitlySitesApi.md#getmetricsforsitebycities) | **GET** /sites/{site_id}/cities | Get Metrics for a Site by City |
| [**getMetricsForSiteByDevices**](BitlySitesApi.md#getmetricsforsitebydevices) | **GET** /sites/{site_id}/devices | Get Metrics for a Site by Device Type |
| [**getMetricsForSiteByReferrers**](BitlySitesApi.md#getmetricsforsitebyreferrers) | **GET** /sites/{site_id}/referrers | Get Metrics for a Site by Referrers |
| [**getMetricsForSitesByCountries**](BitlySitesApi.md#getmetricsforsitesbycountries) | **GET** /sites/{site_id}/countries | Get Metrics for a Site by Country |
| [**getSite**](BitlySitesApi.md#getsite) | **GET** /sites/{site_id} | Retrieve All Data Necessary To Render a Bitly Site |
| [**getSiteClicksByCities**](BitlySitesApi.md#getsiteclicksbycities) | **GET** /aggregate/sites/clicks/cities | Get Site Button Clicks by City |
| [**getSiteClicksByCountries**](BitlySitesApi.md#getsiteclicksbycountries) | **GET** /aggregate/sites/clicks/countries | Get Site Button Clicks by Country |
| [**getSiteClicksByDevices**](BitlySitesApi.md#getsiteclicksbydevices) | **GET** /aggregate/sites/clicks/devices | Get Site Button Clicks by Device |
| [**getSiteClicksOverTime**](BitlySitesApi.md#getsiteclicksovertime) | **GET** /aggregate/sites/clicks/over_time | Get Site Button Clicks Over Time |
| [**getSiteFilteredTopPageButtons**](BitlySitesApi.md#getsitefilteredtoppagebuttons) | **GET** /aggregate/sites/clicks/top | Get Top Performing Site Buttons by Clicks |
| [**getSitesForGroup**](BitlySitesApi.md#getsitesforgroup) | **GET** /groups/{group_guid}/sites | Get Bitly Sites for Group |
| [**getTemplates**](BitlySitesApi.md#gettemplates) | **GET** /site_templates | Retrieve\&#39;s Bitly templates |
| [**getViewsForSite**](BitlySitesApi.md#getviewsforsite) | **GET** /sites/{site_id}/views | Get Views for a Site |
| [**getViewsSummaryForSite**](BitlySitesApi.md#getviewssummaryforsite) | **GET** /sites/{site_id}/views/summary | Get a Views Summary for a Site |
| [**prevalidateYouTubeVideoButton**](BitlySitesApi.md#prevalidateyoutubevideobutton) | **POST** /sites/{launchpad_id}/buttons/youtubeVideo/prevalidate | Prevalidate a youtube video button |
| [**publishSite**](BitlySitesApi.md#publishsite) | **POST** /sites/{site_id}/publish | Publishes a Draft Site to become Production Site |
| [**updateSite**](BitlySitesApi.md#updatesite) | **PATCH** /sites/{site_id} | Updates an existing Bitly Site |
| [**updateSiteAppearance**](BitlySitesApi.md#updatesiteappearance) | **PUT** /sites/{site_id}/appearance | Update the appearance of a Bitly Site |
| [**updateSiteBlock**](BitlySitesApi.md#updatesiteblock) | **PATCH** /sites/{site_id}/blocks/{block_id} | Update a block on the provided Site ID |



## applyTemplate

> BitlySite applyTemplate(site_id, apply_template_request)

Apply a template to a site

Applies a template\&#39;s appearance and optionally sample content to a Bitly Site

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { ApplyTemplateOperationRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // string | A GUID for a Bitly Site
    site_id: M0000guid01,
    // ApplyTemplateRequest (optional)
    apply_template_request: {"template_guid":"T1234567890"},
  } satisfies ApplyTemplateOperationRequest;

  try {
    const data = await api.applyTemplate(body);
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
| **site_id** | `string` | A GUID for a Bitly Site | [Defaults to `undefined`] |
| **apply_template_request** | [ApplyTemplateRequest](ApplyTemplateRequest.md) |  | [Optional] |

### Return type

[**BitlySite**](BitlySite.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | SUCCESS |  -  |
| **403** | FORBIDDEN |  -  |
| **404** | NOT_FOUND |  -  |
| **422** | UNPROCESSABLE_ENTITY |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## cloneSite

> BitlySite cloneSite(site_id, site_clone_request)

Clone a Bitly Site from an existing one

Creates a new Bitly site by cloning content and appearance from an existing site

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { CloneSiteRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // string | A GUID for a Bitly Site
    site_id: M0000guid01,
    // SiteCloneRequest
    site_clone_request: {"uri":"bit.ly/m/mysite-copy"},
  } satisfies CloneSiteRequest;

  try {
    const data = await api.cloneSite(body);
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
| **site_id** | `string` | A GUID for a Bitly Site | [Defaults to `undefined`] |
| **site_clone_request** | [SiteCloneRequest](SiteCloneRequest.md) |  | |

### Return type

[**BitlySite**](BitlySite.md)

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
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## createContainer

> SiteBlock createContainer(site_id, site_block_container_request)

Creates a container

Creates a container which contains a set of other content

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { CreateContainerRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // string | A GUID for a Bitly Site
    site_id: M0000guid01,
    // SiteBlockContainerRequest
    site_block_container_request: {"type":"grid"},
  } satisfies CreateContainerRequest;

  try {
    const data = await api.createContainer(body);
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
| **site_id** | `string` | A GUID for a Bitly Site | [Defaults to `undefined`] |
| **site_block_container_request** | [SiteBlockContainerRequest](SiteBlockContainerRequest.md) |  | |

### Return type

[**SiteBlock**](SiteBlock.md)

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
| **404** | NOT_FOUND |  -  |
| **422** | UNPROCESSABLE_ENTITY |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## createSite

> BitlySite createSite(create_launchpad)

Creates a New Bitly Site for a Group

Creates an empty Bitly Site for a group using default appearance settings

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { CreateSiteRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // CreateLaunchpad
    create_launchpad: {"group_guid":"Ba1bc23dE4F","domain":"bit.ly","keyword":"mysite","uri":"bit.ly/m/mysite"},
  } satisfies CreateSiteRequest;

  try {
    const data = await api.createSite(body);
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
| **create_launchpad** | [CreateLaunchpad](CreateLaunchpad.md) |  | |

### Return type

[**BitlySite**](BitlySite.md)

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
| **422** | UNPROCESSABLE_ENTITY |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## createSiteBlock

> SiteBlock createSiteBlock(site_id, site_block_create_request)

Create a block on the provided Site ID

Creates a block of the given type on the provided Site ID (excluding grid and carousel; see Creates a container to create those)

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { CreateSiteBlockRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // string | A GUID for a Bitly Site
    site_id: M0000guid01,
    // SiteBlockCreateRequest
    site_block_create_request: {"type":"bitlink","content":{"bitlink_id":"bit.ly/GzmMT6","link_title":"Short links, big results","description":"my description"},"is_active":true},
  } satisfies CreateSiteBlockRequest;

  try {
    const data = await api.createSiteBlock(body);
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
| **site_id** | `string` | A GUID for a Bitly Site | [Defaults to `undefined`] |
| **site_block_create_request** | [SiteBlockCreateRequest](SiteBlockCreateRequest.md) |  | |

### Return type

[**SiteBlock**](SiteBlock.md)

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
| **404** | NOT_FOUND |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## createSiteImage

> ImageUploadResponse createSiteImage(site_id, site_image_upload)

Create a microsite image for a site

Takes a previously uploaded image and attaches it to a site

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { CreateSiteImageRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // string | A GUID for a Bitly Site
    site_id: M0000guid01,
    // SiteImageUpload
    site_image_upload: {"image_guid":"Ia1bcd234eF","url":"https://example.com/image.png","image_use":"profile","crop":"{\"Min\": {\"X\": 0, \"Y\": 0}, \"Max\": {\"X\": 1, \"Y\": 1}}"},
  } satisfies CreateSiteImageRequest;

  try {
    const data = await api.createSiteImage(body);
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
| **site_id** | `string` | A GUID for a Bitly Site | [Defaults to `undefined`] |
| **site_image_upload** | [SiteImageUpload](SiteImageUpload.md) |  | |

### Return type

[**ImageUploadResponse**](ImageUploadResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | CREATED |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## deleteSite

> deleteSite(site_id)

Deletes an existing Site

Deletes an existing Site

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { DeleteSiteRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // string | A GUID for a Bitly Site
    site_id: M0000guid01,
  } satisfies DeleteSiteRequest;

  try {
    const data = await api.deleteSite(body);
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
| **site_id** | `string` | A GUID for a Bitly Site | [Defaults to `undefined`] |

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
| **204** | NO_CONTENT |  -  |
| **400** | BAD_REQUEST |  -  |
| **403** | FORBIDDEN |  -  |
| **404** | NOT_FOUND |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## deleteSiteBlock

> deleteSiteBlock(site_id, block_id)

Delete Site Block

Deletes a block of any type from a given site - does not deactivate. Does not delete the link tied to the block. Deleting a container block (grid or carousel) also deletes the blocks it contains.

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { DeleteSiteBlockRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // string | A GUID for a Bitly Site
    site_id: M0000guid01,
    // string | A GUID for a Bitly Site content block
    block_id: La1bcd234eF,
  } satisfies DeleteSiteBlockRequest;

  try {
    const data = await api.deleteSiteBlock(body);
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
| **site_id** | `string` | A GUID for a Bitly Site | [Defaults to `undefined`] |
| **block_id** | `string` | A GUID for a Bitly Site content block | [Defaults to `undefined`] |

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
| **204** | NO_CONTENT |  -  |
| **400** | BAD_REQUEST |  -  |
| **403** | FORBIDDEN |  -  |
| **404** | NOT_FOUND |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## deleteSiteRedirect

> deleteSiteRedirect(site_id, domain, keyword)

Delete a redirect for a site

Deletes a redirect for a site

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { DeleteSiteRedirectRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // string | A GUID for a Bitly Site
    site_id: M0000guid01,
    // string | The custom domain the redirect is configured on
    domain: es.pn,
    // string | The keyword (back-half) of the redirect to delete
    keyword: promo,
  } satisfies DeleteSiteRedirectRequest;

  try {
    const data = await api.deleteSiteRedirect(body);
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
| **site_id** | `string` | A GUID for a Bitly Site | [Defaults to `undefined`] |
| **domain** | `string` | The custom domain the redirect is configured on | [Defaults to `undefined`] |
| **keyword** | `string` | The keyword (back-half) of the redirect to delete | [Defaults to `undefined`] |

### Return type

`void` (Empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | SUCCESS |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## discardSiteDraft

> discardSiteDraft(site_id)

Discard a Site Draft

Discards a given site\&#39;s in-progress draft

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { DiscardSiteDraftRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // string | A GUID for a Bitly Site
    site_id: M0000guid01,
  } satisfies DiscardSiteDraftRequest;

  try {
    const data = await api.discardSiteDraft(body);
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
| **site_id** | `string` | A GUID for a Bitly Site | [Defaults to `undefined`] |

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
| **403** | FORBIDDEN |  -  |
| **404** | NOT_FOUND |  -  |
| **422** | UNPROCESSABLE_ENTITY |  -  |
| **500** | INTERNAL_ERROR |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getAggregateSiteViewsByCity

> AggregateClicksForBitlinksByCitiesFacet getAggregateSiteViewsByCity(unit, units, site, unit_reference, report_guid)

Get Site Views by City

Returns the city origins of view traffic for the requested Sites.

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { GetAggregateSiteViewsByCityRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // Array<string> | Filter by given Bitly Site guids (optional)
    site: ["M0123456789"],
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
    // string (optional)
    report_guid: report_guid_example,
  } satisfies GetAggregateSiteViewsByCityRequest;

  try {
    const data = await api.getAggregateSiteViewsByCity(body);
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
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **site** | `Array<string>` | Filter by given Bitly Site guids | [Optional] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |
| **report_guid** | `string` |  | [Optional] [Defaults to `undefined`] |

### Return type

[**AggregateClicksForBitlinksByCitiesFacet**](AggregateClicksForBitlinksByCitiesFacet.md)

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


## getAggregateSiteViewsByCountry

> AggregateClicksForBitlinksByFacet getAggregateSiteViewsByCountry(unit, units, site, unit_reference, report_guid)

Get Site Views by Country

Returns the country origins of view traffic for the requested Sites.

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { GetAggregateSiteViewsByCountryRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // Array<string> | Filter by given Bitly Site guids (optional)
    site: ["M0123456789"],
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
    // string (optional)
    report_guid: report_guid_example,
  } satisfies GetAggregateSiteViewsByCountryRequest;

  try {
    const data = await api.getAggregateSiteViewsByCountry(body);
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
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **site** | `Array<string>` | Filter by given Bitly Site guids | [Optional] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |
| **report_guid** | `string` |  | [Optional] [Defaults to `undefined`] |

### Return type

[**AggregateClicksForBitlinksByFacet**](AggregateClicksForBitlinksByFacet.md)

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


## getAggregateSiteViewsByDevice

> AggregateClicksForBitlinksByFacet getAggregateSiteViewsByDevice(unit, units, site, unit_reference, report_guid)

Get Site Views by Device

Returns the device types generating view traffic for the requested Sites.

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { GetAggregateSiteViewsByDeviceRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // Array<string> | Filter by given Bitly Site guids (optional)
    site: ["M0123456789"],
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
    // string (optional)
    report_guid: report_guid_example,
  } satisfies GetAggregateSiteViewsByDeviceRequest;

  try {
    const data = await api.getAggregateSiteViewsByDevice(body);
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
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **site** | `Array<string>` | Filter by given Bitly Site guids | [Optional] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |
| **report_guid** | `string` |  | [Optional] [Defaults to `undefined`] |

### Return type

[**AggregateClicksForBitlinksByFacet**](AggregateClicksForBitlinksByFacet.md)

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


## getAggregateSiteViewsByReferrer

> AggregateClicksForBitlinksByFacet getAggregateSiteViewsByReferrer(unit, units, site, unit_reference, report_guid)

Get Site Views by Referrer

Returns referrer view counts for the requested Sites.

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { GetAggregateSiteViewsByReferrerRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // Array<string> | Filter by given Bitly Site guids (optional)
    site: ["M0123456789"],
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
    // string (optional)
    report_guid: report_guid_example,
  } satisfies GetAggregateSiteViewsByReferrerRequest;

  try {
    const data = await api.getAggregateSiteViewsByReferrer(body);
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
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **site** | `Array<string>` | Filter by given Bitly Site guids | [Optional] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |
| **report_guid** | `string` |  | [Optional] [Defaults to `undefined`] |

### Return type

[**AggregateClicksForBitlinksByFacet**](AggregateClicksForBitlinksByFacet.md)

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


## getAggregateSiteViewsOverTime

> AggregateClicksForBitlinks getAggregateSiteViewsOverTime(unit, units, site, unit_reference, report_guid)

Get Site Views Over Time

Returns view counts over time for the requested Sites, grouped by the provided time unit.

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { GetAggregateSiteViewsOverTimeRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // Array<string> | Filter by given Bitly Site guids (optional)
    site: ["M0123456789"],
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
    // string (optional)
    report_guid: report_guid_example,
  } satisfies GetAggregateSiteViewsOverTimeRequest;

  try {
    const data = await api.getAggregateSiteViewsOverTime(body);
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
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **site** | `Array<string>` | Filter by given Bitly Site guids | [Optional] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |
| **report_guid** | `string` |  | [Optional] [Defaults to `undefined`] |

### Return type

[**AggregateClicksForBitlinks**](AggregateClicksForBitlinks.md)

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


## getAggregateSitesOverview

> GetAggregateSitesOverview200Response getAggregateSitesOverview(unit, units, site, unit_reference, report_guid)

Get Overview Metrics for Sites

Returns total button clicks and page views for the requested Sites.

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { GetAggregateSitesOverviewRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // Array<string> | Filter by given Bitly Site guids (optional)
    site: ["M0123456789"],
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
    // string (optional)
    report_guid: report_guid_example,
  } satisfies GetAggregateSitesOverviewRequest;

  try {
    const data = await api.getAggregateSitesOverview(body);
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
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **site** | `Array<string>` | Filter by given Bitly Site guids | [Optional] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |
| **report_guid** | `string` |  | [Optional] [Defaults to `undefined`] |

### Return type

[**GetAggregateSitesOverview200Response**](GetAggregateSitesOverview200Response.md)

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


## getLaunchpadDigitalBusinessCardDownloadsOverTime

> AggregateClicksForBitlinks getLaunchpadDigitalBusinessCardDownloadsOverTime(unit, units, site, unit_reference, report_guid)

Get Site Digital Business Card Downloads Over Time

Returns digital business card download counts over time for the requested Sites, grouped by the provided time unit.

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { GetLaunchpadDigitalBusinessCardDownloadsOverTimeRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // Array<string> | Filter by given Bitly Site guids (optional)
    site: ["M0123456789"],
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
    // string (optional)
    report_guid: report_guid_example,
  } satisfies GetLaunchpadDigitalBusinessCardDownloadsOverTimeRequest;

  try {
    const data = await api.getLaunchpadDigitalBusinessCardDownloadsOverTime(body);
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
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **site** | `Array<string>` | Filter by given Bitly Site guids | [Optional] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |
| **report_guid** | `string` |  | [Optional] [Defaults to `undefined`] |

### Return type

[**AggregateClicksForBitlinks**](AggregateClicksForBitlinks.md)

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


## getLinkPerformanceForSite

> SiteLinkPerformance getLinkPerformanceForSite(site_id, units, unit, size, unit_reference, page)

Get Link Performance counts for a Site

Returns the click counts for all active and inactive links that were associated with a site

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { GetLinkPerformanceForSiteRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // string | A GUID for a Bitly Site
    site_id: M0000guid01,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // TimeUnit | A unit of time (optional)
    unit: month,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
    // number | Integer specifying the numbered result at which to start (optional)
    page: 1,
  } satisfies GetLinkPerformanceForSiteRequest;

  try {
    const data = await api.getLinkPerformanceForSite(body);
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
| **site_id** | `string` | A GUID for a Bitly Site | [Defaults to `undefined`] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **unit** | `TimeUnit` | A unit of time | [Optional] [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **size** | `number` | The quantity of items to be be returned | [Optional] [Defaults to `50`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |
| **page** | `number` | Integer specifying the numbered result at which to start | [Optional] [Defaults to `1`] |

### Return type

[**SiteLinkPerformance**](SiteLinkPerformance.md)

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


## getMetricsForSiteByCities

> SiteCityViewMetrics getMetricsForSiteByCities(site_id, units, unit, size, unit_reference)

Get Metrics for a Site by City

Returns the city origins of view traffic for the specified Site.

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { GetMetricsForSiteByCitiesRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // string | A GUID for a Bitly Site
    site_id: M0000guid01,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // TimeUnit | A unit of time (optional)
    unit: month,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetMetricsForSiteByCitiesRequest;

  try {
    const data = await api.getMetricsForSiteByCities(body);
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
| **site_id** | `string` | A GUID for a Bitly Site | [Defaults to `undefined`] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **unit** | `TimeUnit` | A unit of time | [Optional] [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **size** | `number` | The quantity of items to be be returned | [Optional] [Defaults to `50`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**SiteCityViewMetrics**](SiteCityViewMetrics.md)

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


## getMetricsForSiteByDevices

> SiteViewMetrics getMetricsForSiteByDevices(site_id, units, unit, size, unit_reference)

Get Metrics for a Site by Device Type

Returns the device types generating view traffic to the specified site.

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { GetMetricsForSiteByDevicesRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // string | A GUID for a Bitly Site
    site_id: M0000guid01,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // TimeUnit | A unit of time (optional)
    unit: month,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetMetricsForSiteByDevicesRequest;

  try {
    const data = await api.getMetricsForSiteByDevices(body);
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
| **site_id** | `string` | A GUID for a Bitly Site | [Defaults to `undefined`] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **unit** | `TimeUnit` | A unit of time | [Optional] [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **size** | `number` | The quantity of items to be be returned | [Optional] [Defaults to `50`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**SiteViewMetrics**](SiteViewMetrics.md)

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


## getMetricsForSiteByReferrers

> SiteViewMetrics getMetricsForSiteByReferrers(site_id, units, unit, size, unit_reference)

Get Metrics for a Site by Referrers

Returns referrer view counts for the specified site.

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { GetMetricsForSiteByReferrersRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // string | A GUID for a Bitly Site
    site_id: M0000guid01,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // TimeUnit | A unit of time (optional)
    unit: month,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetMetricsForSiteByReferrersRequest;

  try {
    const data = await api.getMetricsForSiteByReferrers(body);
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
| **site_id** | `string` | A GUID for a Bitly Site | [Defaults to `undefined`] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **unit** | `TimeUnit` | A unit of time | [Optional] [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **size** | `number` | The quantity of items to be be returned | [Optional] [Defaults to `50`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**SiteViewMetrics**](SiteViewMetrics.md)

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
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getMetricsForSitesByCountries

> SiteViewMetrics getMetricsForSitesByCountries(site_id, units, unit, size, unit_reference)

Get Metrics for a Site by Country

Returns the country origins of view traffic for the specified Site.

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { GetMetricsForSitesByCountriesRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // string | A GUID for a Bitly Site
    site_id: M0000guid01,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // TimeUnit | A unit of time (optional)
    unit: month,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetMetricsForSitesByCountriesRequest;

  try {
    const data = await api.getMetricsForSitesByCountries(body);
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
| **site_id** | `string` | A GUID for a Bitly Site | [Defaults to `undefined`] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **unit** | `TimeUnit` | A unit of time | [Optional] [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **size** | `number` | The quantity of items to be be returned | [Optional] [Defaults to `50`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**SiteViewMetrics**](SiteViewMetrics.md)

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
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getSite

> BitlySite getSite(site_id)

Retrieve All Data Necessary To Render a Bitly Site

Retrieves a Bitly Site by ID

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { GetSiteRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // string | A GUID for a Bitly Site
    site_id: M0000guid01,
  } satisfies GetSiteRequest;

  try {
    const data = await api.getSite(body);
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
| **site_id** | `string` | A GUID for a Bitly Site | [Defaults to `undefined`] |

### Return type

[**BitlySite**](BitlySite.md)

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
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getSiteClicksByCities

> AggregateClicksForBitlinksByCitiesFacet getSiteClicksByCities(unit, units, site, unit_reference, report_guid)

Get Site Button Clicks by City

Returns the city origins of button click traffic for the requested Sites.

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { GetSiteClicksByCitiesRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // Array<string> | Filter by given Bitly Site guids (optional)
    site: ["M0123456789"],
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
    // string (optional)
    report_guid: report_guid_example,
  } satisfies GetSiteClicksByCitiesRequest;

  try {
    const data = await api.getSiteClicksByCities(body);
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
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **site** | `Array<string>` | Filter by given Bitly Site guids | [Optional] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |
| **report_guid** | `string` |  | [Optional] [Defaults to `undefined`] |

### Return type

[**AggregateClicksForBitlinksByCitiesFacet**](AggregateClicksForBitlinksByCitiesFacet.md)

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


## getSiteClicksByCountries

> AggregateClicksForBitlinksByFacet getSiteClicksByCountries(unit, units, site, unit_reference, report_guid)

Get Site Button Clicks by Country

Returns the country origins of button click traffic for the requested Sites.

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { GetSiteClicksByCountriesRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // Array<string> | Filter by given Bitly Site guids (optional)
    site: ["M0123456789"],
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
    // string (optional)
    report_guid: report_guid_example,
  } satisfies GetSiteClicksByCountriesRequest;

  try {
    const data = await api.getSiteClicksByCountries(body);
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
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **site** | `Array<string>` | Filter by given Bitly Site guids | [Optional] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |
| **report_guid** | `string` |  | [Optional] [Defaults to `undefined`] |

### Return type

[**AggregateClicksForBitlinksByFacet**](AggregateClicksForBitlinksByFacet.md)

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


## getSiteClicksByDevices

> AggregateClicksForBitlinksByFacet getSiteClicksByDevices(unit, units, site, unit_reference, report_guid)

Get Site Button Clicks by Device

Returns the device types generating button click traffic for the requested Sites.

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { GetSiteClicksByDevicesRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // Array<string> | Filter by given Bitly Site guids (optional)
    site: ["M0123456789"],
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
    // string (optional)
    report_guid: report_guid_example,
  } satisfies GetSiteClicksByDevicesRequest;

  try {
    const data = await api.getSiteClicksByDevices(body);
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
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **site** | `Array<string>` | Filter by given Bitly Site guids | [Optional] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |
| **report_guid** | `string` |  | [Optional] [Defaults to `undefined`] |

### Return type

[**AggregateClicksForBitlinksByFacet**](AggregateClicksForBitlinksByFacet.md)

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


## getSiteClicksOverTime

> AggregateClicksForBitlinks getSiteClicksOverTime(unit, units, site, unit_reference, report_guid)

Get Site Button Clicks Over Time

Returns button click counts over time for the requested Sites, grouped by the provided time unit.

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { GetSiteClicksOverTimeRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // Array<string> | Filter by given Bitly Site guids (optional)
    site: ["M0123456789"],
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
    // string (optional)
    report_guid: report_guid_example,
  } satisfies GetSiteClicksOverTimeRequest;

  try {
    const data = await api.getSiteClicksOverTime(body);
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
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **site** | `Array<string>` | Filter by given Bitly Site guids | [Optional] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |
| **report_guid** | `string` |  | [Optional] [Defaults to `undefined`] |

### Return type

[**AggregateClicksForBitlinks**](AggregateClicksForBitlinks.md)

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


## getSiteFilteredTopPageButtons

> SortedButtons getSiteFilteredTopPageButtons(unit, units, site, unit_reference, brand_guid, report_guid)

Get Top Performing Site Buttons by Clicks

Returns the top performing buttons by click count for the requested Sites.

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { GetSiteFilteredTopPageButtonsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // TimeUnit | A unit of time
    unit: month,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // Array<string> | Filter by given Bitly Site guids (optional)
    site: ["M0123456789"],
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
    // string (optional)
    brand_guid: brand_guid_example,
    // string (optional)
    report_guid: report_guid_example,
  } satisfies GetSiteFilteredTopPageButtonsRequest;

  try {
    const data = await api.getSiteFilteredTopPageButtons(body);
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
| **unit** | `TimeUnit` | A unit of time | [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **site** | `Array<string>` | Filter by given Bitly Site guids | [Optional] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |
| **brand_guid** | `string` |  | [Optional] [Defaults to `undefined`] |
| **report_guid** | `string` |  | [Optional] [Defaults to `undefined`] |

### Return type

[**SortedButtons**](SortedButtons.md)

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


## getSitesForGroup

> BitlySites getSitesForGroup(group_guid, search_after, size, sites_url_param)

Get Bitly Sites for Group

Gets all active Bitly Sites owned by the provided Group GUID

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { GetSitesForGroupRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // string | A GUID for a Bitly group
    group_guid: Ba1bc23dE4F,
    // string | Token used to search next batch, only use response from API as input value. (optional)
    search_after: search_after_example,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string (optional)
    sites_url_param: https://example.com,
  } satisfies GetSitesForGroupRequest;

  try {
    const data = await api.getSitesForGroup(body);
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
| **search_after** | `string` | Token used to search next batch, only use response from API as input value. | [Optional] [Defaults to `undefined`] |
| **size** | `number` | The quantity of items to be be returned | [Optional] [Defaults to `50`] |
| **sites_url_param** | `string` |  | [Optional] [Defaults to `undefined`] |

### Return type

[**BitlySites**](BitlySites.md)

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

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getTemplates

> Array&lt;Template&gt; getTemplates(category)

Retrieve\&#39;s Bitly templates

Retrieves all templates optionally sorted by a Site\&#39;s onboarding category

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { GetTemplatesRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // 'Link-in-bio' | 'Products and services' | 'Promotions' | 'Digital business card' | 'Image gallery' | 'Recommended' | A filter option for template categories (optional)
    category: Digital business card,
  } satisfies GetTemplatesRequest;

  try {
    const data = await api.getTemplates(body);
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
| **category** | `Link-in-bio`, `Products and services`, `Promotions`, `Digital business card`, `Image gallery`, `Recommended` | A filter option for template categories | [Optional] [Defaults to `undefined`] [Enum: Link-in-bio, Products and services, Promotions, Digital business card, Image gallery, Recommended] |

### Return type

[**Array&lt;Template&gt;**](Template.md)

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

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getViewsForSite

> SiteViewMetrics getViewsForSite(site_id, units, unit, size, unit_reference)

Get Views for a Site

Returns the view counts for the specified link in an array based on a date.

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { GetViewsForSiteRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // string | A GUID for a Bitly Site
    site_id: M0000guid01,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // TimeUnit | A unit of time (optional)
    unit: month,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetViewsForSiteRequest;

  try {
    const data = await api.getViewsForSite(body);
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
| **site_id** | `string` | A GUID for a Bitly Site | [Defaults to `undefined`] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **unit** | `TimeUnit` | A unit of time | [Optional] [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **size** | `number` | The quantity of items to be be returned | [Optional] [Defaults to `50`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**SiteViewMetrics**](SiteViewMetrics.md)

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


## getViewsSummaryForSite

> SiteViewsSummary getViewsSummaryForSite(site_id, units, unit, size, unit_reference)

Get a Views Summary for a Site

Returns the view counts for the specified site rolled up into a single field.

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { GetViewsSummaryForSiteRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // string | A GUID for a Bitly Site
    site_id: M0000guid01,
    // number | An integer representing the time units to query data for. pass -1 to return all units of time
    units: 1,
    // TimeUnit | A unit of time (optional)
    unit: month,
    // number | The quantity of items to be be returned (optional)
    size: 10,
    // string | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \'+\' with \'%2B\' and \':\' with \'%3A\'; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) (optional)
    unit_reference: 2006-01-02T15:04:05-0700,
  } satisfies GetViewsSummaryForSiteRequest;

  try {
    const data = await api.getViewsSummaryForSite(body);
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
| **site_id** | `string` | A GUID for a Bitly Site | [Defaults to `undefined`] |
| **units** | `number` | An integer representing the time units to query data for. pass -1 to return all units of time | [Defaults to `-1`] |
| **unit** | `TimeUnit` | A unit of time | [Optional] [Defaults to `undefined`] [Enum: minute, hour, day, week, month] |
| **size** | `number` | The quantity of items to be be returned | [Optional] [Defaults to `50`] |
| **unit_reference** | `string` | An ISO-8601 timestamp, indicating the most recent time for which to pull metrics. Will default to current time. Timestamp values should be url encoded (i.e. replace \&#39;+\&#39; with \&#39;%2B\&#39; and \&#39;:\&#39; with \&#39;%3A\&#39;; 2022-02-02T15:53:02+0000 becomes 2022-02-02T15%3A53%3A02%2B0000) | [Optional] [Defaults to `undefined`] |

### Return type

[**SiteViewsSummary**](SiteViewsSummary.md)

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


## prevalidateYouTubeVideoButton

> YoutubeVideoRequest prevalidateYouTubeVideoButton(launchpad_id, prevalidate_you_tube_video_request)

Prevalidate a youtube video button

constructs the content blob required to create a YouTube video button

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { PrevalidateYouTubeVideoButtonRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // string | A GUID for a Bitly Link Launchpad
    launchpad_id: Sa1bcd234eF,
    // PrevalidateYouTubeVideoRequest
    prevalidate_you_tube_video_request: {"video_id":"dQw4w9WgXcQ"},
  } satisfies PrevalidateYouTubeVideoButtonRequest;

  try {
    const data = await api.prevalidateYouTubeVideoButton(body);
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
| **launchpad_id** | `string` | A GUID for a Bitly Link Launchpad | [Defaults to `undefined`] |
| **prevalidate_you_tube_video_request** | [PrevalidateYouTubeVideoRequest](PrevalidateYouTubeVideoRequest.md) |  | |

### Return type

[**YoutubeVideoRequest**](YoutubeVideoRequest.md)

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
| **422** | UNPROCESSABLE_ENTITY |  -  |
| **500** | INTERNAL_ERROR |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## publishSite

> BitlySite publishSite(site_id)

Publishes a Draft Site to become Production Site

Replaces a production Site with its draft Site if changes are made

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { PublishSiteRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // string | A GUID for a Bitly Site
    site_id: M0000guid01,
  } satisfies PublishSiteRequest;

  try {
    const data = await api.publishSite(body);
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
| **site_id** | `string` | A GUID for a Bitly Site | [Defaults to `undefined`] |

### Return type

[**BitlySite**](BitlySite.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **201** | CREATED |  -  |
| **400** | BAD_REQUEST |  -  |
| **403** | FORBIDDEN |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## updateSite

> BitlySite updateSite(site_id, update_site)

Updates an existing Bitly Site

Updates a Bitly Site\&#39;s URI, display name, description and attached QR code. Changing the URI also creates a redirect from the previous URI.

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { UpdateSiteRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // string | A GUID for a Bitly Site
    site_id: M0000guid01,
    // UpdateSite
    update_site: {"uri":"bit.ly/m/bitlySocial","display_name":"Bitly Social","description":"All of our social links in one place","qr_code_id":"Qabc123"},
  } satisfies UpdateSiteRequest;

  try {
    const data = await api.updateSite(body);
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
| **site_id** | `string` | A GUID for a Bitly Site | [Defaults to `undefined`] |
| **update_site** | [UpdateSite](UpdateSite.md) |  | |

### Return type

[**BitlySite**](BitlySite.md)

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

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## updateSiteAppearance

> updateSiteAppearance(site_id, bitly_site_appearance)

Update the appearance of a Bitly Site

Updates the appearance of a Bitly Site

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { UpdateSiteAppearanceRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // string | A GUID for a Bitly Site
    site_id: M0000guid01,
    // BitlySiteAppearance
    bitly_site_appearance: {"theme_id":1,"layout":"default","font":"Inter","hide_bitly_logo":false,"style_preference":"theme","background_color":"#ffffff","bottom_background_color":"#f5f5f5","text_color":"#000000","description_color":"#333333","default_button_background_color":"#000000","default_button_text_color":"#ffffff","default_button_shape":"rounded"},
  } satisfies UpdateSiteAppearanceRequest;

  try {
    const data = await api.updateSiteAppearance(body);
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
| **site_id** | `string` | A GUID for a Bitly Site | [Defaults to `undefined`] |
| **bitly_site_appearance** | [BitlySiteAppearance](BitlySiteAppearance.md) |  | |

### Return type

`void` (Empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **204** | SUCCESS |  -  |
| **400** | BAD_REQUEST |  -  |
| **403** | FORBIDDEN |  -  |
| **404** | NOT_FOUND |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## updateSiteBlock

> SiteBlock updateSiteBlock(site_id, block_id, site_block_request)

Update a block on the provided Site ID

Updates a block on the provided Site ID. The block type is derived from the stored block and cannot be changed.

### Example

```ts
import {
  Configuration,
  BitlySitesApi,
} from '';
import type { UpdateSiteBlockRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BitlySitesApi(config);

  const body = {
    // string | A GUID for a Bitly Site
    site_id: M0000guid01,
    // string | A GUID for a Bitly Site content block
    block_id: La1bcd234eF,
    // SiteBlockRequest
    site_block_request: {"content":{"text":"Updated text content"},"appearance":{"alignment":"center","font_size":"large"},"is_active":true,"is_pinned":true},
  } satisfies UpdateSiteBlockRequest;

  try {
    const data = await api.updateSiteBlock(body);
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
| **site_id** | `string` | A GUID for a Bitly Site | [Defaults to `undefined`] |
| **block_id** | `string` | A GUID for a Bitly Site content block | [Defaults to `undefined`] |
| **site_block_request** | [SiteBlockRequest](SiteBlockRequest.md) |  | |

### Return type

[**SiteBlock**](SiteBlock.md)

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
| **403** | FORBIDDEN |  -  |
| **404** | NOT_FOUND |  -  |
| **422** | UNPROCESSABLE_ENTITY |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

