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
  # Registration status details for the application
  class AppStatus
    # Your Partner ID displayed in the [Developer Dashboard](https://developer.mastercard.com/account/log-in)
    attr_accessor :partner_id

    # Identifier to track the application registration from the App Registration and Get App Registration Status APIs
    attr_accessor :pre_app_id

    # A note on the registration. Typically used to indicate reasons for rejected apps.
    attr_accessor :note

    # `applicationId` value returned from the Get App Registration Status API and the partner assign the customers to. This cannot be changed once set. Only applicable in cases of partners with multiple registered applications. If the partner only has one app, this can usually be omitted. This field is populated after the app is in a status approved.
    attr_accessor :application_id

    # The name of the application assigned to the customer
    attr_accessor :app_name

    # A date in Unix epoch time (in seconds). See: [Handling Epoch Dates and Times](https://developer.mastercard.com/open-banking-us/documentation/codes-and-formats/).
    attr_accessor :submitted_date

    # A date in Unix epoch time (in seconds). See: [Handling Epoch Dates and Times](https://developer.mastercard.com/open-banking-us/documentation/codes-and-formats/).
    attr_accessor :modified_date

    # The status of an app registration request. \"A\" means approved. \"P\" means pending which is the status when initially submitted or when the app is modified and awaiting approval. \"R\" means rejected. If it is rejected there will be a note with the rejected reason.
    attr_accessor :status

    # Indicates scopes of data accessible to the app
    attr_accessor :scopes

    # A list of the registration status for each FI for the application
    attr_accessor :institution_details

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'partner_id' => :'partnerId',
        :'pre_app_id' => :'preAppId',
        :'note' => :'note',
        :'application_id' => :'applicationId',
        :'app_name' => :'appName',
        :'submitted_date' => :'submittedDate',
        :'modified_date' => :'modifiedDate',
        :'status' => :'status',
        :'scopes' => :'scopes',
        :'institution_details' => :'institutionDetails'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'partner_id' => :'String',
        :'pre_app_id' => :'String',
        :'note' => :'String',
        :'application_id' => :'String',
        :'app_name' => :'String',
        :'submitted_date' => :'Integer',
        :'modified_date' => :'Integer',
        :'status' => :'String',
        :'scopes' => :'String',
        :'institution_details' => :'Array<AppFinancialInstitutionStatus>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenBanking::AppStatus` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenBanking::AppStatus`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'partner_id')
        self.partner_id = attributes[:'partner_id']
      else
        self.partner_id = nil
      end

      if attributes.key?(:'pre_app_id')
        self.pre_app_id = attributes[:'pre_app_id']
      else
        self.pre_app_id = nil
      end

      if attributes.key?(:'note')
        self.note = attributes[:'note']
      end

      if attributes.key?(:'application_id')
        self.application_id = attributes[:'application_id']
      end

      if attributes.key?(:'app_name')
        self.app_name = attributes[:'app_name']
      else
        self.app_name = nil
      end

      if attributes.key?(:'submitted_date')
        self.submitted_date = attributes[:'submitted_date']
      else
        self.submitted_date = nil
      end

      if attributes.key?(:'modified_date')
        self.modified_date = attributes[:'modified_date']
      else
        self.modified_date = nil
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end

      if attributes.key?(:'scopes')
        self.scopes = attributes[:'scopes']
      end

      if attributes.key?(:'institution_details')
        if (value = attributes[:'institution_details']).is_a?(Array)
          self.institution_details = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @partner_id.nil?
        invalid_properties.push('invalid value for "partner_id", partner_id cannot be nil.')
      end

      if @pre_app_id.nil?
        invalid_properties.push('invalid value for "pre_app_id", pre_app_id cannot be nil.')
      end

      if @app_name.nil?
        invalid_properties.push('invalid value for "app_name", app_name cannot be nil.')
      end

      if @submitted_date.nil?
        invalid_properties.push('invalid value for "submitted_date", submitted_date cannot be nil.')
      end

      if @modified_date.nil?
        invalid_properties.push('invalid value for "modified_date", modified_date cannot be nil.')
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
      return false if @partner_id.nil?
      return false if @pre_app_id.nil?
      return false if @app_name.nil?
      return false if @submitted_date.nil?
      return false if @modified_date.nil?
      return false if @status.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          partner_id == o.partner_id &&
          pre_app_id == o.pre_app_id &&
          note == o.note &&
          application_id == o.application_id &&
          app_name == o.app_name &&
          submitted_date == o.submitted_date &&
          modified_date == o.modified_date &&
          status == o.status &&
          scopes == o.scopes &&
          institution_details == o.institution_details
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [partner_id, pre_app_id, note, application_id, app_name, submitted_date, modified_date, status, scopes, institution_details].hash
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