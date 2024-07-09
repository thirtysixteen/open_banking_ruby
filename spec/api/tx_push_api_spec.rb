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

# Unit tests for OpenBanking::TxPushApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TxPushApi' do
  before do
    # run before each test
    @api_instance = OpenBanking::TxPushApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TxPushApi' do
    it 'should create an instance of TxPushApi' do
      expect(@api_instance).to be_instance_of(OpenBanking::TxPushApi)
    end
  end

  # unit tests for create_tx_push_test_transaction
  # Create TxPush Test Transaction
  # Inject a transaction into the transaction list for a testing account. This allows an app to trigger TxPush notifications for the account in order to test the app&#39;s TxPush Listener service. This causes the platform to send one transaction event and one account event (showing that the account balance has changed). This service is only supported for testing accounts.  For additional details on this process, see [TxPush Listener Service](https://developer.mastercard.com/open-banking-us/documentation/products/manage/tx-push/#setting-up-the-txpush-listener-service).  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
  # @param customer_id A customer ID
  # @param account_id The account ID
  # @param test_tx_push_transaction 
  # @param [Hash] opts the optional parameters
  # @return [CreatedTestTxPushTransaction]
  describe 'create_tx_push_test_transaction test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_tx_push_subscription
  # Delete TxPush Subscription
  # Delete a specific subscription to TxPush notifications for the given account. This could be individual deleting the account or transactions events. No more events will be sent for that specific subscription.  For additional details on this process, see [TxPush Listener Service](https://developer.mastercard.com/open-banking-us/documentation/products/manage/tx-push/#setting-up-the-txpush-listener-service).  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
  # @param customer_id A customer ID
  # @param subscription_id The subscription ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_tx_push_subscription test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for disable_tx_push_notifications
  # Disable TxPush Notifications
  # Delete all TxPush subscriptions with their notifications for the given account. No more notifications will be sent for account or transaction events.  For additional details on this process, see [TxPush Listener Service](https://developer.mastercard.com/open-banking-us/documentation/products/manage/tx-push/#setting-up-the-txpush-listener-service).  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
  # @param customer_id A customer ID
  # @param account_id The account ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'disable_tx_push_notifications test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for subscribe_to_tx_push_notifications
  # Subscribe to TxPush Notifications
  # Register a client app&#39;s TxPush Listener to receive TxPush notifications related to the given account.  Each call to this service will return two records, one with class account and one with class transaction. Account events are sent when values change in the account&#39;s fields (such as &#x60;balance&#x60; or &#x60;interestRate&#x60;). Transaction events are sent whenever a new transaction is posted for the account. For institutions that do not provide TxPush services, notifications are sent as soon as Finicity finds a new transaction or new account data through regular aggregation processes.  The listener&#39;s URL must be secure (HTTPS) for any real-world account. In addition, the client&#39;s TxPush Listener will need to be verified. HTTP and HTTPS connections are only allowed on the standard ports 80 (HTTP) and 443 (HTTPS). The use of other ports will result with the call failing.  For additional details on this process, see [TxPush Listener Service](https://developer.mastercard.com/open-banking-us/documentation/products/manage/tx-push/#setting-up-the-txpush-listener-service).  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
  # @param customer_id A customer ID
  # @param account_id The account ID
  # @param tx_push_subscription_parameters 
  # @param [Hash] opts the optional parameters
  # @return [TxPushSubscriptions]
  describe 'subscribe_to_tx_push_notifications test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end