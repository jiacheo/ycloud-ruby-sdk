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
require 'date'

# Unit tests for YCloudApiClient::VerificationChannel
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe YCloudApiClient::VerificationChannel do
  let(:instance) { YCloudApiClient::VerificationChannel.new }

  describe 'test an instance of VerificationChannel' do
    it 'should create an instance of VerificationChannel' do
      expect(instance).to be_instance_of(YCloudApiClient::VerificationChannel)
    end
  end
end
