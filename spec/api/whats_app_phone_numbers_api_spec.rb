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

# Unit tests for YCloudApiClient::WhatsAppPhoneNumbersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WhatsAppPhoneNumbersApi' do
  before do
    # run before each test
    @api_instance = YCloudApiClient::WhatsAppPhoneNumbersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WhatsAppPhoneNumbersApi' do
    it 'should create an instance of WhatsAppPhoneNumbersApi' do
      expect(@api_instance).to be_instance_of(YCloudApiClient::WhatsAppPhoneNumbersApi)
    end
  end

  # unit tests for whatsapp_phone_number_list
  # List WhatsApp phone numbers
  # Returns a paginated list of WhatsApp business account phone numbers you&#39;ve registered on YCloud.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page number of the results to be returned, 1-based.
  # @option opts [Integer] :limit A limit on the number of results to be returned, or number of results per page, between 1 and 100, defaults to 10.
  # @option opts [Boolean] :include_total Return results inside an object that contains the total result count or not.
  # @option opts [String] :filter_waba_id WhatsApp Business Account ID.
  # @return [WhatsappPhoneNumberPage]
  describe 'whatsapp_phone_number_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for whatsapp_phone_number_retrieve
  # Retrieve a WhatsApp phone number
  # Retrieves a WhatsApp business account phone number you&#39;ve registered on YCloud.
  # @param waba_id WhatsApp Business Account ID.
  # @param phone_number Phone number in [E.164](https://en.wikipedia.org/wiki/E.164) format.
  # @param [Hash] opts the optional parameters
  # @return [WhatsappPhoneNumber]
  describe 'whatsapp_phone_number_retrieve test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
