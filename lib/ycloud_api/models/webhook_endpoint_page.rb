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
  # Represents a given page of webhook endpoints.
  class WebhookEndpointPage
    # An array containing webhook endpoint objects.
    attr_accessor :items

    # The position of the item this page starts from, zero-based. e.g., the 11th item is at offset 10.
    attr_accessor :offset

    # A limit on the number of items to be returned, between 1 and 100, defaults to 10.
    attr_accessor :limit

    # The actual number of items in the page.
    attr_accessor :length

    # The total number of items. This field is returned only when the request parameter `includeTotal` is set to `true`.
    attr_accessor :total

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'items' => :'items',
        :'offset' => :'offset',
        :'limit' => :'limit',
        :'length' => :'length',
        :'total' => :'total'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'items' => :'Array<WebhookEndpoint>',
        :'offset' => :'Integer',
        :'limit' => :'Integer',
        :'length' => :'Integer',
        :'total' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'Page'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `YCloudApiClient::WebhookEndpointPage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `YCloudApiClient::WebhookEndpointPage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'items')
        if (value = attributes[:'items']).is_a?(Array)
          self.items = value
        end
      end

      if attributes.key?(:'offset')
        self.offset = attributes[:'offset']
      end

      if attributes.key?(:'limit')
        self.limit = attributes[:'limit']
      end

      if attributes.key?(:'length')
        self.length = attributes[:'length']
      end

      if attributes.key?(:'total')
        self.total = attributes[:'total']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @offset.nil?
        invalid_properties.push('invalid value for "offset", offset cannot be nil.')
      end

      if @offset < 0
        invalid_properties.push('invalid value for "offset", must be greater than or equal to 0.')
      end

      if @limit.nil?
        invalid_properties.push('invalid value for "limit", limit cannot be nil.')
      end

      if @limit < 1
        invalid_properties.push('invalid value for "limit", must be greater than or equal to 1.')
      end

      if @length.nil?
        invalid_properties.push('invalid value for "length", length cannot be nil.')
      end

      if @length < 0
        invalid_properties.push('invalid value for "length", must be greater than or equal to 0.')
      end

      if !@total.nil? && @total < 0
        invalid_properties.push('invalid value for "total", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @offset.nil?
      return false if @offset < 0
      return false if @limit.nil?
      return false if @limit < 1
      return false if @length.nil?
      return false if @length < 0
      return false if !@total.nil? && @total < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] offset Value to be assigned
    def offset=(offset)
      if offset.nil?
        fail ArgumentError, 'offset cannot be nil'
      end

      if offset < 0
        fail ArgumentError, 'invalid value for "offset", must be greater than or equal to 0.'
      end

      @offset = offset
    end

    # Custom attribute writer method with validation
    # @param [Object] limit Value to be assigned
    def limit=(limit)
      if limit.nil?
        fail ArgumentError, 'limit cannot be nil'
      end

      if limit < 1
        fail ArgumentError, 'invalid value for "limit", must be greater than or equal to 1.'
      end

      @limit = limit
    end

    # Custom attribute writer method with validation
    # @param [Object] length Value to be assigned
    def length=(length)
      if length.nil?
        fail ArgumentError, 'length cannot be nil'
      end

      if length < 0
        fail ArgumentError, 'invalid value for "length", must be greater than or equal to 0.'
      end

      @length = length
    end

    # Custom attribute writer method with validation
    # @param [Object] total Value to be assigned
    def total=(total)
      if !total.nil? && total < 0
        fail ArgumentError, 'invalid value for "total", must be greater than or equal to 0.'
      end

      @total = total
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          items == o.items &&
          offset == o.offset &&
          limit == o.limit &&
          length == o.length &&
          total == o.total
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [items, offset, limit, length, total].hash
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
