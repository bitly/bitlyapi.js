# CustomDomainsApi

All URIs are relative to *https://api-ssl.bitly.com/v4*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getCustomDomainDNS**](CustomDomainsApi.md#getcustomdomaindns) | **GET** /custom_domains/{custom_domain}/dns | Get the DNS records for a custom domain |
| [**searchAvailableDomains**](CustomDomainsApi.md#searchavailabledomains) | **GET** /domains | Search for a domain to register |



## getCustomDomainDNS

> DomainDNS getCustomDomainDNS(custom_domain, organization_guid)

Get the DNS records for a custom domain

Get the records to create at your registrar, the records that resolve today, and whether they match. A root domain needs the A records. A subdomain needs the CNAME record.

### Example

```ts
import {
  Configuration,
  CustomDomainsApi,
} from '';
import type { GetCustomDomainDNSRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new CustomDomainsApi(config);

  const body = {
    // string | a custom domain on your account
    custom_domain: chauncey.ly,
    // string | A GUID for a Bitly organization
    organization_guid: Oa1bcd234eF,
  } satisfies GetCustomDomainDNSRequest;

  try {
    const data = await api.getCustomDomainDNS(body);
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
| **custom_domain** | `string` | a custom domain on your account | [Defaults to `undefined`] |
| **organization_guid** | `string` | A GUID for a Bitly organization | [Defaults to `undefined`] |

### Return type

[**DomainDNS**](DomainDNS.md)

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
| **429** | TOO_MANY_REQUESTS |  -  |
| **500** | INTERNAL_ERROR |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## searchAvailableDomains

> BSDSearchResults searchAvailableDomains(query, limit, organization_guid)

Search for a domain to register

Search the domains Bitly can register for an organization. The results hold available domains, and input_domain reports the status of the exact name you searched for. Register one with POST /domains.

### Example

```ts
import {
  Configuration,
  CustomDomainsApi,
} from '';
import type { SearchAvailableDomainsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // Configure HTTP bearer authorization: bearerAuth
    accessToken: "YOUR BEARER TOKEN",
  });
  const api = new CustomDomainsApi(config);

  const body = {
    // string | the domain name to search for, up to 32 characters
    query: acme,
    // number | limit the amount of results returned, 25 maximum (optional)
    limit: 10,
    // string | A GUID for a Bitly organization (optional)
    organization_guid: Oa1bcd234eF,
  } satisfies SearchAvailableDomainsRequest;

  try {
    const data = await api.searchAvailableDomains(body);
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
| **query** | `string` | the domain name to search for, up to 32 characters | [Defaults to `undefined`] |
| **limit** | `number` | limit the amount of results returned, 25 maximum | [Optional] [Defaults to `25`] |
| **organization_guid** | `string` | A GUID for a Bitly organization | [Optional] [Defaults to `undefined`] |

### Return type

[**BSDSearchResults**](BSDSearchResults.md)

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
| **429** | TOO_MANY_REQUESTS |  -  |
| **500** | INTERNAL_ERROR |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

