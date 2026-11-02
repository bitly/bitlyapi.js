# BulkUploadApi

All URIs are relative to *https://api-ssl.bitly.com/v4*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**createOrganizationBulkUpload**](BulkUploadApi.md#createorganizationbulkupload) | **POST** /organizations/{organization_guid}/bulk_uploads | Create a bulk upload |
| [**getOrganizationBulkUpload**](BulkUploadApi.md#getorganizationbulkupload) | **GET** /organizations/{organization_guid}/bulk_uploads/{bulk_upload_id} | Retrieve a bulk upload |
| [**getOrganizationBulkUploads**](BulkUploadApi.md#getorganizationbulkuploads) | **GET** /organizations/{organization_guid}/bulk_uploads | Retrieve bulk uploads |



## createOrganizationBulkUpload

> OrganizationBulkUpload createOrganizationBulkUpload(organization_guid, bulk_upload_create)

Create a bulk upload

Creates a bulk upload in a group of the organization and returns a signed URL and headers for the file upload.  To complete a bulk upload: 1. Call this endpoint with the &#x60;group_guid&#x60; for the new links. Set &#x60;domain&#x60; to a custom domain of the group. Set &#x60;upload_type&#x60; to the item that each row creates: &#x60;link&#x60; for a link, &#x60;qr_code&#x60; for a QR code, or &#x60;coupled_link&#x60; for a link and its QR code. For &#x60;qr_code&#x60; and &#x60;coupled_link&#x60;, also set &#x60;template_id&#x60;. 2. Send the file in a &#x60;PUT&#x60; request to &#x60;upload_url&#x60;. Include every header in &#x60;headers&#x60; without changes, including &#x60;Content-Type&#x60;. The upload fails if any header is different. The file can be up to 25,000,000 bytes (25 MB), and a larger file gets &#x60;400 EntityTooLarge&#x60;. The URL is valid until &#x60;upload_url_expires_at&#x60;.  Processing is asynchronous. When it is complete, Bitly emails a report to the user\&#39;s verified primary email address and to the organization admins. The report shows the result and the short link for each row. The request returns &#x60;400 INVALID_EMAIL&#x60; if the user has no verified primary email address.  File format: the first row must contain the column headers. Each other row describes one item to create. &#x60;Long URL&#x60; is the only required column. The optional columns are &#x60;Title&#x60;, &#x60;Tags&#x60; (comma-separated if more than one), &#x60;Backhalf&#x60;, &#x60;Expiration&#x60; (for example &#x60;2030-01-31T15:04:05+0000&#x60;), &#x60;UTM Source&#x60;, &#x60;UTM Medium&#x60;, &#x60;UTM Campaign&#x60;, &#x60;UTM Term&#x60;, &#x60;UTM Content&#x60;, and &#x60;Current Bitly Short Link&#x60;. A row with &#x60;Current Bitly Short Link&#x60; changes the destination of that existing link and does not create a new link. A &#x60;qr_code&#x60; upload ignores the &#x60;Backhalf&#x60;, &#x60;Tags&#x60;, and &#x60;Current Bitly Short Link&#x60; columns. The maximum number of rows in one file depends on the plan. For examples, see [How do I shorten links in bulk?](https://support.bitly.com/hc/en-us/articles/360056277331) and [How do I create QR Codes in bulk?](https://support.bitly.com/hc/en-us/articles/25227111392397-How-do-I-create-QR-Codes-in-bulk). 

### Example

```ts
import {
  Configuration,
  BulkUploadApi,
} from '';
import type { CreateOrganizationBulkUploadRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BulkUploadApi(config);

  const body = {
    // string | A GUID for a Bitly organization
    organization_guid: Oa1bcd234eF,
    // BulkUploadCreate
    bulk_upload_create: ...,
  } satisfies CreateOrganizationBulkUploadRequest;

  try {
    const data = await api.createOrganizationBulkUpload(body);
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
| **bulk_upload_create** | [BulkUploadCreate](BulkUploadCreate.md) |  | |

### Return type

[**OrganizationBulkUpload**](OrganizationBulkUpload.md)

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
| **429** | MONTHLY_LIMIT_EXCEEDED |  -  |
| **500** | INTERNAL_ERROR |  -  |
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getOrganizationBulkUpload

> OrganizationBulkUpload getOrganizationBulkUpload(organization_guid, bulk_upload_id)

Retrieve a bulk upload

Returns the status of one bulk upload. The status is &#x60;pending&#x60; after the file is uploaded and before processing starts, then &#x60;in_progress&#x60;, and then &#x60;success&#x60;, &#x60;partial_success&#x60;, or &#x60;failure&#x60;. When processing is complete, &#x60;report_url&#x60; links to the report. Every member of the organization can see the bulk uploads of all its groups. A bulk upload whose file was not uploaded returns 404. 

### Example

```ts
import {
  Configuration,
  BulkUploadApi,
} from '';
import type { GetOrganizationBulkUploadRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BulkUploadApi(config);

  const body = {
    // string | A GUID for a Bitly organization
    organization_guid: Oa1bcd234eF,
    // string | The `id` returned when the bulk upload was created.
    bulk_upload_id: bulk_upload_id_example,
  } satisfies GetOrganizationBulkUploadRequest;

  try {
    const data = await api.getOrganizationBulkUpload(body);
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
| **bulk_upload_id** | `string` | The &#x60;id&#x60; returned when the bulk upload was created. | [Defaults to `undefined`] |

### Return type

[**OrganizationBulkUpload**](OrganizationBulkUpload.md)

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


## getOrganizationBulkUploads

> OrganizationBulkUploads getOrganizationBulkUploads(organization_guid, upload_type, size, search_after)

Retrieve bulk uploads

Returns the organization\&#39;s bulk uploads from all of its groups, newest first. Every member of the organization can see them. A bulk upload appears in the list when processing starts. Use &#x60;GET /organizations/{organization_guid}/bulk_uploads/{bulk_upload_id}&#x60; to check an upload before that.

### Example

```ts
import {
  Configuration,
  BulkUploadApi,
} from '';
import type { GetOrganizationBulkUploadsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new BulkUploadApi(config);

  const body = {
    // string | A GUID for a Bitly organization
    organization_guid: Oa1bcd234eF,
    // 'link' | 'qr_code' | 'coupled_link' (optional)
    upload_type: upload_type_example,
    // number | The quantity of items to be returned (optional)
    size: 56,
    // string | Token used to search next batch, only use response from API as input value. (optional)
    search_after: search_after_example,
  } satisfies GetOrganizationBulkUploadsRequest;

  try {
    const data = await api.getOrganizationBulkUploads(body);
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
| **upload_type** | `link`, `qr_code`, `coupled_link` |  | [Optional] [Defaults to `undefined`] [Enum: link, qr_code, coupled_link] |
| **size** | `number` | The quantity of items to be returned | [Optional] [Defaults to `50`] |
| **search_after** | `string` | Token used to search next batch, only use response from API as input value. | [Optional] [Defaults to `undefined`] |

### Return type

[**OrganizationBulkUploads**](OrganizationBulkUploads.md)

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
| **503** | TEMPORARILY_UNAVAILABLE |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

