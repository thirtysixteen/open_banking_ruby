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

# Unit tests for OpenBanking::InstitutionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'InstitutionsApi' do
  before do
    # run before each test
    @api_instance = OpenBanking::InstitutionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InstitutionsApi' do
    it 'should create an instance of InstitutionsApi' do
      expect(@api_instance).to be_instance_of(OpenBanking::InstitutionsApi)
    end
  end

  # unit tests for get_certified_institutions
  # Get Certified Institutions
  # Search for financial institutions by certified product.  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :search Search term (financial institution &#x60;name&#x60; field). Leave empty for all FIs.
  # @option opts [Integer] :start Index of the page of results to return
  # @option opts [Integer] :limit Maximum number of results per page
  # @option opts [String] :type A product type: \&quot;transAgg\&quot;, \&quot;ach\&quot;, \&quot;stateAgg\&quot;, \&quot;voi\&quot;, \&quot;voa\&quot;, \&quot;aha\&quot;, \&quot;availBalance\&quot;, \&quot;accountOwner\&quot;
  # @option opts [Array<String>] :supported_countries A list of country codes, &#39;*&#39; for all countries.
  # @return [CertifiedInstitutions]
  describe 'get_certified_institutions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_certified_institutions_with_rssd
  # Get Certified Institutions With RSSD
  # Search for certified financial institutions w/RSSD.  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :search Search term (financial institution &#x60;name&#x60; field). Leave empty for all FIs.
  # @option opts [Integer] :start Index of the page of results to return
  # @option opts [Integer] :limit Maximum number of results per page
  # @option opts [String] :type A product type: \&quot;transAgg\&quot;, \&quot;ach\&quot;, \&quot;stateAgg\&quot;, \&quot;voi\&quot;, \&quot;voa\&quot;, \&quot;aha\&quot;, \&quot;availBalance\&quot;, \&quot;accountOwner\&quot;
  # @option opts [Array<String>] :supported_countries A list of country codes, &#39;*&#39; for all countries.
  # @return [CertifiedInstitutions]
  describe 'get_certified_institutions_with_rssd test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_institution
  # Get Institution by ID
  # Get financial institution details by ID.  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
  # @param institution_id The institution ID
  # @param [Hash] opts the optional parameters
  # @return [InstitutionWrapper]
  describe 'get_institution test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_institution_branding
  # Get Institution Branding by ID
  # Return the branding information for a financial institution.  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
  # @param institution_id The institution ID
  # @param [Hash] opts the optional parameters
  # @return [BrandingWrapper]
  describe 'get_institution_branding test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_institutions
  # Get Institutions
  # Search for financial institutions.  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :search Search term (financial institution &#x60;name&#x60; field). Leave empty for all FIs.
  # @option opts [Integer] :start Index of the page of results to return
  # @option opts [Integer] :limit Maximum number of results per page
  # @option opts [String] :type A product type: \&quot;transAgg\&quot;, \&quot;ach\&quot;, \&quot;stateAgg\&quot;, \&quot;voi\&quot;, \&quot;voa\&quot;, \&quot;aha\&quot;, \&quot;availBalance\&quot;, \&quot;accountOwner\&quot;
  # @option opts [Array<String>] :supported_countries A list of country codes, &#39;*&#39; for all countries.
  # @return [Institutions]
  describe 'get_institutions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
