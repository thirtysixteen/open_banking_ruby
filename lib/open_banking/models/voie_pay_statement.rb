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
  class VOIEPayStatement
    # The pay period of the pay statement
    attr_accessor :pay_period

    # Designates whether the pay statement is billable
    attr_accessor :billable

    # The asset ID of the stored pay statement
    attr_accessor :asset_id

    # The listed pay date for the pay statement
    attr_accessor :pay_date

    # The beginning of the pay period
    attr_accessor :start_date

    # The end of the pay period
    attr_accessor :end_date

    # The total pay after deductions for the employee for the current pay period
    attr_accessor :net_pay_current

    # The total accumulation of pay after deductions for the employee for the current pay year
    attr_accessor :net_pay_ytd

    # The total pay before deductions for the employee for the current pay period
    attr_accessor :gross_pay_current

    # The total accumulation of pay before deductions for the employee for the current pay year
    attr_accessor :gross_pay_ytd

    # The company that provides the pay stub.
    attr_accessor :payroll_provider

    # The statement match category. Possible values:    * \"NET_PAY_MATCH\"     * \"SPLIT_INTERVIEW_AMOUNT_SUM_TO_NET_PAY_MATCH\"     * \"SPLIT_DIRECT_DEPOSIT_SUM_TO_NET_PAY_MATCH\"     * \"SPLIT_LESS_THAN_NET_PAY_SUM_TO_NET_PAY_MATCH\"     * \"PARTIAL\"     * \"TRANSACTION_DATE_RANGE_INVALID\"     * \"NO_MATCH\"
    attr_accessor :match_type

    attr_accessor :employer

    attr_accessor :employee

    # Information pertaining to the earnings on the pay statement
    attr_accessor :pay_stat

    # Information pertaining to deductions on the pay statement
    attr_accessor :deductions

    # Information pertaining to direct deposits on the pay statement
    attr_accessor :direct_deposits

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'pay_period' => :'payPeriod',
        :'billable' => :'billable',
        :'asset_id' => :'assetId',
        :'pay_date' => :'payDate',
        :'start_date' => :'startDate',
        :'end_date' => :'endDate',
        :'net_pay_current' => :'netPayCurrent',
        :'net_pay_ytd' => :'netPayYTD',
        :'gross_pay_current' => :'grossPayCurrent',
        :'gross_pay_ytd' => :'grossPayYTD',
        :'payroll_provider' => :'payrollProvider',
        :'match_type' => :'matchType',
        :'employer' => :'employer',
        :'employee' => :'employee',
        :'pay_stat' => :'payStat',
        :'deductions' => :'deductions',
        :'direct_deposits' => :'directDeposits'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'pay_period' => :'String',
        :'billable' => :'Boolean',
        :'asset_id' => :'String',
        :'pay_date' => :'Integer',
        :'start_date' => :'Integer',
        :'end_date' => :'Integer',
        :'net_pay_current' => :'Float',
        :'net_pay_ytd' => :'Float',
        :'gross_pay_current' => :'Float',
        :'gross_pay_ytd' => :'Float',
        :'payroll_provider' => :'String',
        :'match_type' => :'String',
        :'employer' => :'Employer',
        :'employee' => :'Employee',
        :'pay_stat' => :'Array<PayStat>',
        :'deductions' => :'Array<Deduction>',
        :'direct_deposits' => :'Array<DirectDeposit>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenBanking::VOIEPayStatement` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenBanking::VOIEPayStatement`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'pay_period')
        self.pay_period = attributes[:'pay_period']
      end

      if attributes.key?(:'billable')
        self.billable = attributes[:'billable']
      end

      if attributes.key?(:'asset_id')
        self.asset_id = attributes[:'asset_id']
      end

      if attributes.key?(:'pay_date')
        self.pay_date = attributes[:'pay_date']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'end_date')
        self.end_date = attributes[:'end_date']
      end

      if attributes.key?(:'net_pay_current')
        self.net_pay_current = attributes[:'net_pay_current']
      end

      if attributes.key?(:'net_pay_ytd')
        self.net_pay_ytd = attributes[:'net_pay_ytd']
      end

      if attributes.key?(:'gross_pay_current')
        self.gross_pay_current = attributes[:'gross_pay_current']
      end

      if attributes.key?(:'gross_pay_ytd')
        self.gross_pay_ytd = attributes[:'gross_pay_ytd']
      end

      if attributes.key?(:'payroll_provider')
        self.payroll_provider = attributes[:'payroll_provider']
      end

      if attributes.key?(:'match_type')
        self.match_type = attributes[:'match_type']
      end

      if attributes.key?(:'employer')
        self.employer = attributes[:'employer']
      end

      if attributes.key?(:'employee')
        self.employee = attributes[:'employee']
      end

      if attributes.key?(:'pay_stat')
        if (value = attributes[:'pay_stat']).is_a?(Array)
          self.pay_stat = value
        end
      end

      if attributes.key?(:'deductions')
        if (value = attributes[:'deductions']).is_a?(Array)
          self.deductions = value
        end
      end

      if attributes.key?(:'direct_deposits')
        if (value = attributes[:'direct_deposits']).is_a?(Array)
          self.direct_deposits = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          pay_period == o.pay_period &&
          billable == o.billable &&
          asset_id == o.asset_id &&
          pay_date == o.pay_date &&
          start_date == o.start_date &&
          end_date == o.end_date &&
          net_pay_current == o.net_pay_current &&
          net_pay_ytd == o.net_pay_ytd &&
          gross_pay_current == o.gross_pay_current &&
          gross_pay_ytd == o.gross_pay_ytd &&
          payroll_provider == o.payroll_provider &&
          match_type == o.match_type &&
          employer == o.employer &&
          employee == o.employee &&
          pay_stat == o.pay_stat &&
          deductions == o.deductions &&
          direct_deposits == o.direct_deposits
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [pay_period, billable, asset_id, pay_date, start_date, end_date, net_pay_current, net_pay_ytd, gross_pay_current, gross_pay_ytd, payroll_provider, match_type, employer, employee, pay_stat, deductions, direct_deposits].hash
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
