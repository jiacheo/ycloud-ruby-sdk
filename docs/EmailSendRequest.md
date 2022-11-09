# YCloudApiClient::EmailSendRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | - The sender&#39;s email. Its domain should be one that has been registered and activated in your YCloud account. - The test address provided by YCloud is &#x60;ycloud@ycloud-mail.com&#x60;, which only supports sending emails to your registered email address. - The sender&#39;s email address is required while the sender&#39;s name is optional. For example, both &#x60;ycloud@ycloud-mail.com&#x60; and &#x60;YCloud&lt;ycloud@ycloud-mail.com&gt;&#x60; work. |  |
| **to** | **String** | - The intended recipients&#39; email addresses. - Supports a comma-separated list of one or more addresses. Max items: 100. |  |
| **subject** | **String** | The email subject, which contains a short string identifying the topic of the message. Max length: 255. |  |
| **content** | **String** | - The email body. Max size: 150 KB. - Variables in the form of &#x60;#var_1#&#x60; are supported, they should be used together with the &#x60;variables&#x60; parameter. Variable keys only support letters, digits, and the underline character (&#x60;_&#x60;). - You can use the [Test Templates](https://help.ycloud.com/en/articles/6006545) provided by YCloud for testing. |  |
| **content_type** | [**EmailContentType**](EmailContentType.md) |  | [optional] |
| **variables** | **Array&lt;Hash&lt;String, String&gt;&gt;** | - The variable key-value pairs that will replace the variable placeholders in &#x60;content&#x60; for each recipient. Variable keys are those that are wrapped with &#x60;#&#x60; as placeholders (e.g., &#x60;#var_1#&#x60;) in &#x60;content&#x60;. The placeholders will be replaced by variable values when sending the email. - The size of the array must be the same as the number of recipients in &#x60;to&#x60;. Be aware that &#x60;cc&#x60; and &#x60;bcc&#x60; addresses are excluded, and they can not receive emails that contain variables. - This parameter&#39;s size will be calculated together with the parameter &#x60;content&#x60;. The whole size must not exceed 150 KB. | [optional] |
| **cc** | **String** | Recipients who will receive a copy of the email. | [optional] |
| **bcc** | **String** | Recipients who will receive a blind carbon copy of the email. | [optional] |
| **reply_to** | **String** | If this field exists, then the reply should go to the addresses indicated in that field and not to the address(es) indicated in the &#x60;from&#x60; field. | [optional] |
| **summary** | **String** | This is a summary of your email. Max length: 70. | [optional] |
| **external_id** | **String** | A unique string to reference the object. This can be an order number or similar, and can be used to reconcile the object with your internal systems. | [optional] |
| **callback_url** | **String** | Delivery report URL. You can provide a URL, and we will push the updated status report to your server in time. e.g., https://httpbin.org/anything?tag&#x3D;api. Note: We recommend configuring Webhook Endpoints instead. | [optional] |

## Example

```ruby
require 'ycloud_api'

instance = YCloudApiClient::EmailSendRequest.new(
  from: YCloud&lt;ycloud@ycloud-mail.com&gt;,
  to: to1@example.com,Nick&lt;to2@example.com&gt;,
  subject: null,
  content: This is a test message from #nick#.,
  content_type: null,
  variables: null,
  cc: cc1@example.com,Nick&lt;cc2@example.com&gt;,
  bcc: bcc1@example.com,Nick&lt;bcc2@example.com&gt;,
  reply_to: null,
  summary: This is a summary.,
  external_id: null,
  callback_url: https://httpbin.org/anything?tag&#x3D;api-email
)
```

