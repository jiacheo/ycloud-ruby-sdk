# YCloudApiClient::WhatsappMessageTemplateComponentsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Describes the component type. One of &#x60;header&#x60;, &#x60;body&#x60;, &#x60;button&#x60;. For text-based templates, we only support the type&#x3D;body. |  |
| **sub_type** | **String** | Type of button to create. &#x60;quick_reply&#x60;: Refers to a previously created quick reply button that allows for the customer to return a predefined message. &#x60;url&#x60;: Refers to a previously created button that allows the customer to visit the URL generated by appending the text parameter to the predefined prefix URL in the template. | [optional] |
| **index** | **Integer** | Required when &#x60;type&#x60; &#x3D; &#x60;button&#x60;. Not used for the other types. Position index of the button. You can have up to 3 buttons using index values of 0 to 2. | [optional] |
| **parameters** | [**Array&lt;WhatsappMessageTemplateComponentsInnerParametersInner&gt;**](WhatsappMessageTemplateComponentsInnerParametersInner.md) | Required when &#x60;type&#x60; &#x3D; &#x60;button&#x60;. Array of parameter objects with the content of the message. For components of &#x60;type&#x60; &#x3D; &#x60;button&#x60;, see the [button parameter object](https://developers.facebook.com/docs/whatsapp/cloud-api/reference/messages#button-parameter-object). | [optional] |

## Example

```ruby
require 'ycloud_api'

instance = YCloudApiClient::WhatsappMessageTemplateComponentsInner.new(
  type: null,
  sub_type: null,
  index: null,
  parameters: null
)
```

