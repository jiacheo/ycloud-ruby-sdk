# YCloudApiClient::Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **Integer** | HTTP status code, [RFC 7231, Section 6](https://datatracker.ietf.org/doc/html/rfc7231#section-6). |  |
| **code** | **String** | One of a server-defined set of error codes, which could be handled programmatically. |  |
| **message** | **String** | A human-readable representation of the error. It is intended as an aid to developers and is not suitable for exposure to end users. | [optional] |
| **target** | **String** | The target of the error. | [optional] |
| **doc_url** | **String** | A URL to more information about the error. | [optional] |

## Example

```ruby
require 'ycloud_api'

instance = YCloudApiClient::Error.new(
  status: 404,
  code: NOT_FOUND,
  message: The requested resource does not exist.,
  target: ,
  doc_url: 
)
```

