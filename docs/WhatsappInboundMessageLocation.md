# OpenapiClient::WhatsappInboundMessageLocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **latitude** | **Float** | Latitude of location being sent. | [optional] |
| **longitude** | **Float** | Longitude of location being sent. | [optional] |
| **address** | **String** | Address of the location. | [optional] |
| **name** | **String** | Name of the location. | [optional] |
| **url** | **String** | URL for the website where the user downloaded the location information. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WhatsappInboundMessageLocation.new(
  latitude: null,
  longitude: null,
  address: null,
  name: null,
  url: null
)
```

