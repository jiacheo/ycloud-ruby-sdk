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
  class Sms
    # Unique ID for the object.
    attr_accessor :id

    # The recipient's phone number in [E.164](https://en.wikipedia.org/wiki/E.164) format.
    attr_accessor :to

    # The text of this message.
    attr_accessor :text

    # Sender ID to be used.
    attr_accessor :sender_id

    # [ISO 3166-1 alpha-2 country code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)
    attr_accessor :region_code

    # Number of message segments. See [SMS character encoding](https://help.ycloud.com/en/articles/3083427-sms-character-encoding) for more info.
    attr_accessor :total_segments

    # Total price of this message.
    attr_accessor :total_price

    # [ISO 4217 currency code](https://en.wikipedia.org/wiki/ISO_4217)
    attr_accessor :currency

    # Delivery status. One of `accepted`, `sent`, `delivered`, `undelivered`.
    attr_accessor :status

    # Error code when the message is undeliverable.
    attr_accessor :error_code

    # The time at which this message was created, formatted in [RFC 3339](https://datatracker.ietf.org/doc/html/rfc3339). e.g., `2022-03-01T12:00:00.000Z`.
    attr_accessor :create_time

    # The time at which the delivery report for this message was updated, formatted in [RFC 3339](https://datatracker.ietf.org/doc/html/rfc3339). e.g., `2022-03-01T12:00:00.000Z`.
    attr_accessor :update_time

    # A unique string to reference the object. This can be an order number or similar, and can be used to reconcile the object with your internal systems.
    attr_accessor :external_id

    # Delivery report URL. You can provide a URL, and we will push the updated status report to your server in time. e.g., https://httpbin.org/anything?tag=api. Note: We recommend configuring Webhook Endpoints instead.
    attr_accessor :callback_url

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'to' => :'to',
        :'text' => :'text',
        :'sender_id' => :'senderId',
        :'region_code' => :'regionCode',
        :'total_segments' => :'totalSegments',
        :'total_price' => :'totalPrice',
        :'currency' => :'currency',
        :'status' => :'status',
        :'error_code' => :'errorCode',
        :'create_time' => :'createTime',
        :'update_time' => :'updateTime',
        :'external_id' => :'externalId',
        :'callback_url' => :'callbackUrl'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'to' => :'String',
        :'text' => :'String',
        :'sender_id' => :'String',
        :'region_code' => :'String',
        :'total_segments' => :'Integer',
        :'total_price' => :'Float',
        :'currency' => :'String',
        :'status' => :'String',
        :'error_code' => :'String',
        :'create_time' => :'Time',
        :'update_time' => :'Time',
        :'external_id' => :'String',
        :'callback_url' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `YCloudApiClient::Sms` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `YCloudApiClient::Sms`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'to')
        self.to = attributes[:'to']
      end

      if attributes.key?(:'text')
        self.text = attributes[:'text']
      end

      if attributes.key?(:'sender_id')
        self.sender_id = attributes[:'sender_id']
      end

      if attributes.key?(:'region_code')
        self.region_code = attributes[:'region_code']
      end

      if attributes.key?(:'total_segments')
        self.total_segments = attributes[:'total_segments']
      end

      if attributes.key?(:'total_price')
        self.total_price = attributes[:'total_price']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'error_code')
        self.error_code = attributes[:'error_code']
      end

      if attributes.key?(:'create_time')
        self.create_time = attributes[:'create_time']
      end

      if attributes.key?(:'update_time')
        self.update_time = attributes[:'update_time']
      end

      if attributes.key?(:'external_id')
        self.external_id = attributes[:'external_id']
      end

      if attributes.key?(:'callback_url')
        self.callback_url = attributes[:'callback_url']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @id.to_s.length > 128
        invalid_properties.push('invalid value for "id", the character length must be smaller than or equal to 128.')
      end

      if @id.to_s.length < 6
        invalid_properties.push('invalid value for "id", the character length must be great than or equal to 6.')
      end

      if @to.nil?
        invalid_properties.push('invalid value for "to", to cannot be nil.')
      end

      if !@total_segments.nil? && @total_segments < 1
        invalid_properties.push('invalid value for "total_segments", must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @id.to_s.length > 128
      return false if @id.to_s.length < 6
      return false if @to.nil?
      return false if !@total_segments.nil? && @total_segments < 1
      status_validator = EnumAttributeValidator.new('String', ["accepted", "sent", "delivered", "undelivered"])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      if id.to_s.length > 128
        fail ArgumentError, 'invalid value for "id", the character length must be smaller than or equal to 128.'
      end

      if id.to_s.length < 6
        fail ArgumentError, 'invalid value for "id", the character length must be great than or equal to 6.'
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] total_segments Value to be assigned
    def total_segments=(total_segments)
      if !total_segments.nil? && total_segments < 1
        fail ArgumentError, 'invalid value for "total_segments", must be greater than or equal to 1.'
      end

      @total_segments = total_segments
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["accepted", "sent", "delivered", "undelivered"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          to == o.to &&
          text == o.text &&
          sender_id == o.sender_id &&
          region_code == o.region_code &&
          total_segments == o.total_segments &&
          total_price == o.total_price &&
          currency == o.currency &&
          status == o.status &&
          error_code == o.error_code &&
          create_time == o.create_time &&
          update_time == o.update_time &&
          external_id == o.external_id &&
          callback_url == o.callback_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, to, text, sender_id, region_code, total_segments, total_price, currency, status, error_code, create_time, update_time, external_id, callback_url].hash
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
        klass = YCloudApiClient.const_get(type)
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
