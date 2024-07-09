=begin
#Open Banking

#OpenAPI specification for Finicity APIs.  Open Banking solutions in the US are provided by Finicity, a Mastercard company.

The version of the OpenAPI document: 1.19.0
Contact: apisupport@mastercard.com
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'cgi'

module OpenBanking
  class AccountValidationAssistanceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Micro Entries Details
    # Fetch the micro entries details. `customerId` and `accountId` are the identifiers of the customer and account receiving the micro entries.    _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
    # @param customer_id [String] A customer ID
    # @param account_id [String] The account ID
    # @param [Hash] opts the optional parameters
    # @return [MicroDepositDetails]
    def get_micro_deposits_details(customer_id, account_id, opts = {})
      data, _status_code, _headers = get_micro_deposits_details_with_http_info(customer_id, account_id, opts)
      data
    end

    # Get Micro Entries Details
    # Fetch the micro entries details. &#x60;customerId&#x60; and &#x60;accountId&#x60; are the identifiers of the customer and account receiving the micro entries.    _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
    # @param customer_id [String] A customer ID
    # @param account_id [String] The account ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(MicroDepositDetails, Integer, Hash)>] MicroDepositDetails data, response status code and response headers
    def get_micro_deposits_details_with_http_info(customer_id, account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountValidationAssistanceApi.get_micro_deposits_details ...'
      end
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling AccountValidationAssistanceApi.get_micro_deposits_details"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AccountValidationAssistanceApi.get_micro_deposits_details"
      end
      # resource path
      local_var_path = '/microentry/v1/customers/{customerId}/accounts/{accountId}'.sub('{' + 'customerId' + '}', CGI.escape(customer_id.to_s)).sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/plain'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MicroDepositDetails'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['FinicityAppToken', 'FinicityAppKey']

      new_options = opts.merge(
        :operation => :"AccountValidationAssistanceApi.get_micro_deposits_details",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountValidationAssistanceApi#get_micro_deposits_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Initiate Micro Entries
    # Initiate the micro entries to customer's account.  Two random micro amounts less than a dollar each will be deposited to provided customer's account.    _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
    # @param customer_id [String] A customer ID
    # @param micro_deposit_initiation [MicroDepositInitiation] 
    # @param [Hash] opts the optional parameters
    # @return [InitiatedMicroDeposit]
    def initiate_micro_amount_deposits(customer_id, micro_deposit_initiation, opts = {})
      data, _status_code, _headers = initiate_micro_amount_deposits_with_http_info(customer_id, micro_deposit_initiation, opts)
      data
    end

    # Initiate Micro Entries
    # Initiate the micro entries to customer&#39;s account.  Two random micro amounts less than a dollar each will be deposited to provided customer&#39;s account.    _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
    # @param customer_id [String] A customer ID
    # @param micro_deposit_initiation [MicroDepositInitiation] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(InitiatedMicroDeposit, Integer, Hash)>] InitiatedMicroDeposit data, response status code and response headers
    def initiate_micro_amount_deposits_with_http_info(customer_id, micro_deposit_initiation, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountValidationAssistanceApi.initiate_micro_amount_deposits ...'
      end
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling AccountValidationAssistanceApi.initiate_micro_amount_deposits"
      end
      # verify the required parameter 'micro_deposit_initiation' is set
      if @api_client.config.client_side_validation && micro_deposit_initiation.nil?
        fail ArgumentError, "Missing the required parameter 'micro_deposit_initiation' when calling AccountValidationAssistanceApi.initiate_micro_amount_deposits"
      end
      # resource path
      local_var_path = '/microentry/v1/customers/{customerId}'.sub('{' + 'customerId' + '}', CGI.escape(customer_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/plain'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(micro_deposit_initiation)

      # return_type
      return_type = opts[:debug_return_type] || 'InitiatedMicroDeposit'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['FinicityAppToken', 'FinicityAppKey']

      new_options = opts.merge(
        :operation => :"AccountValidationAssistanceApi.initiate_micro_amount_deposits",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountValidationAssistanceApi#initiate_micro_amount_deposits\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Verify Micro Entries
    # Verify the micro entries as received by customer in customer's account. Customer needs to verify the micro amounts received in customer's account. `customerId` and `accountId` are the identifiers of the customer and account  receiving the micro entries.    _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
    # @param customer_id [String] A customer ID
    # @param account_id [String] The account ID
    # @param micro_deposit_verification [MicroDepositVerification] 
    # @param [Hash] opts the optional parameters
    # @return [VerifiedMicroDeposit]
    def verify_micro_amount_deposits(customer_id, account_id, micro_deposit_verification, opts = {})
      data, _status_code, _headers = verify_micro_amount_deposits_with_http_info(customer_id, account_id, micro_deposit_verification, opts)
      data
    end

    # Verify Micro Entries
    # Verify the micro entries as received by customer in customer&#39;s account. Customer needs to verify the micro amounts received in customer&#39;s account. &#x60;customerId&#x60; and &#x60;accountId&#x60; are the identifiers of the customer and account  receiving the micro entries.    _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
    # @param customer_id [String] A customer ID
    # @param account_id [String] The account ID
    # @param micro_deposit_verification [MicroDepositVerification] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(VerifiedMicroDeposit, Integer, Hash)>] VerifiedMicroDeposit data, response status code and response headers
    def verify_micro_amount_deposits_with_http_info(customer_id, account_id, micro_deposit_verification, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountValidationAssistanceApi.verify_micro_amount_deposits ...'
      end
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling AccountValidationAssistanceApi.verify_micro_amount_deposits"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AccountValidationAssistanceApi.verify_micro_amount_deposits"
      end
      # verify the required parameter 'micro_deposit_verification' is set
      if @api_client.config.client_side_validation && micro_deposit_verification.nil?
        fail ArgumentError, "Missing the required parameter 'micro_deposit_verification' when calling AccountValidationAssistanceApi.verify_micro_amount_deposits"
      end
      # resource path
      local_var_path = '/microentry/v1/customers/{customerId}/accounts/{accountId}/amounts'.sub('{' + 'customerId' + '}', CGI.escape(customer_id.to_s)).sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/plain'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(micro_deposit_verification)

      # return_type
      return_type = opts[:debug_return_type] || 'VerifiedMicroDeposit'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['FinicityAppToken', 'FinicityAppKey']

      new_options = opts.merge(
        :operation => :"AccountValidationAssistanceApi.verify_micro_amount_deposits",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountValidationAssistanceApi#verify_micro_amount_deposits\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end