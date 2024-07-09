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

# Unit tests for OpenBanking::PaymentsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PaymentsApi' do
  before do
    # run before each test
    @api_instance = OpenBanking::PaymentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentsApi' do
    it 'should create an instance of PaymentsApi' do
      expect(@api_instance).to be_instance_of(OpenBanking::PaymentsApi)
    end
  end

  # unit tests for get_account_ach_details
  # Get Account ACH Details
  # Return the real account number and routing number details for an ACH payment.  Note: this is a premium service, billable per every successful API call.  _Supported account types_: \&quot;checking\&quot;, \&quot;savings\&quot;, \&quot;moneyMarket\&quot;  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
  # @param customer_id A customer ID
  # @param account_id The account ID
  # @param [Hash] opts the optional parameters
  # @return [ACHDetails]
  describe 'get_account_ach_details test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_account_owner
  # Get Account Owner
  # Retrieve the names and addresses of the account owner from a financial institution.  Note: this is a premium service, billable per every successful API call.  This service retrieves account data from the institution. This usually returns quickly, but in some scenarios may take a few minutes to complete. In the event of a timeout condition, retry the call.  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
  # @param customer_id A customer ID
  # @param account_id The account ID
  # @param [Hash] opts the optional parameters
  # @return [AccountOwner]
  describe 'get_account_owner test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_account_owner_details
  # Get Account Owner Details
  # This service retrieves the account details for an account holder from an institution. The following data objects are available.  * Account holders  * Addresses  * Emails  * Phones  * Documentations  * Identity Insights   Note: The data returned varies from institution to institution as not all of them make the same data available. This is a premium service, billable per each successful API call.  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
  # @param customer_id A customer ID
  # @param account_id The account ID
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :with_insights If this parameter is true, Identity Insights data will be returned along with the account owner information
  # @return [AccountOwnerHolders]
  describe 'get_account_owner_details test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_account_payment_instruction_details
  # Get Account ACH Details with RTP
  # Return the real account number and routing number details for an ACH payment along with the supported payment instruction details. If the RTP (Real Time Payment) value for “transferInEnabled” is true, then the account can receive RTPs. If the value for “transferOutEnabled” is true, then the account can send RTPs    Note: this is a premium service, billable per every successful API call.  _Supported account types_: \&quot;checking\&quot;, \&quot;savings\&quot;, \&quot;moneyMarket\&quot;  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
  # @param customer_id A customer ID
  # @param account_id The account ID
  # @param [Hash] opts the optional parameters
  # @return [PaymentInstructions]
  describe 'get_account_payment_instruction_details test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_available_balance
  # Get Available Balance - Cached
  # Retrieve the latest cached available and cleared account balances for a customer. Since we update and store balances throughout the day, this is the most accurate balance information available when a connection to a financial institution is unavailable or when a faster response is needed. Only deposit account types are supported: Checking, Savings, Money Market, and CD.  Note: this is a premium service, billable per every successful API call. Enrollment is required.  _Supported account types_: \&quot;checking\&quot;, \&quot;savings\&quot;, \&quot;moneyMarket\&quot;, \&quot;cd\&quot;  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
  # @param customer_id A customer ID
  # @param account_id The account ID
  # @param [Hash] opts the optional parameters
  # @return [AvailableBalance]
  describe 'get_available_balance test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_available_balance_live
  # Get Available Balance
  # Retrieve the available and cleared account balances for a single account in real-time directly from a financial institution.   You can define an additional query parameter &#x60;balance_cache_interval&#x60; to specify the time interval of the last cached balance. This parameter is used by the server to determine whether the cached balance is still valid or if it needs to be refreshed.     Note: this is a premium service, billable per every successful API call.  _Supported account types_: \&quot;checking\&quot;, \&quot;savings\&quot;, \&quot;moneyMarket\&quot;, \&quot;cd\&quot;  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
  # @param customer_id A customer ID
  # @param account_id The account ID
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :balance_cache_interval &#x60;balance_cache_interval&#x60; (in minutes) is used to decide whether to return existing cached balance or retrieve from financial institution in real-time. Details explained below: 1. If the cached balance data at server is older than provided &#x60;balance_cache_interval&#x60; then live balance from financial institution will be retrieved. 2. If the cached balance data is within provided &#x60;balance_cache_interval&#x60; allowed interval then balance from cache will be returned. 3. If &#x60;balance_cache_interval&#x60; is 0 or not provided, then live balance from financial institution will be retrieved.
  # @return [AvailableBalance]
  describe 'get_available_balance_live test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_loan_payment_details
  # Get Loan Payment Details
  # Return the loan payment details of the customer for a loan-type account.  Note: this is a premium service, billable per every successful API call.  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
  # @param customer_id A customer ID
  # @param account_id The account ID
  # @param [Hash] opts the optional parameters
  # @return [LoanPaymentDetails]
  describe 'get_loan_payment_details test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end