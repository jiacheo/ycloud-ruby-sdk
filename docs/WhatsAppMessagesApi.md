# OpenapiClient::WhatsAppMessagesApi

All URIs are relative to *https://api.ycloud.com/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**whatsapp_message_retrieve**](WhatsAppMessagesApi.md#whatsapp_message_retrieve) | **GET** /whatsapp/messages/{id} | Retrieve a WhatsApp message |
| [**whatsapp_message_send**](WhatsAppMessagesApi.md#whatsapp_message_send) | **POST** /whatsapp/messages | Send a WhatsApp message |


## whatsapp_message_retrieve

> <WhatsappMessage> whatsapp_message_retrieve(id)

Retrieve a WhatsApp message

Retrieves a WhatsApp message you've previously sent.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::WhatsAppMessagesApi.new
id = '627c8640675de8fc689ab9d9' # String | ID of the object.

begin
  # Retrieve a WhatsApp message
  result = api_instance.whatsapp_message_retrieve(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WhatsAppMessagesApi->whatsapp_message_retrieve: #{e}"
end
```

#### Using the whatsapp_message_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WhatsappMessage>, Integer, Hash)> whatsapp_message_retrieve_with_http_info(id)

```ruby
begin
  # Retrieve a WhatsApp message
  data, status_code, headers = api_instance.whatsapp_message_retrieve_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WhatsappMessage>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WhatsAppMessagesApi->whatsapp_message_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the object. |  |

### Return type

[**WhatsappMessage**](WhatsappMessage.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## whatsapp_message_send

> <WhatsappMessage> whatsapp_message_send(whatsapp_message_send_request)

Send a WhatsApp message

Sends an outbound WhatsApp message.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::WhatsAppMessagesApi.new
whatsapp_message_send_request = OpenapiClient::WhatsappMessageSendRequest.new({from: '+447901614024', to: '+447901614024', type: OpenapiClient::WhatsappMessageType::TEMPLATE}) # WhatsappMessageSendRequest | 

begin
  # Send a WhatsApp message
  result = api_instance.whatsapp_message_send(whatsapp_message_send_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WhatsAppMessagesApi->whatsapp_message_send: #{e}"
end
```

#### Using the whatsapp_message_send_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WhatsappMessage>, Integer, Hash)> whatsapp_message_send_with_http_info(whatsapp_message_send_request)

```ruby
begin
  # Send a WhatsApp message
  data, status_code, headers = api_instance.whatsapp_message_send_with_http_info(whatsapp_message_send_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WhatsappMessage>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WhatsAppMessagesApi->whatsapp_message_send_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **whatsapp_message_send_request** | [**WhatsappMessageSendRequest**](WhatsappMessageSendRequest.md) |  |  |

### Return type

[**WhatsappMessage**](WhatsappMessage.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

