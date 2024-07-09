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
  class AssetsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Asset by Customer and ID
    # Retrieve a binary file for the given asset ID.  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
    # @param customer_id [String] A customer ID
    # @param asset_id [String] The asset ID
    # @param [Hash] opts the optional parameters
    # @return [File]
    def get_asset_by_customer_id(customer_id, asset_id, opts = {})
      data, _status_code, _headers = get_asset_by_customer_id_with_http_info(customer_id, asset_id, opts)
      data
    end

    # Get Asset by Customer and ID
    # Retrieve a binary file for the given asset ID.  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
    # @param customer_id [String] A customer ID
    # @param asset_id [String] The asset ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def get_asset_by_customer_id_with_http_info(customer_id, asset_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssetsApi.get_asset_by_customer_id ...'
      end
      # verify the required parameter 'customer_id' is set
      if @api_client.config.client_side_validation && customer_id.nil?
        fail ArgumentError, "Missing the required parameter 'customer_id' when calling AssetsApi.get_asset_by_customer_id"
      end
      # verify the required parameter 'asset_id' is set
      if @api_client.config.client_side_validation && asset_id.nil?
        fail ArgumentError, "Missing the required parameter 'asset_id' when calling AssetsApi.get_asset_by_customer_id"
      end
      # resource path
      local_var_path = '/aggregation/v1/customers/{customerId}/assets/{assetId}'.sub('{' + 'customerId' + '}', CGI.escape(customer_id.to_s)).sub('{' + 'assetId' + '}', CGI.escape(asset_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/octet-stream', 'application/json', 'text/plain'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'File'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['FinicityAppToken', 'FinicityAppKey']

      new_options = opts.merge(
        :operation => :"AssetsApi.get_asset_by_customer_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssetsApi#get_asset_by_customer_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
