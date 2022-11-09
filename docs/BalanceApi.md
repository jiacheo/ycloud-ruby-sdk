# YCloudApiClient::BalanceApi

All URIs are relative to *https://api.ycloud.com/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**balance_retrieve**](BalanceApi.md#balance_retrieve) | **GET** /balance | Retrieve balance |


## balance_retrieve

> <Balance> balance_retrieve

Retrieve balance

Retrieves the current account balance.

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

api_instance = YCloudApiClient::BalanceApi.new

begin
  # Retrieve balance
  result = api_instance.balance_retrieve
  p result
rescue YCloudApiClient::ApiError => e
  puts "Error when calling BalanceApi->balance_retrieve: #{e}"
end
```

#### Using the balance_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Balance>, Integer, Hash)> balance_retrieve_with_http_info

```ruby
begin
  # Retrieve balance
  data, status_code, headers = api_instance.balance_retrieve_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Balance>
rescue YCloudApiClient::ApiError => e
  puts "Error when calling BalanceApi->balance_retrieve_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Balance**](Balance.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

