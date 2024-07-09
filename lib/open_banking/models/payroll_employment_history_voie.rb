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
  class PayrollEmploymentHistoryVOIE
    # The last time the payroll data was updated in the payroll provider's system
    attr_accessor :as_of_date

    # This is a Mastercard assigned ID to the employment record. It remains consistent for that employment record, even if the report is refreshed. It can be used to limit the employment records that are returned in the report.
    attr_accessor :employment_id

    # Name of the employer as stated by the employer in the payroll system
    attr_accessor :employer_name

    # The name of the payroll source where the data was retrieved
    attr_accessor :payroll_source

    # The name of the provider who provides payroll data to payroll source
    attr_accessor :payroll_provider

    attr_accessor :employee

    attr_accessor :employment

    attr_accessor :income

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'as_of_date' => :'asOfDate',
        :'employment_id' => :'employmentId',
        :'employer_name' => :'employerName',
        :'payroll_source' => :'payrollSource',
        :'payroll_provider' => :'payrollProvider',
        :'employee' => :'employee',
        :'employment' => :'employment',
        :'income' => :'income'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'as_of_date' => :'Integer',
        :'employment_id' => :'String',
        :'employer_name' => :'String',
        :'payroll_source' => :'String',
        :'payroll_provider' => :'String',
        :'employee' => :'PayrollEmployeeRecord',
        :'employment' => :'PayrollEmploymentRecord',
        :'income' => :'PayrollVOIEIncomeRecord'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenBanking::PayrollEmploymentHistoryVOIE` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenBanking::PayrollEmploymentHistoryVOIE`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'as_of_date')
        self.as_of_date = attributes[:'as_of_date']
      else
        self.as_of_date = nil
      end

      if attributes.key?(:'employment_id')
        self.employment_id = attributes[:'employment_id']
      end

      if attributes.key?(:'employer_name')
        self.employer_name = attributes[:'employer_name']
      else
        self.employer_name = nil
      end

      if attributes.key?(:'payroll_source')
        self.payroll_source = attributes[:'payroll_source']
      else
        self.payroll_source = nil
      end

      if attributes.key?(:'payroll_provider')
        self.payroll_provider = attributes[:'payroll_provider']
      end

      if attributes.key?(:'employee')
        self.employee = attributes[:'employee']
      else
        self.employee = nil
      end

      if attributes.key?(:'employment')
        self.employment = attributes[:'employment']
      else
        self.employment = nil
      end

      if attributes.key?(:'income')
        self.income = attributes[:'income']
      else
        self.income = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @as_of_date.nil?
        invalid_properties.push('invalid value for "as_of_date", as_of_date cannot be nil.')
      end

      if @employer_name.nil?
        invalid_properties.push('invalid value for "employer_name", employer_name cannot be nil.')
      end

      if @payroll_source.nil?
        invalid_properties.push('invalid value for "payroll_source", payroll_source cannot be nil.')
      end

      if @employee.nil?
        invalid_properties.push('invalid value for "employee", employee cannot be nil.')
      end

      if @employment.nil?
        invalid_properties.push('invalid value for "employment", employment cannot be nil.')
      end

      if @income.nil?
        invalid_properties.push('invalid value for "income", income cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @as_of_date.nil?
      return false if @employer_name.nil?
      return false if @payroll_source.nil?
      return false if @employee.nil?
      return false if @employment.nil?
      return false if @income.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          as_of_date == o.as_of_date &&
          employment_id == o.employment_id &&
          employer_name == o.employer_name &&
          payroll_source == o.payroll_source &&
          payroll_provider == o.payroll_provider &&
          employee == o.employee &&
          employment == o.employment &&
          income == o.income
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [as_of_date, employment_id, employer_name, payroll_source, payroll_provider, employee, employment, income].hash
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
