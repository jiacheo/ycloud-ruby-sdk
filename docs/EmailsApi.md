# YCloudApiClient::EmailsApi

All URIs are relative to *https://api.ycloud.com/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**email_send**](EmailsApi.md#email_send) | **POST** /emails | Send an email |


## email_send

> <Email> email_send(email_send_request)

Send an email

Sends an outbound email message.

### Examples

```ruby
require 'time'
require 'ycloud_api'
# setup authorization
YCloudApiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = YCloudApiClient::EmailsApi.new
email_send_request = YCloudApiClient::EmailSendRequest.new({from: 'YCloud<ycloud@ycloud-mail.com>', to: 'to1@example.com,Nick<to2@example.com>', subject: 'subject_example', content: 'This is a test message from #nick#.'}) # EmailSendRequest | 

begin
  # Send an email
  result = api_instance.email_send(email_send_request)
  p result
rescue YCloudApiClient::ApiError => e
  puts "Error when calling EmailsApi->email_send: #{e}"
end
```

#### Using the email_send_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Email>, Integer, Hash)> email_send_with_http_info(email_send_request)

```ruby
begin
  # Send an email
  data, status_code, headers = api_instance.email_send_with_http_info(email_send_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Email>
rescue YCloudApiClient::ApiError => e
  puts "Error when calling EmailsApi->email_send_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_send_request** | [**EmailSendRequest**](EmailSendRequest.md) |  |  |

### Return type

[**Email**](Email.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

