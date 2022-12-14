=begin
#YCloud API

#The [YCloud](https://ycloud.com) API is organized around [REST](https://en.wikipedia.org/wiki/Representational_state_transfer). Our API is designed to have predictable, resource-oriented URLs, return [JSON](https://www.json.org) responses, and use standard HTTP response codes and verbs.

The version of the OpenAPI document: v2
Contact: service@ycloud.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'spec_helper'
require 'json'

# Unit tests for YCloudApiClient::WhatsAppTemplatesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WhatsAppTemplatesApi' do
  before do
    # run before each test
    @api_instance = YCloudApiClient::WhatsAppTemplatesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WhatsAppTemplatesApi' do
    it 'should create an instance of WhatsAppTemplatesApi' do
      expect(@api_instance).to be_instance_of(YCloudApiClient::WhatsAppTemplatesApi)
    end
  end

  # unit tests for whatsapp_template_create
  # Create a WhatsApp template
  # Creates a WhatsApp template. See also [Create Message Templates](https://developers.facebook.com/docs/whatsapp/business-management-api/message-templates/#create-message-templates).
  # @param whatsapp_template_create_request 
  # @param [Hash] opts the optional parameters
  # @return [WhatsappTemplate]
  describe 'whatsapp_template_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for whatsapp_template_delete_by_name
  # Delete WhatsApp templates by name
  # Deletes WhatsApp templates by name. If that template name exists in multiple languages, all languages will be deleted. HTTP status &#x60;404&#x60; is returned if no templates are found for the specific name.
  # @param waba_id WhatsApp Business Account ID.
  # @param name Name of the template.
  # @param [Hash] opts the optional parameters
  # @return [Array<WhatsappTemplate>]
  describe 'whatsapp_template_delete_by_name test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for whatsapp_template_list
  # List WhatsApp templates
  # Returns a paginated list of WhatsApp templates you&#39;ve previously created.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page number of the results to be returned, 1-based.
  # @option opts [Integer] :limit A limit on the number of results to be returned, or number of results per page, between 1 and 100, defaults to 10.
  # @option opts [Boolean] :include_total Return results inside an object that contains the total result count or not.
  # @option opts [String] :filter_waba_id WhatsApp Business Account ID.
  # @option opts [String] :filter_name Name of the template.
  # @option opts [String] :filter_language Language of the template.
  # @return [WhatsappTemplatePage]
  describe 'whatsapp_template_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for whatsapp_template_retrieve_by_name_and_language
  # Retrieve a WhatsApp template
  # Retrieves a WhatsApp template by name and language.
  # @param waba_id WhatsApp Business Account ID.
  # @param name Name of the template.
  # @param language Language code of the template. See [Supported Languages](https://developers.facebook.com/docs/whatsapp/api/messages/message-templates#supported-languages-) for all codes.
  # @param [Hash] opts the optional parameters
  # @return [WhatsappTemplate]
  describe 'whatsapp_template_retrieve_by_name_and_language test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
