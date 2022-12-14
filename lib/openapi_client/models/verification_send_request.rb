=begin
#YCloud API

#The [YCloud](https://ycloud.com) API is organized around [REST](https://en.wikipedia.org/wiki/Representational_state_transfer). Our API is designed to have predictable, resource-oriented URLs, return [JSON](https://www.json.org) responses, and use standard HTTP response codes and verbs.

The version of the OpenAPI document: v2
Contact: service@ycloud.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'date'
require 'time'

module OpenapiClient
  class VerificationSendRequest
    attr_accessor :channel

    # The recipient's phone number or email address depending on `channel`. - Phone number: In [E.164](https://en.wikipedia.org/wiki/E.164) format. Applicable when `channel` is `sms` or `voice`. - Email address: For example, `tom@example.com`. Applicable when `channel` is `email_code`.
    attr_accessor :to

    # Verification code to be sent. This field is optional. If not provided, YCloud will automatically generate a code.
    attr_accessor :code

    # [Sender ID](https://help.ycloud.com/en/articles/3080386) to be used.
    attr_accessor :sender_id

    # This parameter is only required for Chinese mainland SMS messages. You must specify an approved signature such as `YCloud`. It will be added to the beginning of SMS body and wrapped with `【】`, e.g. `【YCloud】Your verification code is 123456`.
    attr_accessor :signature

    # [ISO 639 Language Code](https://www.iso.org/iso-639-language-codes.html). If not specified, language will be set as `en` by default. Notably, in certain countries or regions, language will be automatically set as the local language due to the regional restrictions. Applicable languages: `ar`: Arabic `de`: German `en`: English `es`: Spanish `fr`: French `id`: Indonesian `it`: Italian `pt_BR`: Portuguese. Not applicable when `channel` is `whatsapp`. `ru`: Russian `tr`: Turkish `vi`: Vietnamese `zh_CN`: Simplified Chinese `zh_HK`: Traditional Chinese
    attr_accessor :language

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'channel' => :'channel',
        :'to' => :'to',
        :'code' => :'code',
        :'sender_id' => :'senderId',
        :'signature' => :'signature',
        :'language' => :'language'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'channel' => :'VerificationChannel',
        :'to' => :'String',
        :'code' => :'String',
        :'sender_id' => :'String',
        :'signature' => :'String',
        :'language' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::VerificationSendRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::VerificationSendRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'channel')
        self.channel = attributes[:'channel']
      end

      if attributes.key?(:'to')
        self.to = attributes[:'to']
      end

      if attributes.key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.key?(:'sender_id')
        self.sender_id = attributes[:'sender_id']
      end

      if attributes.key?(:'signature')
        self.signature = attributes[:'signature']
      end

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @channel.nil?
        invalid_properties.push('invalid value for "channel", channel cannot be nil.')
      end

      if @to.nil?
        invalid_properties.push('invalid value for "to", to cannot be nil.')
      end

      if !@code.nil? && @code.to_s.length > 8
        invalid_properties.push('invalid value for "code", the character length must be smaller than or equal to 8.')
      end

      if !@code.nil? && @code.to_s.length < 4
        invalid_properties.push('invalid value for "code", the character length must be great than or equal to 4.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @channel.nil?
      return false if @to.nil?
      return false if !@code.nil? && @code.to_s.length > 8
      return false if !@code.nil? && @code.to_s.length < 4
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] code Value to be assigned
    def code=(code)
      if !code.nil? && code.to_s.length > 8
        fail ArgumentError, 'invalid value for "code", the character length must be smaller than or equal to 8.'
      end

      if !code.nil? && code.to_s.length < 4
        fail ArgumentError, 'invalid value for "code", the character length must be great than or equal to 4.'
      end

      @code = code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          channel == o.channel &&
          to == o.to &&
          code == o.code &&
          sender_id == o.sender_id &&
          signature == o.signature &&
          language == o.language
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [channel, to, code, sender_id, signature, language].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OpenapiClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
