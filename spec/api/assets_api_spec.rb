=begin
#Open Banking

#OpenAPI specification for Finicity APIs.  Open Banking solutions in the US are provided by Finicity, a Mastercard company.

The version of the OpenAPI document: 1.19.0
Contact: apisupport@mastercard.com
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenBanking::AssetsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AssetsApi' do
  before do
    # run before each test
    @api_instance = OpenBanking::AssetsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AssetsApi' do
    it 'should create an instance of AssetsApi' do
      expect(@api_instance).to be_instance_of(OpenBanking::AssetsApi)
    end
  end

  # unit tests for get_asset_by_customer_id
  # Get Asset by Customer and ID
  # Retrieve a binary file for the given asset ID.  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
  # @param customer_id A customer ID
  # @param asset_id The asset ID
  # @param [Hash] opts the optional parameters
  # @return [File]
  describe 'get_asset_by_customer_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
