# OpenapiClient::WhatsAppTemplatesApi

All URIs are relative to *https://api.ycloud.com/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**whatsapp_template_create**](WhatsAppTemplatesApi.md#whatsapp_template_create) | **POST** /whatsapp/templates | Create a WhatsApp template |
| [**whatsapp_template_delete_by_name**](WhatsAppTemplatesApi.md#whatsapp_template_delete_by_name) | **DELETE** /whatsapp/templates/{wabaId}/{name} | Delete WhatsApp templates by name |
| [**whatsapp_template_list**](WhatsAppTemplatesApi.md#whatsapp_template_list) | **GET** /whatsapp/templates | List WhatsApp templates |
| [**whatsapp_template_retrieve_by_name_and_language**](WhatsAppTemplatesApi.md#whatsapp_template_retrieve_by_name_and_language) | **GET** /whatsapp/templates/{wabaId}/{name}/{language} | Retrieve a WhatsApp template |


## whatsapp_template_create

> <WhatsappTemplate> whatsapp_template_create(whatsapp_template_create_request)

Create a WhatsApp template

Creates a WhatsApp template. See also [Create Message Templates](https://developers.facebook.com/docs/whatsapp/business-management-api/message-templates/#create-message-templates).

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

api_instance = OpenapiClient::WhatsAppTemplatesApi.new
whatsapp_template_create_request = OpenapiClient::WhatsappTemplateCreateRequest.new({waba_id: 'whatsapp-business-account-id', name: 'sample_whatsapp_template', language: 'en', category: OpenapiClient::WhatsappTemplateCategory::TRANSACTIONAL, components: [OpenapiClient::WhatsappTemplateComponent.new]}) # WhatsappTemplateCreateRequest | 

begin
  # Create a WhatsApp template
  result = api_instance.whatsapp_template_create(whatsapp_template_create_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WhatsAppTemplatesApi->whatsapp_template_create: #{e}"
end
```

#### Using the whatsapp_template_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WhatsappTemplate>, Integer, Hash)> whatsapp_template_create_with_http_info(whatsapp_template_create_request)

```ruby
begin
  # Create a WhatsApp template
  data, status_code, headers = api_instance.whatsapp_template_create_with_http_info(whatsapp_template_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WhatsappTemplate>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WhatsAppTemplatesApi->whatsapp_template_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **whatsapp_template_create_request** | [**WhatsappTemplateCreateRequest**](WhatsappTemplateCreateRequest.md) |  |  |

### Return type

[**WhatsappTemplate**](WhatsappTemplate.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## whatsapp_template_delete_by_name

> <Array<WhatsappTemplate>> whatsapp_template_delete_by_name(waba_id, name)

Delete WhatsApp templates by name

Deletes WhatsApp templates by name. If that template name exists in multiple languages, all languages will be deleted. HTTP status `404` is returned if no templates are found for the specific name.

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

api_instance = OpenapiClient::WhatsAppTemplatesApi.new
waba_id = 'whatsapp-business-account-id' # String | WhatsApp Business Account ID.
name = 'sample_whatsapp_template' # String | Name of the template.

begin
  # Delete WhatsApp templates by name
  result = api_instance.whatsapp_template_delete_by_name(waba_id, name)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WhatsAppTemplatesApi->whatsapp_template_delete_by_name: #{e}"
end
```

#### Using the whatsapp_template_delete_by_name_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<WhatsappTemplate>>, Integer, Hash)> whatsapp_template_delete_by_name_with_http_info(waba_id, name)

```ruby
begin
  # Delete WhatsApp templates by name
  data, status_code, headers = api_instance.whatsapp_template_delete_by_name_with_http_info(waba_id, name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<WhatsappTemplate>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WhatsAppTemplatesApi->whatsapp_template_delete_by_name_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **waba_id** | **String** | WhatsApp Business Account ID. |  |
| **name** | **String** | Name of the template. |  |

### Return type

[**Array&lt;WhatsappTemplate&gt;**](WhatsappTemplate.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## whatsapp_template_list

> <WhatsappTemplatePage> whatsapp_template_list(opts)

List WhatsApp templates

Returns a paginated list of WhatsApp templates you've previously created.

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

api_instance = OpenapiClient::WhatsAppTemplatesApi.new
opts = {
    page: 56, # Integer | Page number of the results to be returned, 1-based.
    limit: 56, # Integer | A limit on the number of results to be returned, or number of results per page, between 1 and 100, defaults to 10.
    include_total: true, # Boolean | Return results inside an object that contains the total result count or not.
    filter_waba_id: 'whatsapp-business-account-id', # String | WhatsApp Business Account ID.
    filter_name: 'sample_whatsapp_template', # String | Name of the template.
    filter_language: 'en', # String | Language of the template.
}

begin
  # List WhatsApp templates
  result = api_instance.whatsapp_template_list(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WhatsAppTemplatesApi->whatsapp_template_list: #{e}"
end
```

#### Using the whatsapp_template_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WhatsappTemplatePage>, Integer, Hash)> whatsapp_template_list_with_http_info(opts)

```ruby
begin
  # List WhatsApp templates
  data, status_code, headers = api_instance.whatsapp_template_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WhatsappTemplatePage>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WhatsAppTemplatesApi->whatsapp_template_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number of the results to be returned, 1-based. | [optional][default to 1] |
| **limit** | **Integer** | A limit on the number of results to be returned, or number of results per page, between 1 and 100, defaults to 10. | [optional][default to 10] |
| **include_total** | **Boolean** | Return results inside an object that contains the total result count or not. | [optional][default to false] |
| **filter_waba_id** | **String** | WhatsApp Business Account ID. | [optional] |
| **filter_name** | **String** | Name of the template. | [optional] |
| **filter_language** | **String** | Language of the template. | [optional] |

### Return type

[**WhatsappTemplatePage**](WhatsappTemplatePage.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## whatsapp_template_retrieve_by_name_and_language

> <WhatsappTemplate> whatsapp_template_retrieve_by_name_and_language(waba_id, name, language)

Retrieve a WhatsApp template

Retrieves a WhatsApp template by name and language.

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

api_instance = OpenapiClient::WhatsAppTemplatesApi.new
waba_id = 'whatsapp-business-account-id' # String | WhatsApp Business Account ID.
name = 'sample_whatsapp_template' # String | Name of the template.
language = 'en' # String | Language code of the template. See [Supported Languages](https://developers.facebook.com/docs/whatsapp/api/messages/message-templates#supported-languages-) for all codes.

begin
  # Retrieve a WhatsApp template
  result = api_instance.whatsapp_template_retrieve_by_name_and_language(waba_id, name, language)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WhatsAppTemplatesApi->whatsapp_template_retrieve_by_name_and_language: #{e}"
end
```

#### Using the whatsapp_template_retrieve_by_name_and_language_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WhatsappTemplate>, Integer, Hash)> whatsapp_template_retrieve_by_name_and_language_with_http_info(waba_id, name, language)

```ruby
begin
  # Retrieve a WhatsApp template
  data, status_code, headers = api_instance.whatsapp_template_retrieve_by_name_and_language_with_http_info(waba_id, name, language)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WhatsappTemplate>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WhatsAppTemplatesApi->whatsapp_template_retrieve_by_name_and_language_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **waba_id** | **String** | WhatsApp Business Account ID. |  |
| **name** | **String** | Name of the template. |  |
| **language** | **String** | Language code of the template. See [Supported Languages](https://developers.facebook.com/docs/whatsapp/api/messages/message-templates#supported-languages-) for all codes. |  |

### Return type

[**WhatsappTemplate**](WhatsappTemplate.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

