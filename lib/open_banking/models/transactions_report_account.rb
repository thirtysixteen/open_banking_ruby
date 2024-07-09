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
  # Fields used for the Transaction History Report (CRA products)
  class TransactionsReportAccount
    # The Finicity account ID
    attr_accessor :id

    # The account name from the financial institution.
    attr_accessor :name

    # The account number from the financial institution (obfuscated)
    attr_accessor :number

    # The list of supported account types. * `checking` * `savings` * `moneyMarket` * `cd` * `investment` * `investmentTaxDeferred` * `employeeStockPurchasePlan` * `ira` * `401k` * `roth` * `403b` * `529` * `rollover` * `ugma` * `utma` * `keogh` * `457` * `401a` * `unknown` * `mortgage` * `loan` * `creditCard` * `lineOfCredit` * `payroll` * `studentLoan` * `brokerageAccount` * `educationSavings` * `healthSavingsAccount` * `nonTaxableBrokerageAccount` * `pension` * `profitSharingPlan` * `roth401k` * `sepIRA` * `simpleIRA` * `thriftSavingsPlan` * `variableAnnuity`
    attr_accessor :type

    # A currency code for account
    attr_accessor :currency

    # The status of the most recent aggregation attempt for this account. Note: non-zero means the account was not accessed successfully for this report, and additional fields for this account may not be reliable.
    attr_accessor :aggregation_status_code

    # The cleared balance of the account as-of `balanceDate`
    attr_accessor :balance

    # A timestamp showing when the balance was captured
    attr_accessor :balance_date

    # The oldest transaction date of this account.
    attr_accessor :oldest_transaction_date

    # a list of transaction records
    attr_accessor :transactions

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'number' => :'number',
        :'type' => :'type',
        :'currency' => :'currency',
        :'aggregation_status_code' => :'aggregationStatusCode',
        :'balance' => :'balance',
        :'balance_date' => :'balanceDate',
        :'oldest_transaction_date' => :'oldestTransactionDate',
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
        :'id' => :'Integer',
        :'name' => :'String',
        :'number' => :'String',
        :'type' => :'String',
        :'currency' => :'String',
        :'aggregation_status_code' => :'Integer',
        :'balance' => :'Float',
        :'balance_date' => :'Integer',
        :'oldest_transaction_date' => :'Integer',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenBanking::TransactionsReportAccount` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenBanking::TransactionsReportAccount`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'aggregation_status_code')
        self.aggregation_status_code = attributes[:'aggregation_status_code']
      end

      if attributes.key?(:'balance')
        self.balance = attributes[:'balance']
      end

      if attributes.key?(:'balance_date')
        self.balance_date = attributes[:'balance_date']
      end

      if attributes.key?(:'oldest_transaction_date')
        self.oldest_transaction_date = attributes[:'oldest_transaction_date']
      end

      if attributes.key?(:'transactions')
        if (value = attributes[:'transactions']).is_a?(Array)
          self.transactions = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@oldest_transaction_date.nil? && @oldest_transaction_date > 2147483647
        invalid_properties.push('invalid value for "oldest_transaction_date", must be smaller than or equal to 2147483647.')
      end

      if !@oldest_transaction_date.nil? && @oldest_transaction_date < 0
        invalid_properties.push('invalid value for "oldest_transaction_date", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@oldest_transaction_date.nil? && @oldest_transaction_date > 2147483647
      return false if !@oldest_transaction_date.nil? && @oldest_transaction_date < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] oldest_transaction_date Value to be assigned
    def oldest_transaction_date=(oldest_transaction_date)
      if oldest_transaction_date.nil?
        fail ArgumentError, 'oldest_transaction_date cannot be nil'
      end

      if oldest_transaction_date > 2147483647
        fail ArgumentError, 'invalid value for "oldest_transaction_date", must be smaller than or equal to 2147483647.'
      end

      if oldest_transaction_date < 0
        fail ArgumentError, 'invalid value for "oldest_transaction_date", must be greater than or equal to 0.'
      end

      @oldest_transaction_date = oldest_transaction_date
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          number == o.number &&
          type == o.type &&
          currency == o.currency &&
          aggregation_status_code == o.aggregation_status_code &&
          balance == o.balance &&
          balance_date == o.balance_date &&
          oldest_transaction_date == o.oldest_transaction_date &&
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
      [id, name, number, type, currency, aggregation_status_code, balance, balance_date, oldest_transaction_date, transactions].hash
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
