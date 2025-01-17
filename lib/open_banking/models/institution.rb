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
  # A financial institution
  class Institution
    # The ID of a financial institution, represented as a number
    attr_accessor :id

    # The name of the institution
    attr_accessor :name

    # \"true\": The institution is certified for the Transaction Aggregation product \"false\": The institution is decertified for the Transaction Aggregation product
    attr_accessor :trans_agg

    # \"true\": The institution is certified for the ACH product \"false\": The institution is decertified for the ACH product
    attr_accessor :ach

    # \"true\": The institution is certified for the Statement Aggregation product \"false\": The institution is decertified for the Statement Aggregation product
    attr_accessor :state_agg

    # \"true\": The institution is certified for the VOI product \"false\": The institution is decertified for the VOI product
    attr_accessor :voi

    # \"true\": The institution is certified for the VOA product \"false\": The institution is decertified for the VOA product
    attr_accessor :voa

    # \"true\": The institution is certified for the Account History Aggregation product \"false\": The institution is decertified for the Account History Aggregation product
    attr_accessor :aha

    # \"true\": The institution is certified for the Account Balance Check (ABC) product \"false\": The institution is decertified for the Account Balance Check (ABC) product
    attr_accessor :avail_balance

    # \"true\": The institution is certified for the Account Owner product \"false\": The institution is decertified for the Account Owner product
    attr_accessor :account_owner

    # \"true\": The institution is certified for the Student Loan Data product  \"false\": The institution is decertified for the Student Loan Data product
    attr_accessor :student_loan_data

    # \"true\": The institution is certified for the Loan Payment Detail product  \"false\": The institution is decertified for the Loan Payment Detail product
    attr_accessor :loan_payment_details

    # Values: Banking, Investments, Credit Cards/Accounts, Workplace Retirement, Mortgages and Loans, Insurance
    attr_accessor :account_type_description

    # A phone number (max length 15).
    attr_accessor :phone

    # The URL of the institution's primary home page
    attr_accessor :url_home_app

    # The URL of the institution's login page
    attr_accessor :url_logon_app

    # \"true\": The institution is an OAuth connection  \"false\": The institution isn't an OAuth connection
    attr_accessor :oauth_enabled

    # Institution's forgot password page
    attr_accessor :url_forgot_password

    # Institution's signup page
    attr_accessor :url_online_registration

    # Institution's class
    attr_accessor :_class

    # Special instructions given to customers for login
    attr_accessor :special_text

    # The time zone of the institution.
    attr_accessor :time_zone

    # Instructions given to the customer before they are sent to the institution website to login for OAuth institutions.  Note: this helps the customer to provide the proper permission for data needed for the application.
    attr_accessor :special_instructions

    # The title of the special instructions, if one exists or is required.
    attr_accessor :special_instutions_title

    attr_accessor :address

    # A currency code
    attr_accessor :currency

    # An email address
    attr_accessor :email

    # Status for the institution: \"online\", \"offline\", \"maintenance\", \"testing\"
    attr_accessor :status

    # The ID of a financial institution, represented as a number
    attr_accessor :new_institution_id

    attr_accessor :branding

    # The ID of a financial institution, represented as a number
    attr_accessor :oauth_institution_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'trans_agg' => :'transAgg',
        :'ach' => :'ach',
        :'state_agg' => :'stateAgg',
        :'voi' => :'voi',
        :'voa' => :'voa',
        :'aha' => :'aha',
        :'avail_balance' => :'availBalance',
        :'account_owner' => :'accountOwner',
        :'student_loan_data' => :'studentLoanData',
        :'loan_payment_details' => :'loanPaymentDetails',
        :'account_type_description' => :'accountTypeDescription',
        :'phone' => :'phone',
        :'url_home_app' => :'urlHomeApp',
        :'url_logon_app' => :'urlLogonApp',
        :'oauth_enabled' => :'oauthEnabled',
        :'url_forgot_password' => :'urlForgotPassword',
        :'url_online_registration' => :'urlOnlineRegistration',
        :'_class' => :'class',
        :'special_text' => :'specialText',
        :'time_zone' => :'timeZone',
        :'special_instructions' => :'specialInstructions',
        :'special_instutions_title' => :'specialInstutionsTitle',
        :'address' => :'address',
        :'currency' => :'currency',
        :'email' => :'email',
        :'status' => :'status',
        :'new_institution_id' => :'newInstitutionId',
        :'branding' => :'branding',
        :'oauth_institution_id' => :'oauthInstitutionId'
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
        :'trans_agg' => :'Boolean',
        :'ach' => :'Boolean',
        :'state_agg' => :'Boolean',
        :'voi' => :'Boolean',
        :'voa' => :'Boolean',
        :'aha' => :'Boolean',
        :'avail_balance' => :'Boolean',
        :'account_owner' => :'Boolean',
        :'student_loan_data' => :'Boolean',
        :'loan_payment_details' => :'Boolean',
        :'account_type_description' => :'String',
        :'phone' => :'String',
        :'url_home_app' => :'String',
        :'url_logon_app' => :'String',
        :'oauth_enabled' => :'Boolean',
        :'url_forgot_password' => :'String',
        :'url_online_registration' => :'String',
        :'_class' => :'String',
        :'special_text' => :'String',
        :'time_zone' => :'String',
        :'special_instructions' => :'Array<String>',
        :'special_instutions_title' => :'String',
        :'address' => :'InstitutionAddress',
        :'currency' => :'String',
        :'email' => :'String',
        :'status' => :'String',
        :'new_institution_id' => :'Integer',
        :'branding' => :'Branding',
        :'oauth_institution_id' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenBanking::Institution` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenBanking::Institution`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'trans_agg')
        self.trans_agg = attributes[:'trans_agg']
      else
        self.trans_agg = nil
      end

      if attributes.key?(:'ach')
        self.ach = attributes[:'ach']
      else
        self.ach = nil
      end

      if attributes.key?(:'state_agg')
        self.state_agg = attributes[:'state_agg']
      else
        self.state_agg = nil
      end

      if attributes.key?(:'voi')
        self.voi = attributes[:'voi']
      else
        self.voi = nil
      end

      if attributes.key?(:'voa')
        self.voa = attributes[:'voa']
      else
        self.voa = nil
      end

      if attributes.key?(:'aha')
        self.aha = attributes[:'aha']
      else
        self.aha = nil
      end

      if attributes.key?(:'avail_balance')
        self.avail_balance = attributes[:'avail_balance']
      else
        self.avail_balance = nil
      end

      if attributes.key?(:'account_owner')
        self.account_owner = attributes[:'account_owner']
      else
        self.account_owner = nil
      end

      if attributes.key?(:'student_loan_data')
        self.student_loan_data = attributes[:'student_loan_data']
      end

      if attributes.key?(:'loan_payment_details')
        self.loan_payment_details = attributes[:'loan_payment_details']
      end

      if attributes.key?(:'account_type_description')
        self.account_type_description = attributes[:'account_type_description']
      end

      if attributes.key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.key?(:'url_home_app')
        self.url_home_app = attributes[:'url_home_app']
      end

      if attributes.key?(:'url_logon_app')
        self.url_logon_app = attributes[:'url_logon_app']
      end

      if attributes.key?(:'oauth_enabled')
        self.oauth_enabled = attributes[:'oauth_enabled']
      else
        self.oauth_enabled = nil
      end

      if attributes.key?(:'url_forgot_password')
        self.url_forgot_password = attributes[:'url_forgot_password']
      end

      if attributes.key?(:'url_online_registration')
        self.url_online_registration = attributes[:'url_online_registration']
      end

      if attributes.key?(:'_class')
        self._class = attributes[:'_class']
      end

      if attributes.key?(:'special_text')
        self.special_text = attributes[:'special_text']
      end

      if attributes.key?(:'time_zone')
        self.time_zone = attributes[:'time_zone']
      end

      if attributes.key?(:'special_instructions')
        if (value = attributes[:'special_instructions']).is_a?(Array)
          self.special_instructions = value
        end
      end

      if attributes.key?(:'special_instutions_title')
        self.special_instutions_title = attributes[:'special_instutions_title']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      else
        self.currency = nil
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end

      if attributes.key?(:'new_institution_id')
        self.new_institution_id = attributes[:'new_institution_id']
      end

      if attributes.key?(:'branding')
        self.branding = attributes[:'branding']
      end

      if attributes.key?(:'oauth_institution_id')
        self.oauth_institution_id = attributes[:'oauth_institution_id']
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

      if @trans_agg.nil?
        invalid_properties.push('invalid value for "trans_agg", trans_agg cannot be nil.')
      end

      if @ach.nil?
        invalid_properties.push('invalid value for "ach", ach cannot be nil.')
      end

      if @state_agg.nil?
        invalid_properties.push('invalid value for "state_agg", state_agg cannot be nil.')
      end

      if @voi.nil?
        invalid_properties.push('invalid value for "voi", voi cannot be nil.')
      end

      if @voa.nil?
        invalid_properties.push('invalid value for "voa", voa cannot be nil.')
      end

      if @aha.nil?
        invalid_properties.push('invalid value for "aha", aha cannot be nil.')
      end

      if @avail_balance.nil?
        invalid_properties.push('invalid value for "avail_balance", avail_balance cannot be nil.')
      end

      if @account_owner.nil?
        invalid_properties.push('invalid value for "account_owner", account_owner cannot be nil.')
      end

      if @oauth_enabled.nil?
        invalid_properties.push('invalid value for "oauth_enabled", oauth_enabled cannot be nil.')
      end

      if @currency.nil?
        invalid_properties.push('invalid value for "currency", currency cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @trans_agg.nil?
      return false if @ach.nil?
      return false if @state_agg.nil?
      return false if @voi.nil?
      return false if @voa.nil?
      return false if @aha.nil?
      return false if @avail_balance.nil?
      return false if @account_owner.nil?
      return false if @oauth_enabled.nil?
      return false if @currency.nil?
      return false if @status.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          trans_agg == o.trans_agg &&
          ach == o.ach &&
          state_agg == o.state_agg &&
          voi == o.voi &&
          voa == o.voa &&
          aha == o.aha &&
          avail_balance == o.avail_balance &&
          account_owner == o.account_owner &&
          student_loan_data == o.student_loan_data &&
          loan_payment_details == o.loan_payment_details &&
          account_type_description == o.account_type_description &&
          phone == o.phone &&
          url_home_app == o.url_home_app &&
          url_logon_app == o.url_logon_app &&
          oauth_enabled == o.oauth_enabled &&
          url_forgot_password == o.url_forgot_password &&
          url_online_registration == o.url_online_registration &&
          _class == o._class &&
          special_text == o.special_text &&
          time_zone == o.time_zone &&
          special_instructions == o.special_instructions &&
          special_instutions_title == o.special_instutions_title &&
          address == o.address &&
          currency == o.currency &&
          email == o.email &&
          status == o.status &&
          new_institution_id == o.new_institution_id &&
          branding == o.branding &&
          oauth_institution_id == o.oauth_institution_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, name, trans_agg, ach, state_agg, voi, voa, aha, avail_balance, account_owner, student_loan_data, loan_payment_details, account_type_description, phone, url_home_app, url_logon_app, oauth_enabled, url_forgot_password, url_online_registration, _class, special_text, time_zone, special_instructions, special_instutions_title, address, currency, email, status, new_institution_id, branding, oauth_institution_id].hash
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
