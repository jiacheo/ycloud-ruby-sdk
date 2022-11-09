# YCloudApiClient::WhatsappInboundMessageLocation

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
require 'ycloud_api'

instance = YCloudApiClient::WhatsappInboundMessageLocation.new(
  latitude: null,
  longitude: null,
  address: null,
  name: null,
  url: null
)
```

