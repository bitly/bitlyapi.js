# Bitly API TypeScript Client

This package exposes a generated TypeScript client for the Bitly API. 

## Installation

```sh
npm install @bitly/api-client
```

## Usage

```ts
import { BitlinksApi, QRCodesApi } from '@bitly/api-client';

const bitlinksApi = new BitlinksApi({ accessToken: 'BITLY_ACCESS_TOKEN' });
const link = await bitlinksApi.createBitlink({
    shorten: {
        long_url: "https://your-long-url.com/",
        domain: "bit.ly",
        // group_guid: ...
    }
});

const qrcodesApi = new QRCodesApi({ accessToken: 'BITLY_ACCESS_TOKEN' })
const qr = await qrcodesApi.createQRCodePublic({
    public_create_qr_code_request: {
        group_guid: "GROUP_GUID",
        destination: {
            // bitlink_idstring: link.id
            long_url: "https://your-long-url.com/"
        }
    }
})
const qrImg = await qrcodesApi.getQRCodeImagePublic({
    qrcode_id: qr.id,
    accept: 'image/png'
})
```

Refer to the official documentation for authentication requirements, available endpoints, and request/response schemas.

- Bitly API Docs: https://docs.bitly.com/
- API Reference (v4): https://dev.bitly.com/api-reference

