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
  class Email
    # Unique ID for the object.
    attr_accessor :id

    attr_accessor :from

    # The intended recipients' email addresses.
    attr_accessor :to

    # Recipients who will receive a copy of the email.
    attr_accessor :cc

    # Recipients who will receive a blind carbon copy of the email.
    attr_accessor :bcc

    # If this field exists, then the reply should go to the addresses indicated in that field and not to the address(es) indicated in the `from` field.
    attr_accessor :reply_to

    # The email subject, which contains a short string identifying the topic of the message.
    attr_accessor :subject

    # This is a summary of your email. Max length: 70.
    attr_accessor :summary

    attr_accessor :content_type

    # A unique string to reference the object. This can be an order number or similar, and can be used to reconcile the object with your internal systems.
    attr_accessor :external_id

    # Delivery report URL. You can provide a URL, and we will push the updated status report to your server in time. e.g., https://httpbin.org/anything?tag=api. Note: We recommend configuring Webhook Endpoints instead.
    attr_accessor :callback_url

    # The time at which this message was created, formatted in [RFC 3339](https://datatracker.ietf.org/doc/html/rfc3339). e.g., `2022-06-01T12:00:00.000Z`.
    attr_accessor :create_time

    # Total recipients of this message, including `to`, `cc` and `bcc`.
    attr_accessor :total_recipients

    # Total price of this message.
    attr_accessor :total_price

    # [ISO 4217 currency code](https://en.wikipedia.org/wiki/ISO_4217)
    attr_accessor :currency

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
        :'from' => :'from',
        :'to' => :'to',
        :'cc' => :'cc',
        :'bcc' => :'bcc',
        :'reply_to' => :'replyTo',
        :'subject' => :'subject',
        :'summary' => :'summary',
        :'content_type' => :'contentType',
        :'external_id' => :'externalId',
        :'callback_url' => :'callbackUrl',
        :'create_time' => :'createTime',
        :'total_recipients' => :'totalRecipients',
        :'total_price' => :'totalPrice',
        :'currency' => :'currency'
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
        :'from' => :'Mailbox',
        :'to' => :'Array<Mailbox>',
        :'cc' => :'Array<Mailbox>',
        :'bcc' => :'Array<Mailbox>',
        :'reply_to' => :'Array<Mailbox>',
        :'subject' => :'String',
        :'summary' => :'String',
        :'content_type' => :'EmailContentType',
        :'external_id' => :'String',
        :'callback_url' => :'String',
        :'create_time' => :'Time',
        :'total_recipients' => :'Float',
        :'total_price' => :'Float',
        :'currency' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `YCloudApiClient::Email` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `YCloudApiClient::Email`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'from')
        self.from = attributes[:'from']
      end

      if attributes.key?(:'to')
        if (value = attributes[:'to']).is_a?(Array)
          self.to = value
        end
      end

      if attributes.key?(:'cc')
        if (value = attributes[:'cc']).is_a?(Array)
          self.cc = value
        end
      end

      if attributes.key?(:'bcc')
        if (value = attributes[:'bcc']).is_a?(Array)
          self.bcc = value
        end
      end

      if attributes.key?(:'reply_to')
        if (value = attributes[:'reply_to']).is_a?(Array)
          self.reply_to = value
        end
      end

      if attributes.key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.key?(:'summary')
        self.summary = attributes[:'summary']
      end

      if attributes.key?(:'content_type')
        self.content_type = attributes[:'content_type']
      end

      if attributes.key?(:'external_id')
        self.external_id = attributes[:'external_id']
      end

      if attributes.key?(:'callback_url')
        self.callback_url = attributes[:'callback_url']
      end

      if attributes.key?(:'create_time')
        self.create_time = attributes[:'create_time']
      end

      if attributes.key?(:'total_recipients')
        self.total_recipients = attributes[:'total_recipients']
      end

      if attributes.key?(:'total_price')
        self.total_price = attributes[:'total_price']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
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

      if !@subject.nil? && @subject.to_s.length > 255
        invalid_properties.push('invalid value for "subject", the character length must be smaller than or equal to 255.')
      end

      if !@summary.nil? && @summary.to_s.length > 70
        invalid_properties.push('invalid value for "summary", the character length must be smaller than or equal to 70.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @id.to_s.length > 128
      return false if @id.to_s.length < 6
      return false if !@subject.nil? && @subject.to_s.length > 255
      return false if !@summary.nil? && @summary.to_s.length > 70
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
    # @param [Object] subject Value to be assigned
    def subject=(subject)
      if !subject.nil? && subject.to_s.length > 255
        fail ArgumentError, 'invalid value for "subject", the character length must be smaller than or equal to 255.'
      end

      @subject = subject
    end

    # Custom attribute writer method with validation
    # @param [Object] summary Value to be assigned
    def summary=(summary)
      if !summary.nil? && summary.to_s.length > 70
        fail ArgumentError, 'invalid value for "summary", the character length must be smaller than or equal to 70.'
      end

      @summary = summary
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          from == o.from &&
          to == o.to &&
          cc == o.cc &&
          bcc == o.bcc &&
          reply_to == o.reply_to &&
          subject == o.subject &&
          summary == o.summary &&
          content_type == o.content_type &&
          external_id == o.external_id &&
          callback_url == o.callback_url &&
          create_time == o.create_time &&
          total_recipients == o.total_recipients &&
          total_price == o.total_price &&
          currency == o.currency
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, from, to, cc, bcc, reply_to, subject, summary, content_type, external_id, callback_url, create_time, total_recipients, total_price, currency].hash
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
