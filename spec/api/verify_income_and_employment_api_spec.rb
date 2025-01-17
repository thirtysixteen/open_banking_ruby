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

# Unit tests for OpenBanking::VerifyIncomeAndEmploymentApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VerifyIncomeAndEmploymentApi' do
  before do
    # run before each test
    @api_instance = OpenBanking::VerifyIncomeAndEmploymentApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VerifyIncomeAndEmploymentApi' do
    it 'should create an instance of VerifyIncomeAndEmploymentApi' do
      expect(@api_instance).to be_instance_of(OpenBanking::VerifyIncomeAndEmploymentApi)
    end
  end

  # unit tests for generate_pay_statement_report
  # Generate Pay Statement Report
  # Generate Pay Statement Extraction Report for the given customer. This service accepts asset IDs of the stored pay statements to generate a Pay Statement Extraction Report.  This is a premium service. The billing rate is the variable rate for Pay Statement Extraction Report under the current subscription plan. The billable event is the successful generation of a Pay Statement Extraction Report.  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
  # @param customer_id A customer ID
  # @param pay_statement_report_constraints 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :callback_url A Report Listener URL to receive notifications. The webhook must respond to the Finicity API with a 2xx HTTP status code.
  # @return [PayStatementReportAck]
  describe 'generate_pay_statement_report test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for generate_voe_payroll_report
  # Generate VOE - Payroll Report
  # Generate or refresh a VOE - Payroll report. Often used as a complementary report to the VOIE-Payroll report to fulfill the pre-close VOE requirements. It retrieves the customer&#39;s employment details and employment status through the payroll source without any income information.  This is a premium service. The billable event is the successful generation of a VOE - Payroll report.  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
  # @param customer_id A customer ID
  # @param payroll_report_constraints 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :callback_url A Report Listener URL to receive notifications. The webhook must respond to the Finicity API with a 2xx HTTP status code.
  # @return [PayrollReportAck]
  describe 'generate_voe_payroll_report test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for generate_voe_transactions_report
  # Generate VOE - Transactions Report
  # Premium Service: A billable event when the API response is successful.  MVS-Direct integration developers only.  Used as a complimentary report to the VOA with Income and VOIE - Paystub (with TXVerify) reports and used to fulfill the pre-close VOE requirements.  Retrieve the latest credit transaction information from the borrower&#39;s connected bank accounts and groups them into income streams so that you can view their payment history to ensure a direct deport was made within the expected cadence. The report displays transaction descriptions without any dollar amounts so that income re-verification isn&#39;t necessary.  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
  # @param customer_id A customer ID
  # @param voe_transactions_report_constraints 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :callback_url A Report Listener URL to receive notifications. The webhook must respond to the Finicity API with a 2xx HTTP status code.
  # @return [VOETransactionsReportAck]
  describe 'generate_voe_transactions_report test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for generate_voi_report
  # Generate VOI Report
  # Generate a Verification of Income (VOI) report for all checking, savings, and money market accounts for the given customer. This service retrieves up to two years of transaction history for each account and uses this information to generate the VOI report.  This is a premium service. The billing rate is the variable rate for Verification of Income under the current subscription plan. The billable event is the successful generation of a VOI report.  If no account of type checking, savings, or money market is found, the service will return HTTP 400 Bad Request.  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
  # @param customer_id A customer ID
  # @param voi_report_constraints 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :callback_url A Report Listener URL to receive notifications. The webhook must respond to the Finicity API with a 2xx HTTP status code.
  # @return [VOIReportAck]
  describe 'generate_voi_report test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for generate_voie_paystub_report
  # Generate VOIE - Paystub Report
  # Generate a VOIE - Paystub report. This service uses the provided paystub(s), which are passed into the request body as asset IDs (generated using the Store Customer Pay Statement API) to generate the VOIE - Paystub report with digitized paystub details.  This is a premium service. The billing rate is the variable rate for VOIE - Paystub under the current subscription plan. The billable event is the successful generation of a VOIE - Paystub Report.  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
  # @param customer_id A customer ID
  # @param voie_report_constraints 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :callback_url A Report Listener URL to receive notifications. The webhook must respond to the Finicity API with a 2xx HTTP status code.
  # @return [VOIEPaystubReportAck]
  describe 'generate_voie_paystub_report test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for generate_voie_paystub_with_tx_verify_report
  # Generate VOIE - Paystub (with TXVerify) Report
  # Generate a VOIE - Paystub (with TXVerify) report for all checking and savings under the given customer. This service retrieves up to two years of transaction history for the given accounts. It then uses this information as well as the provided paystub(s), which are passed into the request body as asset IDs (generated using the Store Customer Pay Statement API) to generate the VOIE - Paystub (with TXVerify) report.  Note: if you are using this API to refresh the bank transactions, use the same asset ID from the first report. A new paystub is not required unless the paystub is too old for underwriting requirements. Using the same asset ID that was on the original report and the previously extracted details will be used to speed up report generation response time.  This is a premium service. The billing rate is the variable rate for VOIE TXVerify under the current subscription plan. The billable event is the successful generation of a VOIE TXVerify Report.  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
  # @param customer_id A customer ID
  # @param voie_with_tx_verify_report_constraints 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :callback_url A Report Listener URL to receive notifications. The webhook must respond to the Finicity API with a 2xx HTTP status code.
  # @return [VOIEPaystubWithTXVerifyReportAck]
  describe 'generate_voie_paystub_with_tx_verify_report test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for refresh_voie_payroll_report
  # Generate VOIE - Payroll Report
  # Generate or refresh a VOIE - Payroll report. For clients using the product via a consumer permissioning experience via Connect, the original VOIE - Payroll report generates when the consumer completes the Connect experience, and this API is only used for future report refreshes without reengaging the consumer.  This is a premium service. The billable event is the successful generation of a VOIE - Payroll report.  _Supported regions_: ![🇺🇸](https://flagcdn.com/20x15/us.png)
  # @param customer_id A customer ID
  # @param payroll_report_constraints 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :callback_url A Report Listener URL to receive notifications. The webhook must respond to the Finicity API with a 2xx HTTP status code.
  # @return [PayrollReportAck]
  describe 'refresh_voie_payroll_report test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
