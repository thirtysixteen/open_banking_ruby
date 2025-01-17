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
  class CashFlowAnalyticsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Generate Cash Flow Analytics
    # Cash Flow Analytics for Business analyzes cash flow over time to report metrics and identify behavior that may indicate risk.  Calculated metrics include: * Average transaction value by month over the requested time period * Net cash flow over the requested time period and broken down by month * Count and report of weeks in the requested time period where there   were zero transactions posted to the customer's accounts  * Minimum/maximum/average/sum/count of deposits by month * Minimum/maximum/average/sum/count of withdrawals by month * Estimated amount of deposits that can be classified as business   revenue  * Number of transactions posted incurring a non-sufficient funds (NSF)   fee, and net amount charged in NSF fees   This version of the API is intended for piloting and integration testing your application with the Cash Flow Analytics product. It does not adhere to FCRA requirements, and should not be used for production/lending purposes. See _Generate Cash Flow Analytics - FCRA_ for the FCRA compliant version of this API.  A successful call to this API will generate analytics and store a report within Finicity. The report can be retrieved via _Get Cash Flow Analytics Report_ (operation: _GetCashFlowAnalyticsReport_).  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
    # @param customer_id [String] A customer ID
    # @param balance_and_cash_flow_analytics_report_constraints [BalanceAndCashFlowAnalyticsReportConstraints] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :reference_number Partner-provided reference number to correlate reports.
    # @return [ObbAnalyticsReportAck]
    def generate_cash_flow_analytics(customer_id, balance_and_cash_flow_analytics_report_constraints, opts = {})
      data, _status_code, _headers = generate_cash_flow_analytics_with_http_info(customer_id, balance_and_cash_flow_analytics_report_constraints, opts)
      data
    end

    # Generate Cash Flow Analytics
    # Cash Flow Analytics for Business analyzes cash flow over time to report metrics and identify behavior that may indicate risk.  Calculated metrics include: * Average transaction value by month over the requested time period * Net cash flow over the requested time period and broken down by month * Count and report of weeks in the requested time period where there   were zero transactions posted to the customer&#39;s accounts  * Minimum/maximum/average/sum/count of deposits by month * Minimum/maximum/average/sum/count of withdrawals by month * Estimated amount of deposits that can be classified as business   revenue  * Number of transactions posted incurring a non-sufficient funds (NSF)   fee, and net amount charged in NSF fees   This version of the API is intended for piloting and integration testing your application with the Cash Flow Analytics product. It does not adhere to FCRA requirements, and should not be used for production/lending purposes. See _Generate Cash Flow Analytics - FCRA_ for the FCRA compliant version of this API.  A successful call to this API will generate analytics and store a report within Finicity. The report can be retrieved via _Get Cash Flow Analytics Report_ (operation: _GetCashFlowAnalyticsReport_).  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
    # @param customer_id [String] A customer ID
    # @param balance_and_cash_flow_analytics_report_constraints [BalanceAndCashFlowAnalyticsReportConstraints] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :reference_number Partner-provided reference number to correlate reports.
    # @return [Array<(ObbAnalyticsReportAck, Integer, Hash)>] ObbAnalyticsReportAck data, response status code and response headers
    def generate_cash_flow_analytics_with_http_info(customer_id, balance_and_cash_flow_analytics_report_constraints, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CashFlowAnalyticsApi.generate_cash_flow_analytics ...'
      end
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling CashFlowAnalyticsApi.generate_cash_flow_analytics"
      end
      # verify the required parameter 'balance_and_cash_flow_analytics_report_constraints' is set
      if @api_client.config.client_side_validation && balance_and_cash_flow_analytics_report_constraints.nil?
        fail ArgumentError, "Missing the required parameter 'balance_and_cash_flow_analytics_report_constraints' when calling CashFlowAnalyticsApi.generate_cash_flow_analytics"
      end
      # resource path
      local_var_path = '/analytics/cashflow/v1/customer/{customerId}'.sub('{' + 'customerId' + '}', CGI.escape(customer_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'reference-number'] = opts[:'reference_number'] if !opts[:'reference_number'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(balance_and_cash_flow_analytics_report_constraints)

      # return_type
      return_type = opts[:debug_return_type] || 'ObbAnalyticsReportAck'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['FinicityAppToken', 'FinicityAppKey']

      new_options = opts.merge(
        :operation => :"CashFlowAnalyticsApi.generate_cash_flow_analytics",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CashFlowAnalyticsApi#generate_cash_flow_analytics\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate Cash Flow Analytics - FCRA
    # Cash Flow Analytics for Business analyzes cash flow over time to report metrics and identify behavior that may indicate risk.  Calculated metrics include: * Average transaction value by month over the requested time period * Net cash flow over the requested time period and broken down by month * Count and report of weeks in the requested time period where there   were zero transactions posted to the customer's accounts  * Minimum/maximum/average/sum/count of deposits by month * Minimum/maximum/average/sum/count of withdrawals by month * Estimated amount of deposits that can be classified as business   revenue  * Number of transactions posted incurring a non-sufficient funds (NSF)   fee, and net amount charged in NSF fees   This version of the API is intended for production use. It maintains and enforces all compliance with FCRA rules and requirements.  *Note:* this is a premium service, billable per every successful API call for non-testing customers.  A successful call to this API will generate analytics and store a report within Finicity. The report can be retrieved via _Get Cash Flow Analytics Report - FCRA_ (operation: _GetCashFlowAnalyticsReportFCRA_).  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
    # @param customer_id [String] A customer ID
    # @param balance_and_cash_flow_analytics_report_constraints [BalanceAndCashFlowAnalyticsReportConstraints] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :reference_number Partner-provided reference number to correlate reports.
    # @return [ObbAnalyticsReportAck]
    def generate_cash_flow_analytics_fcra(customer_id, balance_and_cash_flow_analytics_report_constraints, opts = {})
      data, _status_code, _headers = generate_cash_flow_analytics_fcra_with_http_info(customer_id, balance_and_cash_flow_analytics_report_constraints, opts)
      data
    end

    # Generate Cash Flow Analytics - FCRA
    # Cash Flow Analytics for Business analyzes cash flow over time to report metrics and identify behavior that may indicate risk.  Calculated metrics include: * Average transaction value by month over the requested time period * Net cash flow over the requested time period and broken down by month * Count and report of weeks in the requested time period where there   were zero transactions posted to the customer&#39;s accounts  * Minimum/maximum/average/sum/count of deposits by month * Minimum/maximum/average/sum/count of withdrawals by month * Estimated amount of deposits that can be classified as business   revenue  * Number of transactions posted incurring a non-sufficient funds (NSF)   fee, and net amount charged in NSF fees   This version of the API is intended for production use. It maintains and enforces all compliance with FCRA rules and requirements.  *Note:* this is a premium service, billable per every successful API call for non-testing customers.  A successful call to this API will generate analytics and store a report within Finicity. The report can be retrieved via _Get Cash Flow Analytics Report - FCRA_ (operation: _GetCashFlowAnalyticsReportFCRA_).  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
    # @param customer_id [String] A customer ID
    # @param balance_and_cash_flow_analytics_report_constraints [BalanceAndCashFlowAnalyticsReportConstraints] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :reference_number Partner-provided reference number to correlate reports.
    # @return [Array<(ObbAnalyticsReportAck, Integer, Hash)>] ObbAnalyticsReportAck data, response status code and response headers
    def generate_cash_flow_analytics_fcra_with_http_info(customer_id, balance_and_cash_flow_analytics_report_constraints, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CashFlowAnalyticsApi.generate_cash_flow_analytics_fcra ...'
      end
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling CashFlowAnalyticsApi.generate_cash_flow_analytics_fcra"
      end
      # verify the required parameter 'balance_and_cash_flow_analytics_report_constraints' is set
      if @api_client.config.client_side_validation && balance_and_cash_flow_analytics_report_constraints.nil?
        fail ArgumentError, "Missing the required parameter 'balance_and_cash_flow_analytics_report_constraints' when calling CashFlowAnalyticsApi.generate_cash_flow_analytics_fcra"
      end
      # resource path
      local_var_path = '/analytics/cashflow/v1/customer/{customerId}/fcra'.sub('{' + 'customerId' + '}', CGI.escape(customer_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'reference-number'] = opts[:'reference_number'] if !opts[:'reference_number'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(balance_and_cash_flow_analytics_report_constraints)

      # return_type
      return_type = opts[:debug_return_type] || 'ObbAnalyticsReportAck'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['FinicityAppToken', 'FinicityAppKey']

      new_options = opts.merge(
        :operation => :"CashFlowAnalyticsApi.generate_cash_flow_analytics_fcra",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CashFlowAnalyticsApi#generate_cash_flow_analytics_fcra\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate Cashflow Analytics Report - Personal/Business
    # Generate a Cashflow Analytics Report for a given customer. This service retrieves up to two years of transaction history from connected accounts.  Cashflow Analytics analyzes transaction over time to report metrics and identify behavior that may indicate risk.  Before calling this API, a consumer or business may need to be created for the given customer ID based on the user type (see Consumer/Business APIs).  If no account type of checking or savings is found, the service will return HTTP 400 Bad Request.  This is a premium service, billable per every successful API call for non-testing customers. A successful call to this API will generate analytics report which can be retrieved via Get Report by Customer or Get Report by Consumer.  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
    # @param customer_id [String] A customer ID
    # @param user_type [String] UserType indicates if the request is for a business or personal use case, Allowed values: business/personal.
    # @param analytics_report_constraints [AnalyticsReportConstraints] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :callback_url A Report Listener URL to receive notifications. The webhook must respond to the Finicity API with a 2xx HTTP status code.
    # @return [AnalyticsReportAck]
    def generate_cashflow_analytics_report(customer_id, user_type, analytics_report_constraints, opts = {})
      data, _status_code, _headers = generate_cashflow_analytics_report_with_http_info(customer_id, user_type, analytics_report_constraints, opts)
      data
    end

    # Generate Cashflow Analytics Report - Personal/Business
    # Generate a Cashflow Analytics Report for a given customer. This service retrieves up to two years of transaction history from connected accounts.  Cashflow Analytics analyzes transaction over time to report metrics and identify behavior that may indicate risk.  Before calling this API, a consumer or business may need to be created for the given customer ID based on the user type (see Consumer/Business APIs).  If no account type of checking or savings is found, the service will return HTTP 400 Bad Request.  This is a premium service, billable per every successful API call for non-testing customers. A successful call to this API will generate analytics report which can be retrieved via Get Report by Customer or Get Report by Consumer.  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
    # @param customer_id [String] A customer ID
    # @param user_type [String] UserType indicates if the request is for a business or personal use case, Allowed values: business/personal.
    # @param analytics_report_constraints [AnalyticsReportConstraints] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :callback_url A Report Listener URL to receive notifications. The webhook must respond to the Finicity API with a 2xx HTTP status code.
    # @return [Array<(AnalyticsReportAck, Integer, Hash)>] AnalyticsReportAck data, response status code and response headers
    def generate_cashflow_analytics_report_with_http_info(customer_id, user_type, analytics_report_constraints, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CashFlowAnalyticsApi.generate_cashflow_analytics_report ...'
      end
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling CashFlowAnalyticsApi.generate_cashflow_analytics_report"
      end
      # verify the required parameter 'user_type' is set
      if @api_client.config.client_side_validation && user_type.nil?
        fail ArgumentError, "Missing the required parameter 'user_type' when calling CashFlowAnalyticsApi.generate_cashflow_analytics_report"
      end
      # verify the required parameter 'analytics_report_constraints' is set
      if @api_client.config.client_side_validation && analytics_report_constraints.nil?
        fail ArgumentError, "Missing the required parameter 'analytics_report_constraints' when calling CashFlowAnalyticsApi.generate_cashflow_analytics_report"
      end
      # resource path
      local_var_path = '/decisioning/v2/customers/{customerId}/reports/cashflow-analytics/userTypes/{userType}'.sub('{' + 'customerId' + '}', CGI.escape(customer_id.to_s)).sub('{' + 'userType' + '}', CGI.escape(user_type.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'callbackUrl'] = opts[:'callback_url'] if !opts[:'callback_url'].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(analytics_report_constraints)

      # return_type
      return_type = opts[:debug_return_type] || 'AnalyticsReportAck'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['FinicityAppToken', 'FinicityAppKey']

      new_options = opts.merge(
        :operation => :"CashFlowAnalyticsApi.generate_cashflow_analytics_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CashFlowAnalyticsApi#generate_cashflow_analytics_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get OBB Analytics Report
    # Retrieve the report saved by _Generate Balance Analytics_, _Generate Cash Flow Analytics_, or _Generate Payment History_. Requires the report ID generated by the previous call.  Report data can either be retrieved as a JSON document or a PDF file.  To specify the format required, set the _Accept request header_ to either **application/json** or **application/pdf**. If neither is set, the report format will be returned as a JSON document.  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
    # @param obb_report_id [String] Report ID generated and returned by OBB products
    # @param [Hash] opts the optional parameters
    # @return [ObbAnalyticsReport]
    def get_obb_analytics_report(obb_report_id, opts = {})
      data, _status_code, _headers = get_obb_analytics_report_with_http_info(obb_report_id, opts)
      data
    end

    # Get OBB Analytics Report
    # Retrieve the report saved by _Generate Balance Analytics_, _Generate Cash Flow Analytics_, or _Generate Payment History_. Requires the report ID generated by the previous call.  Report data can either be retrieved as a JSON document or a PDF file.  To specify the format required, set the _Accept request header_ to either **application/json** or **application/pdf**. If neither is set, the report format will be returned as a JSON document.  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
    # @param obb_report_id [String] Report ID generated and returned by OBB products
    # @param [Hash] opts the optional parameters
    # @return [Array<(ObbAnalyticsReport, Integer, Hash)>] ObbAnalyticsReport data, response status code and response headers
    def get_obb_analytics_report_with_http_info(obb_report_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CashFlowAnalyticsApi.get_obb_analytics_report ...'
      end
      # verify the required parameter 'obb_report_id' is set
      if @api_client.config.client_side_validation && obb_report_id.nil?
        fail ArgumentError, "Missing the required parameter 'obb_report_id' when calling CashFlowAnalyticsApi.get_obb_analytics_report"
      end
      # resource path
      local_var_path = '/analytics/data/v1/{obb_report_id}'.sub('{' + 'obb_report_id' + '}', CGI.escape(obb_report_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/pdf'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ObbAnalyticsReport'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['FinicityAppToken', 'FinicityAppKey']

      new_options = opts.merge(
        :operation => :"CashFlowAnalyticsApi.get_obb_analytics_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CashFlowAnalyticsApi#get_obb_analytics_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get OBB Analytics Report - FCRA
    # Retrieve the report saved by _Generate Balance Analytics - FCRA_, _Generate Cash Flow Analytics - FCRA_, or _Generate Payment History - FCRA_. Requires the report ID generated by the previous call.  Report data can either be retrieved as a JSON document or a PDF file.  To specify the format required, set the _Accept request header_ to either **application/json** or **application/pdf**. If neither is set, the report format will be returned as a JSON document.  *Note:* this is a premium service, billable per every successful API call for non-testing customers.  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
    # @param obb_report_id [String] Report ID generated and returned by OBB products
    # @param purpose [String] 2-digit code from [Permissible Purpose Codes](https://developer.mastercard.com/open-banking-us/documentation/products/lend/report-handling/permissible-purpose-codes/), specifying the reason for retrieving this report. Required for retrieving some reports.
    # @param [Hash] opts the optional parameters
    # @return [ObbAnalyticsReport]
    def get_obb_analytics_report_fcra(obb_report_id, purpose, opts = {})
      data, _status_code, _headers = get_obb_analytics_report_fcra_with_http_info(obb_report_id, purpose, opts)
      data
    end

    # Get OBB Analytics Report - FCRA
    # Retrieve the report saved by _Generate Balance Analytics - FCRA_, _Generate Cash Flow Analytics - FCRA_, or _Generate Payment History - FCRA_. Requires the report ID generated by the previous call.  Report data can either be retrieved as a JSON document or a PDF file.  To specify the format required, set the _Accept request header_ to either **application/json** or **application/pdf**. If neither is set, the report format will be returned as a JSON document.  *Note:* this is a premium service, billable per every successful API call for non-testing customers.  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
    # @param obb_report_id [String] Report ID generated and returned by OBB products
    # @param purpose [String] 2-digit code from [Permissible Purpose Codes](https://developer.mastercard.com/open-banking-us/documentation/products/lend/report-handling/permissible-purpose-codes/), specifying the reason for retrieving this report. Required for retrieving some reports.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ObbAnalyticsReport, Integer, Hash)>] ObbAnalyticsReport data, response status code and response headers
    def get_obb_analytics_report_fcra_with_http_info(obb_report_id, purpose, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CashFlowAnalyticsApi.get_obb_analytics_report_fcra ...'
      end
      # verify the required parameter 'obb_report_id' is set
      if @api_client.config.client_side_validation && obb_report_id.nil?
        fail ArgumentError, "Missing the required parameter 'obb_report_id' when calling CashFlowAnalyticsApi.get_obb_analytics_report_fcra"
      end
      # verify the required parameter 'purpose' is set
      if @api_client.config.client_side_validation && purpose.nil?
        fail ArgumentError, "Missing the required parameter 'purpose' when calling CashFlowAnalyticsApi.get_obb_analytics_report_fcra"
      end
      # resource path
      local_var_path = '/analytics/data/v1/{obb_report_id}/fcra'.sub('{' + 'obb_report_id' + '}', CGI.escape(obb_report_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'purpose'] = purpose

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/pdf'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ObbAnalyticsReport'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['FinicityAppToken', 'FinicityAppKey']

      new_options = opts.merge(
        :operation => :"CashFlowAnalyticsApi.get_obb_analytics_report_fcra",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CashFlowAnalyticsApi#get_obb_analytics_report_fcra\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
