# OpenapiClient::WhatsappMessageLocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **latitude** | **Float** | Latitude of the location. |  |
| **longitude** | **Float** | Longitude of the location. |  |
| **name** | **String** | Name of the location. | [optional] |
| **address** | **String** | Address of the location. Only displayed if &#x60;name&#x60; is present. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WhatsappMessageLocation.new(
  latitude: null,
  longitude: null,
  name: null,
  address: null
)
```

