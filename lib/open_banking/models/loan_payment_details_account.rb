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
  class LoanPaymentDetailsAccount
    # An account ID
    attr_accessor :account_id

    # Institution's ID of the Student Loan Account
    attr_accessor :account_number

    # The payment number given by the institution. This number is typically for manual payments. This is not an ACH payment number.
    attr_accessor :account_payment_number

    # The payment address to which send manual payments should be sent
    attr_accessor :account_payment_address

    # The payoff amount for the account
    attr_accessor :account_future_payoff_amount

    # The date to which the \"Future Payoff Amount\" applies
    attr_accessor :account_future_payoff_date

    # Group details
    attr_accessor :group_detail

    # Loan details
    attr_accessor :loan_detail

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_id' => :'accountId',
        :'account_number' => :'accountNumber',
        :'account_payment_number' => :'accountPaymentNumber',
        :'account_payment_address' => :'accountPaymentAddress',
        :'account_future_payoff_amount' => :'accountFuturePayoffAmount',
        :'account_future_payoff_date' => :'accountFuturePayoffDate',
        :'group_detail' => :'groupDetail',
        :'loan_detail' => :'loanDetail'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_id' => :'String',
        :'account_number' => :'String',
        :'account_payment_number' => :'String',
        :'account_payment_address' => :'String',
        :'account_future_payoff_amount' => :'Float',
        :'account_future_payoff_date' => :'Time',
        :'group_detail' => :'Array<LoanPaymentDetailsGroup>',
        :'loan_detail' => :'Array<LoanPaymentDetailsLoan>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenBanking::LoanPaymentDetailsAccount` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenBanking::LoanPaymentDetailsAccount`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      else
        self.account_id = nil
      end

      if attributes.key?(:'account_number')
        self.account_number = attributes[:'account_number']
      else
        self.account_number = nil
      end

      if attributes.key?(:'account_payment_number')
        self.account_payment_number = attributes[:'account_payment_number']
      else
        self.account_payment_number = nil
      end

      if attributes.key?(:'account_payment_address')
        self.account_payment_address = attributes[:'account_payment_address']
      else
        self.account_payment_address = nil
      end

      if attributes.key?(:'account_future_payoff_amount')
        self.account_future_payoff_amount = attributes[:'account_future_payoff_amount']
      end

      if attributes.key?(:'account_future_payoff_date')
        self.account_future_payoff_date = attributes[:'account_future_payoff_date']
      end

      if attributes.key?(:'group_detail')
        if (value = attributes[:'group_detail']).is_a?(Array)
          self.group_detail = value
        end
      end

      if attributes.key?(:'loan_detail')
        if (value = attributes[:'loan_detail']).is_a?(Array)
          self.loan_detail = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @account_id.nil?
        invalid_properties.push('invalid value for "account_id", account_id cannot be nil.')
      end

      if @account_number.nil?
        invalid_properties.push('invalid value for "account_number", account_number cannot be nil.')
      end

      if @account_payment_number.nil?
        invalid_properties.push('invalid value for "account_payment_number", account_payment_number cannot be nil.')
      end

      if @account_payment_address.nil?
        invalid_properties.push('invalid value for "account_payment_address", account_payment_address cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @account_id.nil?
      return false if @account_number.nil?
      return false if @account_payment_number.nil?
      return false if @account_payment_address.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_id == o.account_id &&
          account_number == o.account_number &&
          account_payment_number == o.account_payment_number &&
          account_payment_address == o.account_payment_address &&
          account_future_payoff_amount == o.account_future_payoff_amount &&
          account_future_payoff_date == o.account_future_payoff_date &&
          group_detail == o.group_detail &&
          loan_detail == o.loan_detail
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_id, account_number, account_payment_number, account_payment_address, account_future_payoff_amount, account_future_payoff_date, group_detail, loan_detail].hash
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
