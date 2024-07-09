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
  # List of account owner Identity Insights
  class AccountOwnerIdentityInsights
    # True if the email address is valid.
    attr_accessor :is_email_valid

    # Count of days since the email was first observed in Ekata's Identity Network. If the email has not been observed before, first_seen_days will be 0.
    attr_accessor :email_first_seen_days

    # Returns a date that the email domain was created.
    attr_accessor :email_domain_creation_date

    # The match status between the input name and the queried entity. * not found * match * no-match
    attr_accessor :email_to_name

    # True if the IP address is considered risky, based on multiple IP data points and velocity calculations.
    attr_accessor :ip_risk

    # Comprehensive risk score associated with an IP address, with a higher score indicating a riskier IP address. A number between 0 and 1 rounded to three decimal places.
    attr_accessor :ip_risk_score

    # Count of days since the IP address was last observed in Ekata's Identity Network. If the IP address has not been observed before, IpLastSeenDays will be 0.
    attr_accessor :ip_last_seen_days

    # The ISO-3166 alpha-2 country code associated with the geolocation of the IP address.
    attr_accessor :ip_geolocation_country_code

    # More granular detail about the IP address location.
    attr_accessor :ip_geolocation_subdivision

    # The distance (in miles) between the IP address and the closest physical address associated with the phone number.
    attr_accessor :ip_phone_distance

    # The distance (in miles) between the IP address and the physical address.
    attr_accessor :ip_address_distance

    # True if the phone number is valid.
    attr_accessor :is_phone_valid

    # The line type of the phone number. * landline - traditional wired phone line. * fixed-voip - VoIP-based fixed line phones. * mobile - wireless phone line. * voicemail - voicemail-only service. * toll-free - callee pays for call. * premium - caller pays a premium for the call-e.g., 976 area code. * non-fixed-voip - Skype, for example * other - anything that does not match the previous categories.
    attr_accessor :phone_line_type

    # The company that provides voice and/or data services for the phone number. Carriers are returned at the MVNO level.
    attr_accessor :phone_carrier

    # The ISO-3166 alpha-2 country code associated with the phone number.
    attr_accessor :phone_country_code

    # Count of days since the phone was last observed in Ekata's Identity Network. If the phone has not been observed before, `phoneLastSeenDays` will be 0.
    attr_accessor :phone_last_seen_days

    # Count of days since the combination of phone and email was first observed in Ekata's Identity Network. If that combination has not been observed before, `phoneEmailFirstSeenDays` will be 0.
    attr_accessor :phone_email_first_seen_days

    # The match status between the input name and the queried entity.  * not-found  * match  * no-match
    attr_accessor :phone_to_name

    # The match status between the input phone and the queried entity. * match - Phone location matches input address line 1, address line 2, city, state, and postal code.  * postal-match - Phone location postal code matches input address postal code.  * zip4-match - Phone location postal code zip+4 matches input address postal code zip+4.  * city-state-match - Phone location city and state matches input address city and state. * metro-match - Phone location is in the same metro area as input address.  * country-match - Phone location country matches input address country.  * no-match - Phone location does not match input address.
    attr_accessor :phone_to_address

    # The most granular level to which the address could be validated. Ex. If the address was only valid to the city level (but not to the house level), it would return “valid_to_city”.   * missing_address - An input address was not provided.    * invalid - The input address is not valid.    * valid - The input address is valid.    * valid_to_country - The input address could only be validated to the country level. This means the country of the input address is valid, but the other elements of the input address were unable to be confirmed as valid or invalid.    * valid_to_city - The input address was validated to the city level. This means the country, state, city, and postal code of the input address are valid, but the street, house number, and subpremise of the input address were unable to be confirmed as valid or invalid.    * valid_to_street - The input address was validated to the street level. This means the country, state, city, postal code, and street of the input address are valid, but the house number and subpremise of the input address were unable to be confirmed as valid or invalid.      * valid_to_house_number - The input address was validated to the street and house number level. This means the country, state, city, postal code, street, and house number of the input address are valid, but the subpremise of the input address was unable to be confirmed as valid or invalid.      * valid_to_house_number_missing_apt - The input address was validated to the street and house number level. This means the country, state, city, postal code, street, and house number of the input address are valid, but the subpremise of the input address was missing and thus unable to be confirmed as valid or invalid.
    attr_accessor :address_validity_level

    # The match status between the input name and the queried entity. * not-found * match * no-match
    attr_accessor :address_to_name

    # Comprehensive network score built on behavioral insights such as velocity, popularity, volatility, and age of an attribute, with a higher score indicating a riskier account sign-up. A number between 0 and 1 rounded to three decimal places.
    attr_accessor :identity_network_score

    # Comprehensive identity risk score with a higher score indicating a riskier account sign-up.
    attr_accessor :identity_risk_score

    attr_accessor :warnings

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'is_email_valid' => :'isEmailValid',
        :'email_first_seen_days' => :'emailFirstSeenDays',
        :'email_domain_creation_date' => :'emailDomainCreationDate',
        :'email_to_name' => :'emailToName',
        :'ip_risk' => :'ipRisk',
        :'ip_risk_score' => :'ipRiskScore',
        :'ip_last_seen_days' => :'ipLastSeenDays',
        :'ip_geolocation_country_code' => :'ipGeolocationCountryCode',
        :'ip_geolocation_subdivision' => :'ipGeolocationSubdivision',
        :'ip_phone_distance' => :'ipPhoneDistance',
        :'ip_address_distance' => :'ipAddressDistance',
        :'is_phone_valid' => :'isPhoneValid',
        :'phone_line_type' => :'phoneLineType',
        :'phone_carrier' => :'phoneCarrier',
        :'phone_country_code' => :'phoneCountryCode',
        :'phone_last_seen_days' => :'phoneLastSeenDays',
        :'phone_email_first_seen_days' => :'phoneEmailFirstSeenDays',
        :'phone_to_name' => :'phoneToName',
        :'phone_to_address' => :'phoneToAddress',
        :'address_validity_level' => :'addressValidityLevel',
        :'address_to_name' => :'addressToName',
        :'identity_network_score' => :'identityNetworkScore',
        :'identity_risk_score' => :'identityRiskScore',
        :'warnings' => :'warnings'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'is_email_valid' => :'Boolean',
        :'email_first_seen_days' => :'Float',
        :'email_domain_creation_date' => :'String',
        :'email_to_name' => :'String',
        :'ip_risk' => :'Float',
        :'ip_risk_score' => :'Float',
        :'ip_last_seen_days' => :'Float',
        :'ip_geolocation_country_code' => :'String',
        :'ip_geolocation_subdivision' => :'String',
        :'ip_phone_distance' => :'Float',
        :'ip_address_distance' => :'Float',
        :'is_phone_valid' => :'Boolean',
        :'phone_line_type' => :'String',
        :'phone_carrier' => :'String',
        :'phone_country_code' => :'String',
        :'phone_last_seen_days' => :'Float',
        :'phone_email_first_seen_days' => :'Float',
        :'phone_to_name' => :'String',
        :'phone_to_address' => :'String',
        :'address_validity_level' => :'Float',
        :'address_to_name' => :'String',
        :'identity_network_score' => :'Float',
        :'identity_risk_score' => :'Float',
        :'warnings' => :'Array<String>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenBanking::AccountOwnerIdentityInsights` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenBanking::AccountOwnerIdentityInsights`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'is_email_valid')
        self.is_email_valid = attributes[:'is_email_valid']
      end

      if attributes.key?(:'email_first_seen_days')
        self.email_first_seen_days = attributes[:'email_first_seen_days']
      end

      if attributes.key?(:'email_domain_creation_date')
        self.email_domain_creation_date = attributes[:'email_domain_creation_date']
      end

      if attributes.key?(:'email_to_name')
        self.email_to_name = attributes[:'email_to_name']
      end

      if attributes.key?(:'ip_risk')
        self.ip_risk = attributes[:'ip_risk']
      end

      if attributes.key?(:'ip_risk_score')
        self.ip_risk_score = attributes[:'ip_risk_score']
      end

      if attributes.key?(:'ip_last_seen_days')
        self.ip_last_seen_days = attributes[:'ip_last_seen_days']
      end

      if attributes.key?(:'ip_geolocation_country_code')
        self.ip_geolocation_country_code = attributes[:'ip_geolocation_country_code']
      end

      if attributes.key?(:'ip_geolocation_subdivision')
        self.ip_geolocation_subdivision = attributes[:'ip_geolocation_subdivision']
      end

      if attributes.key?(:'ip_phone_distance')
        self.ip_phone_distance = attributes[:'ip_phone_distance']
      end

      if attributes.key?(:'ip_address_distance')
        self.ip_address_distance = attributes[:'ip_address_distance']
      end

      if attributes.key?(:'is_phone_valid')
        self.is_phone_valid = attributes[:'is_phone_valid']
      end

      if attributes.key?(:'phone_line_type')
        self.phone_line_type = attributes[:'phone_line_type']
      end

      if attributes.key?(:'phone_carrier')
        self.phone_carrier = attributes[:'phone_carrier']
      end

      if attributes.key?(:'phone_country_code')
        self.phone_country_code = attributes[:'phone_country_code']
      end

      if attributes.key?(:'phone_last_seen_days')
        self.phone_last_seen_days = attributes[:'phone_last_seen_days']
      end

      if attributes.key?(:'phone_email_first_seen_days')
        self.phone_email_first_seen_days = attributes[:'phone_email_first_seen_days']
      end

      if attributes.key?(:'phone_to_name')
        self.phone_to_name = attributes[:'phone_to_name']
      end

      if attributes.key?(:'phone_to_address')
        self.phone_to_address = attributes[:'phone_to_address']
      end

      if attributes.key?(:'address_validity_level')
        self.address_validity_level = attributes[:'address_validity_level']
      end

      if attributes.key?(:'address_to_name')
        self.address_to_name = attributes[:'address_to_name']
      end

      if attributes.key?(:'identity_network_score')
        self.identity_network_score = attributes[:'identity_network_score']
      end

      if attributes.key?(:'identity_risk_score')
        self.identity_risk_score = attributes[:'identity_risk_score']
      end

      if attributes.key?(:'warnings')
        if (value = attributes[:'warnings']).is_a?(Array)
          self.warnings = value
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
          is_email_valid == o.is_email_valid &&
          email_first_seen_days == o.email_first_seen_days &&
          email_domain_creation_date == o.email_domain_creation_date &&
          email_to_name == o.email_to_name &&
          ip_risk == o.ip_risk &&
          ip_risk_score == o.ip_risk_score &&
          ip_last_seen_days == o.ip_last_seen_days &&
          ip_geolocation_country_code == o.ip_geolocation_country_code &&
          ip_geolocation_subdivision == o.ip_geolocation_subdivision &&
          ip_phone_distance == o.ip_phone_distance &&
          ip_address_distance == o.ip_address_distance &&
          is_phone_valid == o.is_phone_valid &&
          phone_line_type == o.phone_line_type &&
          phone_carrier == o.phone_carrier &&
          phone_country_code == o.phone_country_code &&
          phone_last_seen_days == o.phone_last_seen_days &&
          phone_email_first_seen_days == o.phone_email_first_seen_days &&
          phone_to_name == o.phone_to_name &&
          phone_to_address == o.phone_to_address &&
          address_validity_level == o.address_validity_level &&
          address_to_name == o.address_to_name &&
          identity_network_score == o.identity_network_score &&
          identity_risk_score == o.identity_risk_score &&
          warnings == o.warnings
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [is_email_valid, email_first_seen_days, email_domain_creation_date, email_to_name, ip_risk, ip_risk_score, ip_last_seen_days, ip_geolocation_country_code, ip_geolocation_subdivision, ip_phone_distance, ip_address_distance, is_phone_valid, phone_line_type, phone_carrier, phone_country_code, phone_last_seen_days, phone_email_first_seen_days, phone_to_name, phone_to_address, address_validity_level, address_to_name, identity_network_score, identity_risk_score, warnings].hash
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