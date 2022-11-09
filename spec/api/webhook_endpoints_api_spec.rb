=begin
#YCloud API

#The [YCloud](https://ycloud.com) API is organized around [REST](https://en.wikipedia.org/wiki/Representational_state_transfer). Our API is designed to have predictable, resource-oriented URLs, return [JSON](https://www.json.org) responses, and use standard HTTP response codes and verbs.

The version of the OpenAPI document: v2
Contact: service@ycloud.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::WebhookEndpointsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WebhookEndpointsApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::WebhookEndpointsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WebhookEndpointsApi' do
    it 'should create an instance of WebhookEndpointsApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::WebhookEndpointsApi)
    end
  end

  # unit tests for webhook_endpoint_create
  # Create a webhook endpoint
  # Creates a webhook endpoint listening the specified events.
  # @param webhook_endpoint_create_request 
  # @param [Hash] opts the optional parameters
  # @return [WebhookEndpoint]
  describe 'webhook_endpoint_create test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webhook_endpoint_delete
  # Delete a webhook endpoint
  # Deletes a webhook endpoint.
  # @param id ID of the webhook endpoint.
  # @param [Hash] opts the optional parameters
  # @return [WebhookEndpoint]
  describe 'webhook_endpoint_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webhook_endpoint_list
  # List webhook endpoints
  # Returns a paginated list of webhook endpoints.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page number of the results to be returned, 1-based.
  # @option opts [Integer] :limit A limit on the number of results to be returned, or number of results per page, between 1 and 100, defaults to 10.
  # @option opts [Boolean] :include_total Return results inside an object that contains the total result count or not.
  # @return [WebhookEndpointPage]
  describe 'webhook_endpoint_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webhook_endpoint_retrieve
  # Retrieve a webhook endpoint
  # Retrieves the webhook endpoint with the given ID.
  # @param id ID of the webhook endpoint.
  # @param [Hash] opts the optional parameters
  # @return [WebhookEndpoint]
  describe 'webhook_endpoint_retrieve test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webhook_endpoint_rotate_secret
  # Rotate a webhook endpoint secret
  # Generates a new secret for a webhook endpoint.
  # @param id ID of the webhook endpoint.
  # @param [Hash] opts the optional parameters
  # @return [WebhookEndpoint]
  describe 'webhook_endpoint_rotate_secret test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webhook_endpoint_update
  # Update a webhook endpoint
  # Updates a webhook endpoint, such as url, events, status.
  # @param id ID of the webhook endpoint.
  # @param webhook_endpoint_update_request 
  # @param [Hash] opts the optional parameters
  # @return [WebhookEndpoint]
  describe 'webhook_endpoint_update test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
