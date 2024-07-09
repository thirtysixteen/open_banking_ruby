=begin
#Open Banking

#OpenAPI specification for Finicity APIs.  Open Banking solutions in the US are provided by Finicity, a Mastercard company.

The version of the OpenAPI document: 1.19.0
Contact: apisupport@mastercard.com
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'date'
require 'time'

module OpenBanking
  class CashFlowActivityWithdrawalsDebits
    # Date the withdrawal transaction was posted
    attr_accessor :date

    # Description of transaction
    attr_accessor :transaction_description

    # Amount of the withdrawal
    attr_accessor :withdrawals_debits

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'date' => :'date',
        :'transaction_description' => :'transactionDescription',
        :'withdrawals_debits' => :'withdrawalsDebits'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'date' => :'String',
        :'transaction_description' => :'String',
        :'withdrawals_debits' => :'Float'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenBanking::CashFlowActivityWithdrawalsDebits` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenBanking::CashFlowActivityWithdrawalsDebits`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      else
        self.date = nil
      end

      if attributes.key?(:'transaction_description')
        self.transaction_description = attributes[:'transaction_description']
      end

      if attributes.key?(:'withdrawals_debits')
        self.withdrawals_debits = attributes[:'withdrawals_debits']
      else
        self.withdrawals_debits = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @date.nil?
        invalid_properties.push('invalid value for "date", date cannot be nil.')
      end

      if @date.to_s.length > 10
        invalid_properties.push('invalid value for "date", the character length must be smaller than or equal to 10.')
      end

      if @date.to_s.length < 10
        invalid_properties.push('invalid value for "date", the character length must be great than or equal to 10.')
      end

      if !@transaction_description.nil? && @transaction_description.to_s.length > 255
        invalid_properties.push('invalid value for "transaction_description", the character length must be smaller than or equal to 255.')
      end

      if !@transaction_description.nil? && @transaction_description.to_s.length < 0
        invalid_properties.push('invalid value for "transaction_description", the character length must be great than or equal to 0.')
      end

      if @withdrawals_debits.nil?
        invalid_properties.push('invalid value for "withdrawals_debits", withdrawals_debits cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @date.nil?
      return false if @date.to_s.length > 10
      return false if @date.to_s.length < 10
      return false if !@transaction_description.nil? && @transaction_description.to_s.length > 255
      return false if !@transaction_description.nil? && @transaction_description.to_s.length < 0
      return false if @withdrawals_debits.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] date Value to be assigned
    def date=(date)
      if date.nil?
        fail ArgumentError, 'date cannot be nil'
      end

      if date.to_s.length > 10
        fail ArgumentError, 'invalid value for "date", the character length must be smaller than or equal to 10.'
      end

      if date.to_s.length < 10
        fail ArgumentError, 'invalid value for "date", the character length must be great than or equal to 10.'
      end

      @date = date
    end

    # Custom attribute writer method with validation
    # @param [Object] transaction_description Value to be assigned
    def transaction_description=(transaction_description)
      if transaction_description.nil?
        fail ArgumentError, 'transaction_description cannot be nil'
      end

      if transaction_description.to_s.length > 255
        fail ArgumentError, 'invalid value for "transaction_description", the character length must be smaller than or equal to 255.'
      end

      if transaction_description.to_s.length < 0
        fail ArgumentError, 'invalid value for "transaction_description", the character length must be great than or equal to 0.'
      end

      @transaction_description = transaction_description
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          date == o.date &&
          transaction_description == o.transaction_description &&
          withdrawals_debits == o.withdrawals_debits
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [date, transaction_description, withdrawals_debits].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
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
        klass = OpenBanking.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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