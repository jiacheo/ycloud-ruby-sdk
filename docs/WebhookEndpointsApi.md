# OpenapiClient::WebhookEndpointsApi

All URIs are relative to *https://api.ycloud.com/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**webhook_endpoint_create**](WebhookEndpointsApi.md#webhook_endpoint_create) | **POST** /webhookEndpoints | Create a webhook endpoint |
| [**webhook_endpoint_delete**](WebhookEndpointsApi.md#webhook_endpoint_delete) | **DELETE** /webhookEndpoints/{id} | Delete a webhook endpoint |
| [**webhook_endpoint_list**](WebhookEndpointsApi.md#webhook_endpoint_list) | **GET** /webhookEndpoints | List webhook endpoints |
| [**webhook_endpoint_retrieve**](WebhookEndpointsApi.md#webhook_endpoint_retrieve) | **GET** /webhookEndpoints/{id} | Retrieve a webhook endpoint |
| [**webhook_endpoint_rotate_secret**](WebhookEndpointsApi.md#webhook_endpoint_rotate_secret) | **POST** /webhookEndpoints/{id}/rotateSecret | Rotate a webhook endpoint secret |
| [**webhook_endpoint_update**](WebhookEndpointsApi.md#webhook_endpoint_update) | **PATCH** /webhookEndpoints/{id} | Update a webhook endpoint |


## webhook_endpoint_create

> <WebhookEndpoint> webhook_endpoint_create(webhook_endpoint_create_request)

Create a webhook endpoint

Creates a webhook endpoint listening the specified events.

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

api_instance = OpenapiClient::WebhookEndpointsApi.new
webhook_endpoint_create_request = OpenapiClient::WebhookEndpointCreateRequest.new({url: 'https://httpbin.org/anything?tag=api', enabled_events: [OpenapiClient::EventType::EMAIL_DELIVERY_UPDATED]}) # WebhookEndpointCreateRequest | 

begin
  # Create a webhook endpoint
  result = api_instance.webhook_endpoint_create(webhook_endpoint_create_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookEndpointsApi->webhook_endpoint_create: #{e}"
end
```

#### Using the webhook_endpoint_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookEndpoint>, Integer, Hash)> webhook_endpoint_create_with_http_info(webhook_endpoint_create_request)

```ruby
begin
  # Create a webhook endpoint
  data, status_code, headers = api_instance.webhook_endpoint_create_with_http_info(webhook_endpoint_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookEndpoint>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookEndpointsApi->webhook_endpoint_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_endpoint_create_request** | [**WebhookEndpointCreateRequest**](WebhookEndpointCreateRequest.md) |  |  |

### Return type

[**WebhookEndpoint**](WebhookEndpoint.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## webhook_endpoint_delete

> <WebhookEndpoint> webhook_endpoint_delete(id)

Delete a webhook endpoint

Deletes a webhook endpoint.

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

api_instance = OpenapiClient::WebhookEndpointsApi.new
id = 'wh627c8640675de8fc689ab9d9' # String | ID of the webhook endpoint.

begin
  # Delete a webhook endpoint
  result = api_instance.webhook_endpoint_delete(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookEndpointsApi->webhook_endpoint_delete: #{e}"
end
```

#### Using the webhook_endpoint_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookEndpoint>, Integer, Hash)> webhook_endpoint_delete_with_http_info(id)

```ruby
begin
  # Delete a webhook endpoint
  data, status_code, headers = api_instance.webhook_endpoint_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookEndpoint>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookEndpointsApi->webhook_endpoint_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the webhook endpoint. |  |

### Return type

[**WebhookEndpoint**](WebhookEndpoint.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## webhook_endpoint_list

> <WebhookEndpointPage> webhook_endpoint_list(opts)

List webhook endpoints

Returns a paginated list of webhook endpoints.

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

api_instance = OpenapiClient::WebhookEndpointsApi.new
opts = {
    page: 56, # Integer | Page number of the results to be returned, 1-based.
    limit: 56, # Integer | A limit on the number of results to be returned, or number of results per page, between 1 and 100, defaults to 10.
    include_total: true, # Boolean | Return results inside an object that contains the total result count or not.
}

begin
  # List webhook endpoints
  result = api_instance.webhook_endpoint_list(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookEndpointsApi->webhook_endpoint_list: #{e}"
end
```

#### Using the webhook_endpoint_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookEndpointPage>, Integer, Hash)> webhook_endpoint_list_with_http_info(opts)

```ruby
begin
  # List webhook endpoints
  data, status_code, headers = api_instance.webhook_endpoint_list_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookEndpointPage>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookEndpointsApi->webhook_endpoint_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | Page number of the results to be returned, 1-based. | [optional][default to 1] |
| **limit** | **Integer** | A limit on the number of results to be returned, or number of results per page, between 1 and 100, defaults to 10. | [optional][default to 10] |
| **include_total** | **Boolean** | Return results inside an object that contains the total result count or not. | [optional][default to false] |

### Return type

[**WebhookEndpointPage**](WebhookEndpointPage.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## webhook_endpoint_retrieve

> <WebhookEndpoint> webhook_endpoint_retrieve(id)

Retrieve a webhook endpoint

Retrieves the webhook endpoint with the given ID.

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

api_instance = OpenapiClient::WebhookEndpointsApi.new
id = 'wh627c8640675de8fc689ab9d9' # String | ID of the webhook endpoint.

begin
  # Retrieve a webhook endpoint
  result = api_instance.webhook_endpoint_retrieve(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookEndpointsApi->webhook_endpoint_retrieve: #{e}"
end
```

#### Using the webhook_endpoint_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookEndpoint>, Integer, Hash)> webhook_endpoint_retrieve_with_http_info(id)

```ruby
begin
  # Retrieve a webhook endpoint
  data, status_code, headers = api_instance.webhook_endpoint_retrieve_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookEndpoint>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookEndpointsApi->webhook_endpoint_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the webhook endpoint. |  |

### Return type

[**WebhookEndpoint**](WebhookEndpoint.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## webhook_endpoint_rotate_secret

> <WebhookEndpoint> webhook_endpoint_rotate_secret(id)

Rotate a webhook endpoint secret

Generates a new secret for a webhook endpoint.

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

api_instance = OpenapiClient::WebhookEndpointsApi.new
id = 'wh627c8640675de8fc689ab9d9' # String | ID of the webhook endpoint.

begin
  # Rotate a webhook endpoint secret
  result = api_instance.webhook_endpoint_rotate_secret(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookEndpointsApi->webhook_endpoint_rotate_secret: #{e}"
end
```

#### Using the webhook_endpoint_rotate_secret_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookEndpoint>, Integer, Hash)> webhook_endpoint_rotate_secret_with_http_info(id)

```ruby
begin
  # Rotate a webhook endpoint secret
  data, status_code, headers = api_instance.webhook_endpoint_rotate_secret_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookEndpoint>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookEndpointsApi->webhook_endpoint_rotate_secret_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the webhook endpoint. |  |

### Return type

[**WebhookEndpoint**](WebhookEndpoint.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## webhook_endpoint_update

> <WebhookEndpoint> webhook_endpoint_update(id, webhook_endpoint_update_request)

Update a webhook endpoint

Updates a webhook endpoint, such as url, events, status.

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

api_instance = OpenapiClient::WebhookEndpointsApi.new
id = 'wh627c8640675de8fc689ab9d9' # String | ID of the webhook endpoint.
webhook_endpoint_update_request = OpenapiClient::WebhookEndpointUpdateRequest.new # WebhookEndpointUpdateRequest | 

begin
  # Update a webhook endpoint
  result = api_instance.webhook_endpoint_update(id, webhook_endpoint_update_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookEndpointsApi->webhook_endpoint_update: #{e}"
end
```

#### Using the webhook_endpoint_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookEndpoint>, Integer, Hash)> webhook_endpoint_update_with_http_info(id, webhook_endpoint_update_request)

```ruby
begin
  # Update a webhook endpoint
  data, status_code, headers = api_instance.webhook_endpoint_update_with_http_info(id, webhook_endpoint_update_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookEndpoint>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhookEndpointsApi->webhook_endpoint_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the webhook endpoint. |  |
| **webhook_endpoint_update_request** | [**WebhookEndpointUpdateRequest**](WebhookEndpointUpdateRequest.md) |  |  |

### Return type

[**WebhookEndpoint**](WebhookEndpoint.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

