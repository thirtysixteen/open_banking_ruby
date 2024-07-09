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

# Unit tests for OpenBanking::TransactionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TransactionsApi' do
  before do
    # run before each test
    @api_instance = OpenBanking::TransactionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TransactionsApi' do
    it 'should create an instance of TransactionsApi' do
      expect(@api_instance).to be_instance_of(OpenBanking::TransactionsApi)
    end
  end

  # unit tests for generate_transactions_report
  # Generate Transactions Report
  # Generate a Transaction Report for the given accounts under the given customer. This service retrieves up to 24 months of transaction history for the given customer. It then uses this information to generate the Transaction Report.  This is a premium service. A billable event will be created upon the successful generation of the Transactions Report.  Before calling this API, a consumer must be created for the given customer ID (see Consumers APIs).  There cannot be more than 24 months between &#x60;fromDate&#x60; and &#x60;toDate&#x60;.  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
  # @param customer_id A customer ID
  # @param to_date A end date
  # @param transactions_report_constraints 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :callback_url A Report Listener URL to receive notifications. The webhook must respond to the Finicity API with a 2xx HTTP status code.
  # @option opts [Boolean] :include_pending If pending transactions must be included
  # @return [TransactionsReportAck]
  describe 'generate_transactions_report test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_all_customer_transactions
  # Get All Customer Transactions
  # Get all transactions available for this customer within the given date range, across all accounts. This service supports paging and sorting by &#x60;transactionDate&#x60; (or &#x60;postedDate&#x60; if no transaction date is provided), with a maximum of 1000 transactions per request.  Standard consumer aggregation provides up to 180 days of transactions prior to the date each account was added to the Finicity system. To access older transactions, you must first call the service Load Historic Transactions for Account.  There is no limit for the size of the window between &#x60;fromDate&#x60; and &#x60;toDate&#x60;, however, the maximum number of transactions returned on one page is 1000.  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
  # @param customer_id A customer ID
  # @param from_date A start date
  # @param to_date A end date
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start Index of the page of results to return
  # @option opts [Integer] :limit Maximum number of results per page
  # @option opts [String] :sort Date sort order: \&quot;asc\&quot; for ascending, \&quot;desc\&quot; for descending
  # @option opts [Boolean] :include_pending If pending transactions must be included
  # @return [Transactions]
  describe 'get_all_customer_transactions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_customer_account_transactions
  # Get Customer Account Transactions
  # Get all transactions available for this customer account within the given date range. This service supports paging and sorting by &#x60;transactionDate&#x60; (or &#x60;postedDate&#x60; if no transaction date is provided), with a maximum of 1000 transactions per request.  Standard consumer aggregation provides up to 180 days of transactions prior to the date each account was added to the Finicity system. To access older transactions, you must first call the Cash Flow Verification service Load Historic Transactions for Account.  There is no limit for the size of the window between &#x60;fromDate&#x60; and &#x60;toDate&#x60;, however, the maximum number of transactions returned on one page is 1000.  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
  # @param customer_id A customer ID
  # @param account_id The account ID
  # @param from_date A start date
  # @param to_date A end date
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start Index of the page of results to return
  # @option opts [Integer] :limit Maximum number of results per page
  # @option opts [String] :sort Date sort order: \&quot;asc\&quot; for ascending, \&quot;desc\&quot; for descending
  # @option opts [Boolean] :include_pending If pending transactions must be included
  # @return [Transactions]
  describe 'get_customer_account_transactions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_customer_transaction
  # Get Customer Transaction by ID
  # Get details for the given transaction.  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
  # @param customer_id A customer ID
  # @param transaction_id A transaction ID
  # @param [Hash] opts the optional parameters
  # @return [Transaction]
  describe 'get_customer_transaction test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for load_historic_transactions_for_customer_account
  # Load Historic Transactions for Customer Account
  # Connect to the account&#39;s financial institution and load up to 24 months of historic transactions for the account. Length of history varies by institution.  This is a premium service. The billable event is a call to this service specifying a customer ID that has not been seen before by this service. (If this service is called multiple times with the same customer ID, to load transactions from multiple accounts, only one billable event has occurred.)  The recommended timeout setting for this request is 180 seconds in order to receive a response. However, you can terminate the connection after making the call the operation will still complete. You will have to pull the account records to check for an updated aggregation attempt date to know when the refresh is complete.  The date range sent to the institution is calculated from the account&#39;s &#x60;createdDate&#x60;. This means that calling this service a second time for the same account normally will not add any new transactions for the account. For this reason, a second call to this service for a known account ID will usually return immediately.  In a few specific scenarios, it may be desirable to force a second connection to the institution for a known account ID. Some examples are:  * The institution&#39;s policy has changed, making more transactions available * Finicity has now added a longer transaction history support for the institution * The first call encountered an error, and the resulting Aggregation Ticket has now been fixed by the Finicity Support Team  In these cases, the POST request can contain the parameter &#x60;force&#x3D;true&#x60; in the request body to force the second connection.  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
  # @param customer_id A customer ID
  # @param account_id The account ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'load_historic_transactions_for_customer_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
