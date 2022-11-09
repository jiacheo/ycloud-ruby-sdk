# YCloudApiClient::WhatsappMessageInteractiveActionSectionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Title of the section. | [optional] |
| **rows** | [**Array&lt;WhatsappMessageInteractiveActionSectionsInnerRowsInner&gt;**](WhatsappMessageInteractiveActionSectionsInnerRowsInner.md) | Contains a list of rows. You can have a total of 10 rows across your sections. Each row must have a title (Maximum length: 24 characters) and an ID (Maximum length: 200 characters). You can add a description (Maximum length: 72 characters), but it is optional. | [optional] |

## Example

```ruby
require 'ycloud_api'

instance = YCloudApiClient::WhatsappMessageInteractiveActionSectionsInner.new(
  title: null,
  rows: null
)
```

