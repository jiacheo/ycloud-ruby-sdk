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
require 'date'

# Unit tests for OpenapiClient::WebhookEndpointStatus
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OpenapiClient::WebhookEndpointStatus do
  let(:instance) { OpenapiClient::WebhookEndpointStatus.new }

  describe 'test an instance of WebhookEndpointStatus' do
    it 'should create an instance of WebhookEndpointStatus' do
      expect(instance).to be_instance_of(OpenapiClient::WebhookEndpointStatus)
    end
  end
end