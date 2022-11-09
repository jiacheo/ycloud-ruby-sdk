=begin
#YCloud API

#The [YCloud](https://ycloud.com) API is organized around [REST](https://en.wikipedia.org/wiki/Representational_state_transfer). Our API is designed to have predictable, resource-oriented URLs, return [JSON](https://www.json.org) responses, and use standard HTTP response codes and verbs.

The version of the OpenAPI document: v2
Contact: service@ycloud.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'date'
require 'time'

module YCloudApiClient
  class WhatsappInboundMessageType
    TEXT = "text".freeze
    IMAGE = "image".freeze
    VIDEO = "video".freeze
    AUDIO = "audio".freeze
    DOCUMENT = "document".freeze
    STICKER = "sticker".freeze
    CONTACTS = "contacts".freeze
    LOCATION = "location".freeze
    INTERACTIVE = "interactive".freeze
    BUTTON = "button".freeze
    SYSTEM = "system".freeze
    UNKNOWN = "unknown".freeze

    def self.all_vars
      @all_vars ||= [TEXT, IMAGE, VIDEO, AUDIO, DOCUMENT, STICKER, CONTACTS, LOCATION, INTERACTIVE, BUTTON, SYSTEM, UNKNOWN].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if WhatsappInboundMessageType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #WhatsappInboundMessageType"
    end
  end
end
