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
  # A list of transactions
  class Transactions
    # The total number of results matching search criteria
    attr_accessor :found

    # The number of results returned
    attr_accessor :displaying

    # If the value of `moreAvailable` is \"true\", you can retrieve the next page of results by increasing the value of the start parameter in your next request:\"...&start=6&limit=5\"
    attr_accessor :more_available

    # Value of the `fromDate` request parameter that generated this response
    attr_accessor :from_date

    # Value of the `toDate` request parameter that generated this response
    attr_accessor :to_date

    # Value of the sort request parameter that generated this response
    attr_accessor :sort

    # The array of transactions
    attr_accessor :transactions

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'found' => :'found',
        :'displaying' => :'displaying',
        :'more_available' => :'moreAvailable',
        :'from_date' => :'fromDate',
        :'to_date' => :'toDate',
        :'sort' => :'sort',
        :'transactions' => :'transactions'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'found' => :'Integer',
        :'displaying' => :'Integer',
        :'more_available' => :'Boolean',
        :'from_date' => :'Integer',
        :'to_date' => :'Integer',
        :'sort' => :'String',
        :'transactions' => :'Array<Transaction>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenBanking::Transactions` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenBanking::Transactions`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'found')
        self.found = attributes[:'found']
      else
        self.found = nil
      end

      if attributes.key?(:'displaying')
        self.displaying = attributes[:'displaying']
      else
        self.displaying = nil
      end

      if attributes.key?(:'more_available')
        self.more_available = attributes[:'more_available']
      else
        self.more_available = nil
      end

      if attributes.key?(:'from_date')
        self.from_date = attributes[:'from_date']
      else
        self.from_date = nil
      end

      if attributes.key?(:'to_date')
        self.to_date = attributes[:'to_date']
      else
        self.to_date = nil
      end

      if attributes.key?(:'sort')
        self.sort = attributes[:'sort']
      else
        self.sort = nil
      end

      if attributes.key?(:'transactions')
        if (value = attributes[:'transactions']).is_a?(Array)
          self.transactions = value
        end
      else
        self.transactions = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @found.nil?
        invalid_properties.push('invalid value for "found", found cannot be nil.')
      end

      if @displaying.nil?
        invalid_properties.push('invalid value for "displaying", displaying cannot be nil.')
      end

      if @more_available.nil?
        invalid_properties.push('invalid value for "more_available", more_available cannot be nil.')
      end

      if @from_date.nil?
        invalid_properties.push('invalid value for "from_date", from_date cannot be nil.')
      end

      if @to_date.nil?
        invalid_properties.push('invalid value for "to_date", to_date cannot be nil.')
      end

      if @sort.nil?
        invalid_properties.push('invalid value for "sort", sort cannot be nil.')
      end

      if @transactions.nil?
        invalid_properties.push('invalid value for "transactions", transactions cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @found.nil?
      return false if @displaying.nil?
      return false if @more_available.nil?
      return false if @from_date.nil?
      return false if @to_date.nil?
      return false if @sort.nil?
      return false if @transactions.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          found == o.found &&
          displaying == o.displaying &&
          more_available == o.more_available &&
          from_date == o.from_date &&
          to_date == o.to_date &&
          sort == o.sort &&
          transactions == o.transactions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [found, displaying, more_available, from_date, to_date, sort, transactions].hash
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
