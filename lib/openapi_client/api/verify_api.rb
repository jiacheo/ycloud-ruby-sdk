=begin
#YCloud API

#The [YCloud](https://ycloud.com) API is organized around [REST](https://en.wikipedia.org/wiki/Representational_state_transfer). Our API is designed to have predictable, resource-oriented URLs, return [JSON](https://www.json.org) responses, and use standard HTTP response codes and verbs.

The version of the OpenAPI document: v2
Contact: service@ycloud.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module OpenapiClient
  class VerifyApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Check a verification
    # Checks a verification with a phone number, an email address, or a verification ID. A `pending` verification status changes to `approved` once you receive a response with the `valid` parameter is `true`. An approved verification cannot be checked anymore.
    # @param verification_check_request [VerificationCheckRequest] 
    # @param [Hash] opts the optional parameters
    # @return [VerificationCheck]
    def verification_check(verification_check_request, opts = {})
      data, _status_code, _headers = verification_check_with_http_info(verification_check_request, opts)
      data
    end

    # Check a verification
    # Checks a verification with a phone number, an email address, or a verification ID. A &#x60;pending&#x60; verification status changes to &#x60;approved&#x60; once you receive a response with the &#x60;valid&#x60; parameter is &#x60;true&#x60;. An approved verification cannot be checked anymore.
    # @param verification_check_request [VerificationCheckRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VerificationCheck, Integer, Hash)>] VerificationCheck data, response status code and response headers
    def verification_check_with_http_info(verification_check_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VerifyApi.verification_check ...'
      end
      # verify the required parameter 'verification_check_request' is set
      if @api_client.config.client_side_validation && verification_check_request.nil?
        fail ArgumentError, "Missing the required parameter 'verification_check_request' when calling VerifyApi.verification_check"
      end
      # resource path
      local_var_path = '/verify/verificationChecks'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(verification_check_request)

      # return_type
      return_type = opts[:debug_return_type] || 'VerificationCheck'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"VerifyApi.verification_check",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VerifyApi#verification_check\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Start a verification
    # Starts a verification by sending an SMS, voice, or email message to the recipient. This verification is charged once the message is sent successfully.
    # @param verification_send_request [VerificationSendRequest] Verification request that needs to be sent.
    # @param [Hash] opts the optional parameters
    # @return [Verification]
    def verification_send(verification_send_request, opts = {})
      data, _status_code, _headers = verification_send_with_http_info(verification_send_request, opts)
      data
    end

    # Start a verification
    # Starts a verification by sending an SMS, voice, or email message to the recipient. This verification is charged once the message is sent successfully.
    # @param verification_send_request [VerificationSendRequest] Verification request that needs to be sent.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Verification, Integer, Hash)>] Verification data, response status code and response headers
    def verification_send_with_http_info(verification_send_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VerifyApi.verification_send ...'
      end
      # verify the required parameter 'verification_send_request' is set
      if @api_client.config.client_side_validation && verification_send_request.nil?
        fail ArgumentError, "Missing the required parameter 'verification_send_request' when calling VerifyApi.verification_send"
      end
      # resource path
      local_var_path = '/verify/verifications'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(verification_send_request)

      # return_type
      return_type = opts[:debug_return_type] || 'Verification'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"VerifyApi.verification_send",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VerifyApi#verification_send\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end