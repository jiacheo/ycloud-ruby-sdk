# OpenapiClient::WhatsAppPhoneNumbersApi

All URIs are relative to *https://api.ycloud.com/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**whatsapp_phone_number_list**](WhatsAppPhoneNumbersApi.md#whatsapp_phone_number_list) | **GET** /whatsapp/phoneNumbers | List WhatsApp phone numbers |
| [**whatsapp_phone_number_retrieve**](WhatsAppPhoneNumbersApi.md#whatsapp_phone_number_retrieve) | **GET** /whatsapp/phoneNumbers/{wabaId}/{phoneNumber} | Retrieve a WhatsApp phone number |


## whatsapp_phone_number_list

> <WhatsappPhoneNumberPage> whatsapp_phone_number_list(opts)

List WhatsApp phone numbers

Returns a paginated list of WhatsApp business account phone numbers you've registered on YCloud.

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

api_instance = OpenapiClient::WhatsAppPhoneNumbersApi.new
opts = {
    page: 56, # Integer | Page number of the results to be returned, 1-based.
    limit: 56, # Integer | A limit on the number of results to be returned, or number of results per page, between 1 and 100, defaults to 10.
    include_total: true, # Boolean | Return results inside an object that contains the total result count or not.
    filter_waba_id: 'whatsapp-business-account-id', # String | WhatsApp Business Account ID.
}

begin
  # List WhatsApp phone numbers
  result = api_instance.whatsapp_phone_number_list(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->whatsapp_phone_number_list: #{e}"
end
```

#### Using the whatsapp_phone_number_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WhatsappPhoneNumberPage>, Integer, Hash)> whatsapp_phone_number_list_with_http_info(opts)

```ruby
begin
  # List WhatsApp phone numbers
  data, status_code, headers = api_instance.whatsapp_phone_number_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WhatsappPhoneNumberPage>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->whatsapp_phone_number_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number of the results to be returned, 1-based. | [optional][default to 1] |
| **limit** | **Integer** | A limit on the number of results to be returned, or number of results per page, between 1 and 100, defaults to 10. | [optional][default to 10] |
| **include_total** | **Boolean** | Return results inside an object that contains the total result count or not. | [optional][default to false] |
| **filter_waba_id** | **String** | WhatsApp Business Account ID. | [optional] |

### Return type

[**WhatsappPhoneNumberPage**](WhatsappPhoneNumberPage.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## whatsapp_phone_number_retrieve

> <WhatsappPhoneNumber> whatsapp_phone_number_retrieve(waba_id, phone_number)

Retrieve a WhatsApp phone number

Retrieves a WhatsApp business account phone number you've registered on YCloud.

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

api_instance = OpenapiClient::WhatsAppPhoneNumbersApi.new
waba_id = 'whatsapp-business-account-id' # String | WhatsApp Business Account ID.
phone_number = '+447901614024' # String | Phone number in [E.164](https://en.wikipedia.org/wiki/E.164) format.

begin
  # Retrieve a WhatsApp phone number
  result = api_instance.whatsapp_phone_number_retrieve(waba_id, phone_number)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->whatsapp_phone_number_retrieve: #{e}"
end
```

#### Using the whatsapp_phone_number_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WhatsappPhoneNumber>, Integer, Hash)> whatsapp_phone_number_retrieve_with_http_info(waba_id, phone_number)

```ruby
begin
  # Retrieve a WhatsApp phone number
  data, status_code, headers = api_instance.whatsapp_phone_number_retrieve_with_http_info(waba_id, phone_number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WhatsappPhoneNumber>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->whatsapp_phone_number_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **waba_id** | **String** | WhatsApp Business Account ID. |  |
| **phone_number** | **String** | Phone number in [E.164](https://en.wikipedia.org/wiki/E.164) format. |  |

### Return type

[**WhatsappPhoneNumber**](WhatsappPhoneNumber.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

