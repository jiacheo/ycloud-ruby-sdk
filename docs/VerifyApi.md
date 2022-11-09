# YCloudApiClient::VerifyApi

All URIs are relative to *https://api.ycloud.com/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**verification_check**](VerifyApi.md#verification_check) | **POST** /verify/verificationChecks | Check a verification |
| [**verification_send**](VerifyApi.md#verification_send) | **POST** /verify/verifications | Start a verification |


## verification_check

> <VerificationCheck> verification_check(verification_check_request)

Check a verification

Checks a verification with a phone number, an email address, or a verification ID. A `pending` verification status changes to `approved` once you receive a response with the `valid` parameter is `true`. An approved verification cannot be checked anymore.

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

api_instance = YCloudApiClient::VerifyApi.new
verification_check_request = YCloudApiClient::VerificationCheckRequest.new # VerificationCheckRequest | 

begin
  # Check a verification
  result = api_instance.verification_check(verification_check_request)
  p result
rescue YCloudApiClient::ApiError => e
  puts "Error when calling VerifyApi->verification_check: #{e}"
end
```

#### Using the verification_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VerificationCheck>, Integer, Hash)> verification_check_with_http_info(verification_check_request)

```ruby
begin
  # Check a verification
  data, status_code, headers = api_instance.verification_check_with_http_info(verification_check_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VerificationCheck>
rescue YCloudApiClient::ApiError => e
  puts "Error when calling VerifyApi->verification_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **verification_check_request** | [**VerificationCheckRequest**](VerificationCheckRequest.md) |  |  |

### Return type

[**VerificationCheck**](VerificationCheck.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## verification_send

> <Verification> verification_send(verification_send_request)

Start a verification

Starts a verification by sending an SMS, voice, or email message to the recipient. This verification is charged once the message is sent successfully.

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

api_instance = YCloudApiClient::VerifyApi.new
verification_send_request = YCloudApiClient::VerificationSendRequest.new({channel: YCloudApiClient::VerificationChannel::SMS, to: '+447901614024'}) # VerificationSendRequest | Verification request that needs to be sent.

begin
  # Start a verification
  result = api_instance.verification_send(verification_send_request)
  p result
rescue YCloudApiClient::ApiError => e
  puts "Error when calling VerifyApi->verification_send: #{e}"
end
```

#### Using the verification_send_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Verification>, Integer, Hash)> verification_send_with_http_info(verification_send_request)

```ruby
begin
  # Start a verification
  data, status_code, headers = api_instance.verification_send_with_http_info(verification_send_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Verification>
rescue YCloudApiClient::ApiError => e
  puts "Error when calling VerifyApi->verification_send_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **verification_send_request** | [**VerificationSendRequest**](VerificationSendRequest.md) | Verification request that needs to be sent. |  |

### Return type

[**Verification**](Verification.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

