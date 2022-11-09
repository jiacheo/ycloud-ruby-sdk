=begin
#YCloud API

#The [YCloud](https://ycloud.com) API is organized around [REST](https://en.wikipedia.org/wiki/Representational_state_transfer). Our API is designed to have predictable, resource-oriented URLs, return [JSON](https://www.json.org) responses, and use standard HTTP response codes and verbs.

The version of the OpenAPI document: v2
Contact: service@ycloud.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'cgi'

module YCloudApiClient
  class WebhookEndpointsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a webhook endpoint
    # Creates a webhook endpoint listening the specified events.
    # @param webhook_endpoint_create_request [WebhookEndpointCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [WebhookEndpoint]
    def webhook_endpoint_create(webhook_endpoint_create_request, opts = {})
      data, _status_code, _headers = webhook_endpoint_create_with_http_info(webhook_endpoint_create_request, opts)
      data
    end

    # Create a webhook endpoint
    # Creates a webhook endpoint listening the specified events.
    # @param webhook_endpoint_create_request [WebhookEndpointCreateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookEndpoint, Integer, Hash)>] WebhookEndpoint data, response status code and response headers
    def webhook_endpoint_create_with_http_info(webhook_endpoint_create_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookEndpointsApi.webhook_endpoint_create ...'
      end
      # verify the required parameter 'webhook_endpoint_create_request' is set
      if @api_client.config.client_side_validation && webhook_endpoint_create_request.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_endpoint_create_request' when calling WebhookEndpointsApi.webhook_endpoint_create"
      end
      # resource path
      local_var_path = '/webhookEndpoints'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(webhook_endpoint_create_request)

      # return_type
      return_type = opts[:debug_return_type] || 'WebhookEndpoint'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"WebhookEndpointsApi.webhook_endpoint_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookEndpointsApi#webhook_endpoint_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a webhook endpoint
    # Deletes a webhook endpoint.
    # @param id [String] ID of the webhook endpoint.
    # @param [Hash] opts the optional parameters
    # @return [WebhookEndpoint]
    def webhook_endpoint_delete(id, opts = {})
      data, _status_code, _headers = webhook_endpoint_delete_with_http_info(id, opts)
      data
    end

    # Delete a webhook endpoint
    # Deletes a webhook endpoint.
    # @param id [String] ID of the webhook endpoint.
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookEndpoint, Integer, Hash)>] WebhookEndpoint data, response status code and response headers
    def webhook_endpoint_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookEndpointsApi.webhook_endpoint_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhookEndpointsApi.webhook_endpoint_delete"
      end
      # resource path
      local_var_path = '/webhookEndpoints/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WebhookEndpoint'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"WebhookEndpointsApi.webhook_endpoint_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookEndpointsApi#webhook_endpoint_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List webhook endpoints
    # Returns a paginated list of webhook endpoints.
    # @param [Hash] opts the parameters
    # @option opts [Integer] :page Page number of the results to be returned, 1-based. (default to 1)
    # @option opts [Integer] :limit A limit on the number of results to be returned, or number of results per page, between 1 and 100, defaults to 10. (default to 10)
    # @option opts [Boolean] :include_total Return results inside an object that contains the total result count or not. (default to false)
    # @return [WebhookEndpointPage]
    def webhook_endpoint_list(opts = {})
      data, _status_code, _headers = webhook_endpoint_list_with_http_info(opts)
      data
    end

    # List webhook endpoints
    # Returns a paginated list of webhook endpoints.
    # @param [Hash] opts the parameters
    # @option opts [Integer] :page Page number of the results to be returned, 1-based. (default to 1)
    # @option opts [Integer] :limit A limit on the number of results to be returned, or number of results per page, between 1 and 100, defaults to 10. (default to 10)
    # @option opts [Boolean] :include_total Return results inside an object that contains the total result count or not. (default to false)
    # @return [Array<(WebhookEndpointPage, Integer, Hash)>] WebhookEndpointPage data, response status code and response headers
    def webhook_endpoint_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookEndpointsApi.webhook_endpoint_list ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling WebhookEndpointsApi.webhook_endpoint_list, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling WebhookEndpointsApi.webhook_endpoint_list, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling WebhookEndpointsApi.webhook_endpoint_list, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling WebhookEndpointsApi.webhook_endpoint_list, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/webhookEndpoints'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'includeTotal'] = opts[:'include_total'] if !opts[:'include_total'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WebhookEndpointPage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"WebhookEndpointsApi.webhook_endpoint_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookEndpointsApi#webhook_endpoint_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a webhook endpoint
    # Retrieves the webhook endpoint with the given ID.
    # @param id [String] ID of the webhook endpoint.
    # @param [Hash] opts the optional parameters
    # @return [WebhookEndpoint]
    def webhook_endpoint_retrieve(id, opts = {})
      data, _status_code, _headers = webhook_endpoint_retrieve_with_http_info(id, opts)
      data
    end

    # Retrieve a webhook endpoint
    # Retrieves the webhook endpoint with the given ID.
    # @param id [String] ID of the webhook endpoint.
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookEndpoint, Integer, Hash)>] WebhookEndpoint data, response status code and response headers
    def webhook_endpoint_retrieve_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookEndpointsApi.webhook_endpoint_retrieve ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhookEndpointsApi.webhook_endpoint_retrieve"
      end
      # resource path
      local_var_path = '/webhookEndpoints/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WebhookEndpoint'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"WebhookEndpointsApi.webhook_endpoint_retrieve",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookEndpointsApi#webhook_endpoint_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Rotate a webhook endpoint secret
    # Generates a new secret for a webhook endpoint.
    # @param id [String] ID of the webhook endpoint.
    # @param [Hash] opts the optional parameters
    # @return [WebhookEndpoint]
    def webhook_endpoint_rotate_secret(id, opts = {})
      data, _status_code, _headers = webhook_endpoint_rotate_secret_with_http_info(id, opts)
      data
    end

    # Rotate a webhook endpoint secret
    # Generates a new secret for a webhook endpoint.
    # @param id [String] ID of the webhook endpoint.
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookEndpoint, Integer, Hash)>] WebhookEndpoint data, response status code and response headers
    def webhook_endpoint_rotate_secret_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookEndpointsApi.webhook_endpoint_rotate_secret ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhookEndpointsApi.webhook_endpoint_rotate_secret"
      end
      # resource path
      local_var_path = '/webhookEndpoints/{id}/rotateSecret'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WebhookEndpoint'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"WebhookEndpointsApi.webhook_endpoint_rotate_secret",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookEndpointsApi#webhook_endpoint_rotate_secret\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a webhook endpoint
    # Updates a webhook endpoint, such as url, events, status.
    # @param id [String] ID of the webhook endpoint.
    # @param webhook_endpoint_update_request [WebhookEndpointUpdateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [WebhookEndpoint]
    def webhook_endpoint_update(id, webhook_endpoint_update_request, opts = {})
      data, _status_code, _headers = webhook_endpoint_update_with_http_info(id, webhook_endpoint_update_request, opts)
      data
    end

    # Update a webhook endpoint
    # Updates a webhook endpoint, such as url, events, status.
    # @param id [String] ID of the webhook endpoint.
    # @param webhook_endpoint_update_request [WebhookEndpointUpdateRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookEndpoint, Integer, Hash)>] WebhookEndpoint data, response status code and response headers
    def webhook_endpoint_update_with_http_info(id, webhook_endpoint_update_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhookEndpointsApi.webhook_endpoint_update ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhookEndpointsApi.webhook_endpoint_update"
      end
      # verify the required parameter 'webhook_endpoint_update_request' is set
      if @api_client.config.client_side_validation && webhook_endpoint_update_request.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_endpoint_update_request' when calling WebhookEndpointsApi.webhook_endpoint_update"
      end
      # resource path
      local_var_path = '/webhookEndpoints/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(webhook_endpoint_update_request)

      # return_type
      return_type = opts[:debug_return_type] || 'WebhookEndpoint'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"WebhookEndpointsApi.webhook_endpoint_update",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhookEndpointsApi#webhook_endpoint_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
