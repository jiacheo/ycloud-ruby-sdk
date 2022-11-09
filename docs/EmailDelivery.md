# OpenapiClient::EmailDelivery

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_id** | **String** | Unique ID for the related email you&#39;ve previously sent. |  |
| **recipient_address** | **String** | A recipient&#39;s email address. |  |
| **status** | **String** | Delivery status of the email to the specific recipient address. | [optional] |
| **error_code** | **String** | Error code when the email is undeliverable. | [optional] |
| **error_message** | **String** | Error message when the email is undeliverable. | [optional] |
| **external_id** | **String** | The &#x60;externalId&#x60; you specified when you sent the email. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::EmailDelivery.new(
  email_id: null,
  recipient_address: tom@example.com,
  status: failed,
  error_code: 402,
  error_message: Unsubscribes,
  external_id: null
)
```

