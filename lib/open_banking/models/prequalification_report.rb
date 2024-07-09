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
  # A Prequalification report
  class PrequalificationReport
    # A report ID
    attr_accessor :id

    # The type of customer (\"active\" or \"testing\" or \"\" for all types)
    attr_accessor :customer_type

    # A customer ID represented as a number. See Add Customer API for how to create a customer ID.
    attr_accessor :customer_id

    # Finicity indicator to track all activity associated with this report
    attr_accessor :request_id

    # Name of a Finicity partner
    attr_accessor :requester_name

    attr_accessor :end_user

    # A date in Unix epoch time (in seconds). See: [Handling Epoch Dates and Times](https://developer.mastercard.com/open-banking-us/documentation/codes-and-formats/). Note: If the report is retrieved on a day other than the day it was generated, on the header of the PDF version of the report there will be a \"Retrieved Date\" populated.
    attr_accessor :created_date

    # Title of the report
    attr_accessor :title

    # A consumer ID. See Create Consumer API for how to create a consumer ID.
    attr_accessor :consumer_id

    # Last 4 digits of a SSN
    attr_accessor :consumer_ssn

    # The dispute text
    attr_accessor :dispute_statement

    # A report type. Possible values:  * `voi`  * `voa`  * `voaHistory`  * `history`  * `voieTxVerify`  * `voieWithReport`  * `voieWithInterview`  * `voieWithStatement`  * `paystatement`   * `preQualVoa`  * `assetSummary`  * `voie`  * `transactions`  * `statement`  * `voiePayroll`  * `voeTransactions`  * `voePayroll`  * `cfrp`  * `cfrb`  * `barpcra`  * `barpnoncra`  * `barbcra`  * `barbftc`  * `barbnoncra`  * `cfrpcra`  * `cfrpnoncra`  * `cracfrbcra`  * `cfrbnoncra`  * `cfrbftc` 
    attr_accessor :type

    # A report generation status. Possible values:  * `inProgress`  * `success`  * `failure` 
    attr_accessor :status

    attr_accessor :constraints

    # In case errors occurred during the report generation
    attr_accessor :errors

    # A unique identifier that will be consistent across all reports created for the same customer
    attr_accessor :portfolio_id

    # The `postedDate` of the earliest transaction analyzed for the report. A date in Unix epoch time (in seconds). See: [Handling Epoch Dates and Times](https://developer.mastercard.com/open-banking-us/documentation/codes-and-formats/).
    attr_accessor :start_date

    # The `postedDate` of the latest transaction analyzed for the report. A date in Unix epoch time (in seconds). See: [Handling Epoch Dates and Times](https://developer.mastercard.com/open-banking-us/documentation/codes-and-formats/).
    attr_accessor :end_date

    # The number of days covered by the report
    attr_accessor :days

    # \"true\" if the report covers more than 180 days
    attr_accessor :seasoned

    # The sum of available balance for all of the accounts included in the report
    attr_accessor :consolidated_available_balance

    # A list of institution records, including information about the individual accounts in this report
    attr_accessor :institutions

    attr_accessor :assets

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'customer_type' => :'customerType',
        :'customer_id' => :'customerId',
        :'request_id' => :'requestId',
        :'requester_name' => :'requesterName',
        :'end_user' => :'endUser',
        :'created_date' => :'createdDate',
        :'title' => :'title',
        :'consumer_id' => :'consumerId',
        :'consumer_ssn' => :'consumerSsn',
        :'dispute_statement' => :'disputeStatement',
        :'type' => :'type',
        :'status' => :'status',
        :'constraints' => :'constraints',
        :'errors' => :'errors',
        :'portfolio_id' => :'portfolioId',
        :'start_date' => :'startDate',
        :'end_date' => :'endDate',
        :'days' => :'days',
        :'seasoned' => :'seasoned',
        :'consolidated_available_balance' => :'consolidatedAvailableBalance',
        :'institutions' => :'institutions',
        :'assets' => :'assets'
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
        :'customer_type' => :'String',
        :'customer_id' => :'Integer',
        :'request_id' => :'String',
        :'requester_name' => :'String',
        :'end_user' => :'ConsumerEndUser',
        :'created_date' => :'Integer',
        :'title' => :'String',
        :'consumer_id' => :'String',
        :'consumer_ssn' => :'String',
        :'dispute_statement' => :'String',
        :'type' => :'String',
        :'status' => :'String',
        :'constraints' => :'BaseReportAckConstraints',
        :'errors' => :'Array<ErrorMessage>',
        :'portfolio_id' => :'String',
        :'start_date' => :'Integer',
        :'end_date' => :'Integer',
        :'days' => :'Integer',
        :'seasoned' => :'Boolean',
        :'consolidated_available_balance' => :'Float',
        :'institutions' => :'Array<ReportInstitution>',
        :'assets' => :'PrequalificationReportAssetSummary'
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
      :'BaseReportAckWithPortfolioId'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenBanking::PrequalificationReport` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenBanking::PrequalificationReport`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'customer_type')
        self.customer_type = attributes[:'customer_type']
      end

      if attributes.key?(:'customer_id')
        self.customer_id = attributes[:'customer_id']
      end

      if attributes.key?(:'request_id')
        self.request_id = attributes[:'request_id']
      end

      if attributes.key?(:'requester_name')
        self.requester_name = attributes[:'requester_name']
      end

      if attributes.key?(:'end_user')
        self.end_user = attributes[:'end_user']
      end

      if attributes.key?(:'created_date')
        self.created_date = attributes[:'created_date']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'consumer_id')
        self.consumer_id = attributes[:'consumer_id']
      end

      if attributes.key?(:'consumer_ssn')
        self.consumer_ssn = attributes[:'consumer_ssn']
      end

      if attributes.key?(:'dispute_statement')
        self.dispute_statement = attributes[:'dispute_statement']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'constraints')
        self.constraints = attributes[:'constraints']
      end

      if attributes.key?(:'errors')
        if (value = attributes[:'errors']).is_a?(Array)
          self.errors = value
        end
      end

      if attributes.key?(:'portfolio_id')
        self.portfolio_id = attributes[:'portfolio_id']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'end_date')
        self.end_date = attributes[:'end_date']
      end

      if attributes.key?(:'days')
        self.days = attributes[:'days']
      end

      if attributes.key?(:'seasoned')
        self.seasoned = attributes[:'seasoned']
      end

      if attributes.key?(:'consolidated_available_balance')
        self.consolidated_available_balance = attributes[:'consolidated_available_balance']
      end

      if attributes.key?(:'institutions')
        if (value = attributes[:'institutions']).is_a?(Array)
          self.institutions = value
        end
      end

      if attributes.key?(:'assets')
        self.assets = attributes[:'assets']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@dispute_statement.nil? && @dispute_statement.to_s.length > 2000
        invalid_properties.push('invalid value for "dispute_statement", the character length must be smaller than or equal to 2000.')
      end

      if !@dispute_statement.nil? && @dispute_statement.to_s.length < 1
        invalid_properties.push('invalid value for "dispute_statement", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@dispute_statement.nil? && @dispute_statement.to_s.length > 2000
      return false if !@dispute_statement.nil? && @dispute_statement.to_s.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] dispute_statement Value to be assigned
    def dispute_statement=(dispute_statement)
      if dispute_statement.nil?
        fail ArgumentError, 'dispute_statement cannot be nil'
      end

      if dispute_statement.to_s.length > 2000
        fail ArgumentError, 'invalid value for "dispute_statement", the character length must be smaller than or equal to 2000.'
      end

      if dispute_statement.to_s.length < 1
        fail ArgumentError, 'invalid value for "dispute_statement", the character length must be great than or equal to 1.'
      end

      @dispute_statement = dispute_statement
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          customer_type == o.customer_type &&
          customer_id == o.customer_id &&
          request_id == o.request_id &&
          requester_name == o.requester_name &&
          end_user == o.end_user &&
          created_date == o.created_date &&
          title == o.title &&
          consumer_id == o.consumer_id &&
          consumer_ssn == o.consumer_ssn &&
          dispute_statement == o.dispute_statement &&
          type == o.type &&
          status == o.status &&
          constraints == o.constraints &&
          errors == o.errors &&
          portfolio_id == o.portfolio_id &&
          start_date == o.start_date &&
          end_date == o.end_date &&
          days == o.days &&
          seasoned == o.seasoned &&
          consolidated_available_balance == o.consolidated_available_balance &&
          institutions == o.institutions &&
          assets == o.assets
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, customer_type, customer_id, request_id, requester_name, end_user, created_date, title, consumer_id, consumer_ssn, dispute_statement, type, status, constraints, errors, portfolio_id, start_date, end_date, days, seasoned, consolidated_available_balance, institutions, assets].hash
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
