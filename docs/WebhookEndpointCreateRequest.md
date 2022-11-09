# OpenapiClient::WebhookEndpointCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The URL of the webhook endpoint. |  |
| **enabled_events** | [**Array&lt;EventType&gt;**](EventType.md) | The list of events to enable for this endpoint. |  |
| **description** | **String** | An optional description of what the webhook is used for. | [optional] |
| **status** | [**WebhookEndpointStatus**](WebhookEndpointStatus.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WebhookEndpointCreateRequest.new(
  url: https://httpbin.org/anything?tag&#x3D;api,
  enabled_events: null,
  description: My first webhook endpoint.,
  status: null
)
```

