# YCloudApiClient::Mailbox

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the mailbox. | [optional] |
| **address** | **String** | Address of the mailbox. | [optional] |

## Example

```ruby
require 'ycloud_api'

instance = YCloudApiClient::Mailbox.new(
  name: YCloud Team,
  address: team@example.com
)
```

