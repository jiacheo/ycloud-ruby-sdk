# YCloudApiClient::WhatsappMessageLocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **latitude** | **Float** | Latitude of the location. |  |
| **longitude** | **Float** | Longitude of the location. |  |
| **name** | **String** | Name of the location. | [optional] |
| **address** | **String** | Address of the location. Only displayed if &#x60;name&#x60; is present. | [optional] |

## Example

```ruby
require 'ycloud_api'

instance = YCloudApiClient::WhatsappMessageLocation.new(
  latitude: null,
  longitude: null,
  name: null,
  address: null
)
```

