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
  class WhatsAppPhoneNumbersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List WhatsApp phone numbers
    # Returns a paginated list of WhatsApp business account phone numbers you've registered on YCloud.
    # @param [Hash] opts the parameters
    # @option opts [Integer] :page Page number of the results to be returned, 1-based. (default to 1)
    # @option opts [Integer] :limit A limit on the number of results to be returned, or number of results per page, between 1 and 100, defaults to 10. (default to 10)
    # @option opts [Boolean] :include_total Return results inside an object that contains the total result count or not. (default to false)
    # @option opts [String] :filter_waba_id WhatsApp Business Account ID.
    # @return [WhatsappPhoneNumberPage]
    def whatsapp_phone_number_list(opts = {})
      data, _status_code, _headers = whatsapp_phone_number_list_with_http_info(opts)
      data
    end

    # List WhatsApp phone numbers
    # Returns a paginated list of WhatsApp business account phone numbers you&#39;ve registered on YCloud.
    # @param [Hash] opts the parameters
    # @option opts [Integer] :page Page number of the results to be returned, 1-based. (default to 1)
    # @option opts [Integer] :limit A limit on the number of results to be returned, or number of results per page, between 1 and 100, defaults to 10. (default to 10)
    # @option opts [Boolean] :include_total Return results inside an object that contains the total result count or not. (default to false)
    # @option opts [String] :filter_waba_id WhatsApp Business Account ID.
    # @return [Array<(WhatsappPhoneNumberPage, Integer, Hash)>] WhatsappPhoneNumberPage data, response status code and response headers
    def whatsapp_phone_number_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WhatsAppPhoneNumbersApi.whatsapp_phone_number_list ...'
      end
      # unbox the parameters from the hash
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] > 100
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling WhatsAppPhoneNumbersApi.whatsapp_phone_number_list, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling WhatsAppPhoneNumbersApi.whatsapp_phone_number_list, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling WhatsAppPhoneNumbersApi.whatsapp_phone_number_list, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling WhatsAppPhoneNumbersApi.whatsapp_phone_number_list, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/whatsapp/phoneNumbers'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'includeTotal'] = opts[:'include_total'] if !opts[:'include_total'].nil?
      query_params[:'filter.wabaId'] = opts[:'filter_waba_id'] if !opts[:'filter_waba_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WhatsappPhoneNumberPage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"WhatsAppPhoneNumbersApi.whatsapp_phone_number_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WhatsAppPhoneNumbersApi#whatsapp_phone_number_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a WhatsApp phone number
    # Retrieves a WhatsApp business account phone number you've registered on YCloud.
    # @param waba_id [String] WhatsApp Business Account ID.
    # @param phone_number [String] Phone number in [E.164](https://en.wikipedia.org/wiki/E.164) format.
    # @param [Hash] opts the optional parameters
    # @return [WhatsappPhoneNumber]
    def whatsapp_phone_number_retrieve(waba_id, phone_number, opts = {})
      data, _status_code, _headers = whatsapp_phone_number_retrieve_with_http_info(waba_id, phone_number, opts)
      data
    end

    # Retrieve a WhatsApp phone number
    # Retrieves a WhatsApp business account phone number you&#39;ve registered on YCloud.
    # @param waba_id [String] WhatsApp Business Account ID.
    # @param phone_number [String] Phone number in [E.164](https://en.wikipedia.org/wiki/E.164) format.
    # @param [Hash] opts the optional parameters
    # @return [Array<(WhatsappPhoneNumber, Integer, Hash)>] WhatsappPhoneNumber data, response status code and response headers
    def whatsapp_phone_number_retrieve_with_http_info(waba_id, phone_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WhatsAppPhoneNumbersApi.whatsapp_phone_number_retrieve ...'
      end
      # verify the required parameter 'waba_id' is set
      if @api_client.config.client_side_validation && waba_id.nil?
        fail ArgumentError, "Missing the required parameter 'waba_id' when calling WhatsAppPhoneNumbersApi.whatsapp_phone_number_retrieve"
      end
      # verify the required parameter 'phone_number' is set
      if @api_client.config.client_side_validation && phone_number.nil?
        fail ArgumentError, "Missing the required parameter 'phone_number' when calling WhatsAppPhoneNumbersApi.whatsapp_phone_number_retrieve"
      end
      # resource path
      local_var_path = '/whatsapp/phoneNumbers/{wabaId}/{phoneNumber}'.sub('{' + 'wabaId' + '}', CGI.escape(waba_id.to_s)).sub('{' + 'phoneNumber' + '}', CGI.escape(phone_number.to_s))

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
      return_type = opts[:debug_return_type] || 'WhatsappPhoneNumber'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key']

      new_options = opts.merge(
        :operation => :"WhatsAppPhoneNumbersApi.whatsapp_phone_number_retrieve",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WhatsAppPhoneNumbersApi#whatsapp_phone_number_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end