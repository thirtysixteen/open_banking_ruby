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
  class CashFlowPossibleLoanDepositsAccount
    # Finicity account ID
    attr_accessor :id

    # The name(s) of the account owner(s). If the owner information is not available, this field will not appear in the report. If the account has multiple owners then all owners will be listed separated by |.
    attr_accessor :owner_name

    # The mailing address of the account owner(s). If the owner information is not available, this field will not appear in the report. If the account has multiple owners then the address of the primary owner will be listed.
    attr_accessor :owner_address

    # The account name from the institution
    attr_accessor :name

    # The account number from the institution (obfuscated)
    attr_accessor :number

    # CFR: `ALL` (`checking` / `savings` / `loan` / `mortgage` / `credit card` / `CD` / `MM` / `investment`...)
    attr_accessor :type

    # The status of the most recent aggregation attempt for this account (non-zero means the account was not accessed successfully for this report, and additional fields for this account may not be reliable)
    attr_accessor :aggregation_status_code

    # The cleared balance of the account as-of `balanceDate`
    attr_accessor :current_balance

    # Available balance
    attr_accessor :available_balance

    # A timestamp showing when the `balance` was captured
    attr_accessor :balance_date

    # a list of transaction records
    attr_accessor :transactions

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'owner_name' => :'ownerName',
        :'owner_address' => :'ownerAddress',
        :'name' => :'name',
        :'number' => :'number',
        :'type' => :'type',
        :'aggregation_status_code' => :'aggregationStatusCode',
        :'current_balance' => :'currentBalance',
        :'available_balance' => :'availableBalance',
        :'balance_date' => :'balanceDate',
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
        :'id' => :'String',
        :'owner_name' => :'String',
        :'owner_address' => :'String',
        :'name' => :'String',
        :'number' => :'String',
        :'type' => :'String',
        :'aggregation_status_code' => :'Integer',
        :'current_balance' => :'Float',
        :'available_balance' => :'Float',
        :'balance_date' => :'Integer',
        :'transactions' => :'Array<ReportTransaction>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenBanking::CashFlowPossibleLoanDepositsAccount` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenBanking::CashFlowPossibleLoanDepositsAccount`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'owner_name')
        self.owner_name = attributes[:'owner_name']
      else
        self.owner_name = nil
      end

      if attributes.key?(:'owner_address')
        self.owner_address = attributes[:'owner_address']
      else
        self.owner_address = nil
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'number')
        self.number = attributes[:'number']
      else
        self.number = nil
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = nil
      end

      if attributes.key?(:'aggregation_status_code')
        self.aggregation_status_code = attributes[:'aggregation_status_code']
      else
        self.aggregation_status_code = nil
      end

      if attributes.key?(:'current_balance')
        self.current_balance = attributes[:'current_balance']
      else
        self.current_balance = nil
      end

      if attributes.key?(:'available_balance')
        self.available_balance = attributes[:'available_balance']
      else
        self.available_balance = nil
      end

      if attributes.key?(:'balance_date')
        self.balance_date = attributes[:'balance_date']
      else
        self.balance_date = nil
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
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @owner_name.nil?
        invalid_properties.push('invalid value for "owner_name", owner_name cannot be nil.')
      end

      if @owner_address.nil?
        invalid_properties.push('invalid value for "owner_address", owner_address cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @number.nil?
        invalid_properties.push('invalid value for "number", number cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @aggregation_status_code.nil?
        invalid_properties.push('invalid value for "aggregation_status_code", aggregation_status_code cannot be nil.')
      end

      if @current_balance.nil?
        invalid_properties.push('invalid value for "current_balance", current_balance cannot be nil.')
      end

      if @available_balance.nil?
        invalid_properties.push('invalid value for "available_balance", available_balance cannot be nil.')
      end

      if @balance_date.nil?
        invalid_properties.push('invalid value for "balance_date", balance_date cannot be nil.')
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
      return false if @id.nil?
      return false if @owner_name.nil?
      return false if @owner_address.nil?
      return false if @name.nil?
      return false if @number.nil?
      return false if @type.nil?
      return false if @aggregation_status_code.nil?
      return false if @current_balance.nil?
      return false if @available_balance.nil?
      return false if @balance_date.nil?
      return false if @transactions.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          owner_name == o.owner_name &&
          owner_address == o.owner_address &&
          name == o.name &&
          number == o.number &&
          type == o.type &&
          aggregation_status_code == o.aggregation_status_code &&
          current_balance == o.current_balance &&
          available_balance == o.available_balance &&
          balance_date == o.balance_date &&
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
      [id, owner_name, owner_address, name, number, type, aggregation_status_code, current_balance, available_balance, balance_date, transactions].hash
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
