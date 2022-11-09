# OpenapiClient::SMSApi

All URIs are relative to *https://api.ycloud.com/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**sms_list**](SMSApi.md#sms_list) | **GET** /sms | List SMS records |
| [**sms_send**](SMSApi.md#sms_send) | **POST** /sms | Send an SMS |


## sms_list

> <SmsPage> sms_list(opts)

List SMS records

Returns a paginated list of SMS messages you've previously sent.

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

api_instance = OpenapiClient::SMSApi.new
opts = {
    page: 56, # Integer | Page number of the results to be returned, 1-based.
    limit: 56, # Integer | A limit on the number of results to be returned, or number of results per page, between 1 and 100, defaults to 10.
    include_total: true, # Boolean | Return results inside an object that contains the total result count or not.
    filter_create_time_gte: Time.parse('2022-03-01T12:00Z'), # Time | Return results where the `createTime` field is greater than or equal to this value. Default: One day ago from now.
    filter_create_time_lte: Time.parse('2022-03-31T12:00Z'), # Time | Return results where the `createTime` field is less than or equal to this value.
    filter_id: 'filter_id_example', # String | Unique object ID on our side. Other filter parameters will be ignored if this parameter is present.
}

begin
  # List SMS records
  result = api_instance.sms_list(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SMSApi->sms_list: #{e}"
end
```

#### Using the sms_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SmsPage>, Integer, Hash)> sms_list_with_http_info(opts)

```ruby
begin
  # List SMS records
  data, status_code, headers = api_instance.sms_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SmsPage>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SMSApi->sms_list_with_http_info: #{e}"
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

[**SmsPage**](SmsPage.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## sms_send

> <Sms> sms_send(sms_send_request)

Send an SMS

Sends an outbound text message.

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

api_instance = OpenapiClient::SMSApi.new
sms_send_request = OpenapiClient::SmsSendRequest.new({to: '+447901614024', text: 'Your verification code is 123456.'}) # SmsSendRequest | SMS request that needs to be sent.

begin
  # Send an SMS
  result = api_instance.sms_send(sms_send_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling SMSApi->sms_send: #{e}"
end
```

#### Using the sms_send_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Sms>, Integer, Hash)> sms_send_with_http_info(sms_send_request)

```ruby
begin
  # Send an SMS
  data, status_code, headers = api_instance.sms_send_with_http_info(sms_send_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Sms>
rescue OpenapiClient::ApiError => e
  puts "Error when calling SMSApi->sms_send_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sms_send_request** | [**SmsSendRequest**](SmsSendRequest.md) | SMS request that needs to be sent. |  |

### Return type

[**Sms**](Sms.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

