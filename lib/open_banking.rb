=begin
#Open Banking

#OpenAPI specification for Finicity APIs.  Open Banking solutions in the US are provided by Finicity, a Mastercard company.

The version of the OpenAPI document: 1.19.0
Contact: apisupport@mastercard.com
Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

# Common files
require 'open_banking/api_client'
require 'open_banking/api_error'
require 'open_banking/version'
require 'open_banking/configuration'

# Models
require 'open_banking/models/ach_details'
require 'open_banking/models/af_balance_analytics_report'
require 'open_banking/models/af_business'
require 'open_banking/models/af_business_address'
require 'open_banking/models/af_cash_flow_analytics_report'
require 'open_banking/models/access_token'
require 'open_banking/models/account_analytics'
require 'open_banking/models/account_details'
require 'open_banking/models/account_details_tx_based'
require 'open_banking/models/account_owner'
require 'open_banking/models/account_owner_address'
require 'open_banking/models/account_owner_details'
require 'open_banking/models/account_owner_documentation'
require 'open_banking/models/account_owner_email'
require 'open_banking/models/account_owner_holders'
require 'open_banking/models/account_owner_identity_insights'
require 'open_banking/models/account_owner_phone'
require 'open_banking/models/analytics_report_ack'
require 'open_banking/models/analytics_report_constraints'
require 'open_banking/models/analytics_report_constraints_out'
require 'open_banking/models/analytics_report_data'
require 'open_banking/models/analytics_reports_account'
require 'open_banking/models/annual_income'
require 'open_banking/models/app'
require 'open_banking/models/app_financial_institution_status'
require 'open_banking/models/app_status'
require 'open_banking/models/app_statuses'
require 'open_banking/models/application'
require 'open_banking/models/application_response'
require 'open_banking/models/asset'
require 'open_banking/models/available_balance'
require 'open_banking/models/balance_analytics_account_result'
require 'open_banking/models/balance_analytics_business_summary'
require 'open_banking/models/balance_analytics_metrics'
require 'open_banking/models/balance_analytics_report'
require 'open_banking/models/balance_and_cash_flow_analytics_report_constraints'
require 'open_banking/models/base_report_ack'
require 'open_banking/models/base_report_ack_constraints'
require 'open_banking/models/base_report_ack_with_portfolio_id'
require 'open_banking/models/birthday'
require 'open_banking/models/borrower'
require 'open_banking/models/branding'
require 'open_banking/models/branding_wrapper'
require 'open_banking/models/business'
require 'open_banking/models/business_details'
require 'open_banking/models/cadence_details'
require 'open_banking/models/cash_flow_activity_deposits_credits'
require 'open_banking/models/cash_flow_activity_withdrawals_debits'
require 'open_banking/models/cash_flow_analytics_account_result'
require 'open_banking/models/cash_flow_analytics_business_summary'
require 'open_banking/models/cash_flow_analytics_metrics'
require 'open_banking/models/cash_flow_analytics_report'
require 'open_banking/models/cash_flow_cash_flow_balance'
require 'open_banking/models/cash_flow_cash_flow_balance_summary'
require 'open_banking/models/cash_flow_cash_flow_characteristic'
require 'open_banking/models/cash_flow_cash_flow_characteristics_summary'
require 'open_banking/models/cash_flow_cash_flow_credit'
require 'open_banking/models/cash_flow_cash_flow_credit_summary'
require 'open_banking/models/cash_flow_cash_flow_debit'
require 'open_banking/models/cash_flow_cash_flow_debit_summary'
require 'open_banking/models/cash_flow_inflow_attributes'
require 'open_banking/models/cash_flow_insufficient_funds_fees'
require 'open_banking/models/cash_flow_monthly_cash_flow_balance_summaries'
require 'open_banking/models/cash_flow_monthly_cash_flow_balances'
require 'open_banking/models/cash_flow_monthly_cash_flow_characteristics'
require 'open_banking/models/cash_flow_monthly_cash_flow_characteristics_summaries'
require 'open_banking/models/cash_flow_monthly_cash_flow_credit_summaries'
require 'open_banking/models/cash_flow_monthly_cash_flow_credits'
require 'open_banking/models/cash_flow_monthly_cash_flow_debit_summaries'
require 'open_banking/models/cash_flow_monthlycashflow_debits'
require 'open_banking/models/cash_flow_negative_triggers'
require 'open_banking/models/cash_flow_num_weeks_zeros'
require 'open_banking/models/cash_flow_outflow_attributes'
require 'open_banking/models/cash_flow_possible_loan_deposits'
require 'open_banking/models/cash_flow_possible_loan_deposits_account'
require 'open_banking/models/cash_flow_possible_loan_deposits_institutions'
require 'open_banking/models/cash_flow_report'
require 'open_banking/models/cash_flow_report_account'
require 'open_banking/models/cash_flow_report_ack'
require 'open_banking/models/cash_flow_report_constraints'
require 'open_banking/models/cash_flow_report_constraints_out'
require 'open_banking/models/cash_flow_transaction_analytics_attributes'
require 'open_banking/models/cash_flow_transaction_analytics_attributes_last_transaction_date_inner'
require 'open_banking/models/categorization'
require 'open_banking/models/certified_institution'
require 'open_banking/models/certified_institutions'
require 'open_banking/models/child_institution'
require 'open_banking/models/connect_email_parameters'
require 'open_banking/models/connect_email_url'
require 'open_banking/models/connect_joint_borrower_email_parameters'
require 'open_banking/models/connect_joint_borrower_parameters'
require 'open_banking/models/connect_parameters'
require 'open_banking/models/connect_url'
require 'open_banking/models/consumer'
require 'open_banking/models/consumer_end_user'
require 'open_banking/models/consumer_info'
require 'open_banking/models/consumer_update'
require 'open_banking/models/created_consumer'
require 'open_banking/models/created_customer'
require 'open_banking/models/created_test_tx_push_transaction'
require 'open_banking/models/customer'
require 'open_banking/models/customer_account'
require 'open_banking/models/customer_account_detail'
require 'open_banking/models/customer_account_multiple_statement'
require 'open_banking/models/customer_account_multiple_statements'
require 'open_banking/models/customer_account_position'
require 'open_banking/models/customer_account_simple'
require 'open_banking/models/customer_accounts'
require 'open_banking/models/customer_accounts_simple'
require 'open_banking/models/customer_analytics'
require 'open_banking/models/customer_authorization_details'
require 'open_banking/models/customer_update'
require 'open_banking/models/customer_with_app_data'
require 'open_banking/models/customers'
require 'open_banking/models/deduction'
require 'open_banking/models/deductions'
require 'open_banking/models/descriptor'
require 'open_banking/models/direct_deposit'
require 'open_banking/models/direct_deposits'
require 'open_banking/models/direct_pay_statements'
require 'open_banking/models/dispute_statement_error_message'
require 'open_banking/models/earnings'
require 'open_banking/models/email_options'
require 'open_banking/models/employee'
require 'open_banking/models/employer'
require 'open_banking/models/error_message'
require 'open_banking/models/experiences'
require 'open_banking/models/financial_institution'
require 'open_banking/models/fix_connect_parameters'
require 'open_banking/models/get_customer200_response'
require 'open_banking/models/initiated_micro_deposit'
require 'open_banking/models/institution'
require 'open_banking/models/institution_address'
require 'open_banking/models/institution_response'
require 'open_banking/models/institution_wrapper'
require 'open_banking/models/institutions'
require 'open_banking/models/insufficient_funds_transaction'
require 'open_banking/models/lite_connect_parameters'
require 'open_banking/models/loan_payment_details'
require 'open_banking/models/loan_payment_details_account'
require 'open_banking/models/loan_payment_details_group'
require 'open_banking/models/loan_payment_details_loan'
require 'open_banking/models/main_pay_statement_fields'
require 'open_banking/models/micro_deposit_details'
require 'open_banking/models/micro_deposit_initiation'
require 'open_banking/models/micro_deposit_verification'
require 'open_banking/models/micro_deposit_verification_error'
require 'open_banking/models/micro_entry_verify_request_parameter'
require 'open_banking/models/monthly_income'
require 'open_banking/models/net_monthly'
require 'open_banking/models/new_address'
require 'open_banking/models/new_business'
require 'open_banking/models/new_consumer'
require 'open_banking/models/new_customer'
require 'open_banking/models/obb_account_details'
require 'open_banking/models/obb_account_owner'
require 'open_banking/models/obb_analytics_report'
require 'open_banking/models/obb_analytics_report_ack'
require 'open_banking/models/obb_average_weekly_balance'
require 'open_banking/models/obb_current_report_request_details'
require 'open_banking/models/obb_daily_balance'
require 'open_banking/models/obb_data_availability'
require 'open_banking/models/obb_date_range_and_amount'
require 'open_banking/models/obb_date_range_and_count'
require 'open_banking/models/obb_error_message'
require 'open_banking/models/obb_institution'
require 'open_banking/models/obb_num_weeks_average_balance_increasing'
require 'open_banking/models/obb_report_header'
require 'open_banking/models/obb_week_of_year'
require 'open_banking/models/partner_credentials'
require 'open_banking/models/partner_credentials_with_new_secret'
require 'open_banking/models/pay_stat'
require 'open_banking/models/pay_statement'
require 'open_banking/models/pay_statement_data'
require 'open_banking/models/pay_statement_for_voie'
require 'open_banking/models/pay_statement_report'
require 'open_banking/models/pay_statement_report_ack'
require 'open_banking/models/pay_statement_report_constraints'
require 'open_banking/models/payment_history_account_summary'
require 'open_banking/models/payment_history_account_summary_account_owner'
require 'open_banking/models/payment_history_analytics'
require 'open_banking/models/payment_history_customer_monthly_summary'
require 'open_banking/models/payment_history_report'
require 'open_banking/models/payment_history_transactions_summary'
require 'open_banking/models/payment_instruction'
require 'open_banking/models/payment_instructions'
require 'open_banking/models/payroll_data'
require 'open_banking/models/payroll_data_out'
require 'open_banking/models/payroll_employee_address'
require 'open_banking/models/payroll_employee_record'
require 'open_banking/models/payroll_employer_address'
require 'open_banking/models/payroll_employment_history_voe'
require 'open_banking/models/payroll_employment_history_voie'
require 'open_banking/models/payroll_employment_record'
require 'open_banking/models/payroll_report_ack'
require 'open_banking/models/payroll_report_constraints'
require 'open_banking/models/payroll_report_constraints_out'
require 'open_banking/models/payroll_voe_income_record'
require 'open_banking/models/payroll_voie_income_record'
require 'open_banking/models/paystub_monthly_income_record'
require 'open_banking/models/paystub_tx_verify_monthly_income_record'
require 'open_banking/models/phone_number_format'
require 'open_banking/models/portfolio_consumer'
require 'open_banking/models/portfolio_report'
require 'open_banking/models/portfolio_summary'
require 'open_banking/models/portfolio_with_consumer_summary'
require 'open_banking/models/prequalification_report'
require 'open_banking/models/prequalification_report_account'
require 'open_banking/models/prequalification_report_ack'
require 'open_banking/models/prequalification_report_asset_summary'
require 'open_banking/models/prequalification_report_constraints'
require 'open_banking/models/prequalification_report_constraints_out'
require 'open_banking/models/receiver'
require 'open_banking/models/registered_application'
require 'open_banking/models/report'
require 'open_banking/models/report_account_position'
require 'open_banking/models/report_custom_field'
require 'open_banking/models/report_income_estimate'
require 'open_banking/models/report_income_stream_summary'
require 'open_banking/models/report_institution'
require 'open_banking/models/report_institution_account'
require 'open_banking/models/report_summaries'
require 'open_banking/models/report_summary'
require 'open_banking/models/report_transaction'
require 'open_banking/models/report_transaction_base1'
require 'open_banking/models/report_transaction_base2'
require 'open_banking/models/report_transaction_new_tx_based'
require 'open_banking/models/security_freeze_error_message'
require 'open_banking/models/state_attribute'
require 'open_banking/models/state_period'
require 'open_banking/models/state_time_interval'
require 'open_banking/models/statement_data'
require 'open_banking/models/statement_report'
require 'open_banking/models/statement_report_ack'
require 'open_banking/models/statement_report_constraints'
require 'open_banking/models/stream_model'
require 'open_banking/models/subscription_record'
require 'open_banking/models/test_tx_push_transaction'
require 'open_banking/models/third_party_access_key_data'
require 'open_banking/models/third_party_access_key_receipt_data'
require 'open_banking/models/third_party_access_period'
require 'open_banking/models/third_party_access_product'
require 'open_banking/models/third_party_access_proof'
require 'open_banking/models/third_party_access_provenance'
require 'open_banking/models/third_party_access_receipt'
require 'open_banking/models/third_party_access_receipt_data'
require 'open_banking/models/transaction'
require 'open_banking/models/transactional_attribute'
require 'open_banking/models/transactional_period'
require 'open_banking/models/transactional_time_interval'
require 'open_banking/models/transactions'
require 'open_banking/models/transactions_report'
require 'open_banking/models/transactions_report_account'
require 'open_banking/models/transactions_report_ack'
require 'open_banking/models/transactions_report_constraints'
require 'open_banking/models/transactions_report_constraints_out'
require 'open_banking/models/tx_push_subscription_parameters'
require 'open_banking/models/tx_push_subscriptions'
require 'open_banking/models/tx_verify_interview'
require 'open_banking/models/voai_report_income_stream'
require 'open_banking/models/voa_report'
require 'open_banking/models/voa_report_account'
require 'open_banking/models/voa_report_ack'
require 'open_banking/models/voa_report_constraints'
require 'open_banking/models/voa_report_constraints_out'
require 'open_banking/models/voa_with_income_report'
require 'open_banking/models/voa_with_income_report_account'
require 'open_banking/models/voa_with_income_report_ack'
require 'open_banking/models/voa_with_income_report_constraints'
require 'open_banking/models/voa_with_income_report_constraints_out'
require 'open_banking/models/voe_payroll_report'
require 'open_banking/models/voe_transactions_report'
require 'open_banking/models/voe_transactions_report_account'
require 'open_banking/models/voe_transactions_report_ack'
require 'open_banking/models/voe_transactions_report_constraints'
require 'open_banking/models/voe_transactions_report_constraints_out'
require 'open_banking/models/voe_transactions_report_income_stream'
require 'open_banking/models/voie_pay_statement'
require 'open_banking/models/voie_payroll_report'
require 'open_banking/models/voie_paystub_pay_statement'
require 'open_banking/models/voie_paystub_report'
require 'open_banking/models/voie_paystub_report_ack'
require 'open_banking/models/voie_paystub_with_statement_pay_statement'
require 'open_banking/models/voie_paystub_with_tx_verify_report'
require 'open_banking/models/voie_paystub_with_tx_verify_report_ack'
require 'open_banking/models/voie_report_constraints'
require 'open_banking/models/voietx_verify_report_account'
require 'open_banking/models/voietx_verify_report_income_stream'
require 'open_banking/models/voie_with_interview_data'
require 'open_banking/models/voie_with_statement_data'
require 'open_banking/models/voie_with_tx_verify_report_constraints'
require 'open_banking/models/voie_with_tx_verify_report_constraints_out'
require 'open_banking/models/voi_report'
require 'open_banking/models/voi_report_account'
require 'open_banking/models/voi_report_ack'
require 'open_banking/models/voi_report_constraints'
require 'open_banking/models/voi_report_constraints_out'
require 'open_banking/models/voi_report_income_stream'
require 'open_banking/models/verified_micro_deposit'

# APIs
require 'open_banking/api/account_validation_assistance_api'
require 'open_banking/api/accounts_api'
require 'open_banking/api/accounts_simple_api'
require 'open_banking/api/app_registration_api'
require 'open_banking/api/assets_api'
require 'open_banking/api/authentication_api'
require 'open_banking/api/balance_analytics_api'
require 'open_banking/api/bank_statements_api'
require 'open_banking/api/businesses_api_api'
require 'open_banking/api/cash_flow_api'
require 'open_banking/api/cash_flow_analytics_api'
require 'open_banking/api/connect_api'
require 'open_banking/api/consumers_api'
require 'open_banking/api/customer_authorization_details_api'
require 'open_banking/api/customers_api'
require 'open_banking/api/institutions_api'
require 'open_banking/api/pay_statements_api'
require 'open_banking/api/payment_history_api'
require 'open_banking/api/payments_api'
require 'open_banking/api/portfolios_api'
require 'open_banking/api/reports_api'
require 'open_banking/api/third_party_access_api'
require 'open_banking/api/transactions_api'
require 'open_banking/api/tx_push_api'
require 'open_banking/api/verify_assets_api'
require 'open_banking/api/verify_income_and_employment_api'

module OpenBanking
  class << self
    # Customize default settings for the SDK using block.
    #   OpenBanking.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
