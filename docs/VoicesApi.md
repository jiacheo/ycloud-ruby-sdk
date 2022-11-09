# OpenapiClient::VoicesApi

All URIs are relative to *https://api.ycloud.com/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**voice_list**](VoicesApi.md#voice_list) | **GET** /voices | List voice records |
| [**voice_send**](VoicesApi.md#voice_send) | **POST** /voices | Send a voice code |


## voice_list

> <VoicePage> voice_list(opts)

List voice records

Returns a paginated list of voice calls you've previously sent.

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

api_instance = OpenapiClient::VoicesApi.new
opts = {
    page: 56, # Integer | Page number of the results to be returned, 1-based.
    limit: 56, # Integer | A limit on the number of results to be returned, or number of results per page, between 1 and 100, defaults to 10.
    include_total: true, # Boolean | Return results inside an object that contains the total result count or not.
    filter_create_time_gte: Time.parse('2022-03-01T12:00Z'), # Time | Return results where the `createTime` field is greater than or equal to this value. Default: One day ago from now.
    filter_create_time_lte: Time.parse('2022-03-31T12:00Z'), # Time | Return results where the `createTime` field is less than or equal to this value.
    filter_id: 'filter_id_example', # String | Unique object ID on our side. Other filter parameters will be ignored if this parameter is present.
}

begin
  # List voice records
  result = api_instance.voice_list(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoicesApi->voice_list: #{e}"
end
```

#### Using the voice_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VoicePage>, Integer, Hash)> voice_list_with_http_info(opts)

```ruby
begin
  # List voice records
  data, status_code, headers = api_instance.voice_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VoicePage>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoicesApi->voice_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number of the results to be returned, 1-based. | [optional][default to 1] |
| **limit** | **Integer** | A limit on the number of results to be returned, or number of results per page, between 1 and 100, defaults to 10. | [optional][default to 10] |
| **include_total** | **Boolean** | Return results inside an object that contains the total result count or not. | [optional][default to false] |
| **filter_create_time_gte** | **Time** | Return results where the &#x60;createTime&#x60; field is greater than or equal to this value. Default: One day ago from now. | [optional] |
| **filter_create_time_lte** | **Time** | Return results where the &#x60;createTime&#x60; field is less than or equal to this value. | [optional] |
| **filter_id** | **String** | Unique object ID on our side. Other filter parameters will be ignored if this parameter is present. | [optional] |

### Return type

[**VoicePage**](VoicePage.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## voice_send

> <Voice> voice_send(voice_send_request)

Send a voice code

Sends an outbound voice call verification code.

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

api_instance = OpenapiClient::VoicesApi.new
voice_send_request = OpenapiClient::VoiceSendRequest.new({to: '+447901614024', verification_code: '123456'}) # VoiceSendRequest | Voice call request that needs to be sent.

begin
  # Send a voice code
  result = api_instance.voice_send(voice_send_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoicesApi->voice_send: #{e}"
end
```

#### Using the voice_send_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Voice>, Integer, Hash)> voice_send_with_http_info(voice_send_request)

```ruby
begin
  # Send a voice code
  data, status_code, headers = api_instance.voice_send_with_http_info(voice_send_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Voice>
rescue OpenapiClient::ApiError => e
  puts "Error when calling VoicesApi->voice_send_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voice_send_request** | [**VoiceSendRequest**](VoiceSendRequest.md) | Voice call request that needs to be sent. |  |

### Return type

[**Voice**](Voice.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

