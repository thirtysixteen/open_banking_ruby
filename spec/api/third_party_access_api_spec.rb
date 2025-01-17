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

# Unit tests for OpenBanking::ThirdPartyAccessApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ThirdPartyAccessApi' do
  before do
    # run before each test
    @api_instance = OpenBanking::ThirdPartyAccessApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ThirdPartyAccessApi' do
    it 'should create an instance of ThirdPartyAccessApi' do
      expect(@api_instance).to be_instance_of(OpenBanking::ThirdPartyAccessApi)
    end
  end

  # unit tests for generate_third_party_access_key
  # Generate Third Party Access Key
  # Generate access key for third party partners. A partner can provide access to third party partners with this access key.
  # @param third_party_access_key_data 
  # @param [Hash] opts the optional parameters
  # @return [ThirdPartyAccessKeyReceiptData]
  describe 'generate_third_party_access_key test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for revoke_third_party_access_key
  # Revoke Third Party Access
  # Revoke access of third party partners
  # @param consent_receipt_id Third party access key receipt ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'revoke_third_party_access_key test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_third_party_access_key
  # Update Third Party Access
  # Update access for third party partners
  # @param consent_receipt_id Third party access key receipt ID
  # @param third_party_access_key_data 
  # @param [Hash] opts the optional parameters
  # @return [ThirdPartyAccessKeyReceiptData]
  describe 'update_third_party_access_key test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
