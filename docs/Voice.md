# OpenapiClient::Voice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID for the object. |  |
| **to** | **String** | The recipient&#39;s phone number in [E.164](https://en.wikipedia.org/wiki/E.164) format. |  |
| **verification_code** | **String** | The verification code to be sent, 4 to 6 digits. | [optional] |
| **language** | **String** | [ISO 639 Language Code](https://www.iso.org/iso-639-language-codes.html). | [optional] |
| **region_code** | **String** | [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2). | [optional] |
| **total_segments** | **Integer** | Number of message segments. It&#39;s always 1 for voice calls. | [optional] |
| **total_price** | **Float** | Total price of this message. | [optional] |
| **currency** | **String** | [ISO 4217 currency code](https://en.wikipedia.org/wiki/ISO_4217) | [optional] |
| **status** | **String** | Delivery status. One of &#x60;accepted&#x60;, &#x60;sent&#x60;, &#x60;delivered&#x60;, &#x60;undelivered&#x60;. | [optional] |
| **error_code** | **String** | Error code when the message is undeliverable. | [optional] |
| **create_time** | **Time** | The time at which this message was created, formatted in [RFC 3339](https://datatracker.ietf.org/doc/html/rfc3339). e.g., &#x60;2022-03-01T12:00:00.000Z&#x60;. | [optional] |
| **update_time** | **Time** | The time at which the delivery report for this message was updated, formatted in [RFC 3339](https://datatracker.ietf.org/doc/html/rfc3339). e.g., &#x60;2022-03-01T12:00:00.000Z&#x60;. | [optional] |
| **external_id** | **String** | A unique string to reference the object. This can be an order number or similar, and can be used to reconcile the object with your internal systems. | [optional] |
| **callback_url** | **String** | Delivery report URL. You can provide a URL, and we will push the updated status report to your server in time. e.g., https://httpbin.org/anything?tag&#x3D;api. Note: We recommend configuring Webhook Endpoints instead. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Voice.new(
  id: null,
  to: +447901614024,
  verification_code: 123456,
  language: en,
  region_code: GB,
  total_segments: 1,
  total_price: 0.05,
  currency: USD,
  status: sent,
  error_code: null,
  create_time: 2022-03-01T12:00Z,
  update_time: 2022-03-01T12:00Z,
  external_id: null,
  callback_url: https://httpbin.org/anything?tag&#x3D;api-voice
)
```

