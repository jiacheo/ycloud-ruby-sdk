# YCloudApiClient::WebhookEndpoint

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID for the object. |  |
| **url** | **String** | The URL of the webhook endpoint. | [optional] |
| **enabled_events** | **Array&lt;String&gt;** | The list of events to enable for this endpoint. | [optional] |
| **description** | **String** | An optional description of what the webhook is used for. | [optional] |
| **status** | [**WebhookEndpointStatus**](WebhookEndpointStatus.md) |  | [optional] |
| **secret** | **String** | The endpoint&#39;s secret, used to generate webhook signatures. | [optional] |
| **create_time** | **Time** | The time at which this object was created, formatted in [RFC 3339](https://datatracker.ietf.org/doc/html/rfc3339). e.g., &#x60;2022-06-01T12:00:00.000Z&#x60;. | [optional] |
| **update_time** | **Time** | The time at which this object was updated, formatted in [RFC 3339](https://datatracker.ietf.org/doc/html/rfc3339). e.g., &#x60;2022-06-01T12:00:00.000Z&#x60;. | [optional] |

## Example

```ruby
require 'ycloud_api'

instance = YCloudApiClient::WebhookEndpoint.new(
  id: wh627c8640675de8fc689ab9d9,
  url: https://httpbin.org/anything?tag&#x3D;api,
  enabled_events: [&quot;email.delivery.updated&quot;,&quot;sms.message.updated&quot;,&quot;voice.message.updated&quot;],
  description: My first webhook endpoint.,
  status: null,
  secret: whsec_abc4147651944f02baf3be1eb45d33f1,
  create_time: 2022-06-01T12:00Z,
  update_time: 2022-06-01T12:00Z
)
```

