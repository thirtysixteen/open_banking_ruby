# OpenBanking::VOIETXVerifyReportAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the account |  |
| **number** | **String** | The account number from the institution (all digits except the last four are obfuscated) |  |
| **owner_name** | **String** | The name(s) of the account owner(s). If the owner information is not available, this field will not appear in the report. If the account has multiple owners then all owners will be listed separated by |. | [optional] |
| **owner_address** | **String** | The mailing address of the account owner(s). If the owner information is not available, this field will not appear in the report. If the account has multiple owners then the address of the primary owner will be listed. | [optional] |
| **name** | **String** | The account name from the institution |  |
| **type** | **String** | The list of supported account types. * &#x60;checking&#x60; * &#x60;savings&#x60; * &#x60;moneyMarket&#x60; * &#x60;cd&#x60; * &#x60;investment&#x60; * &#x60;investmentTaxDeferred&#x60; * &#x60;employeeStockPurchasePlan&#x60; * &#x60;ira&#x60; * &#x60;401k&#x60; * &#x60;roth&#x60; * &#x60;403b&#x60; * &#x60;529&#x60; * &#x60;rollover&#x60; * &#x60;ugma&#x60; * &#x60;utma&#x60; * &#x60;keogh&#x60; * &#x60;457&#x60; * &#x60;401a&#x60; * &#x60;unknown&#x60; * &#x60;mortgage&#x60; * &#x60;loan&#x60; * &#x60;creditCard&#x60; * &#x60;lineOfCredit&#x60; * &#x60;payroll&#x60; * &#x60;studentLoan&#x60; * &#x60;brokerageAccount&#x60; * &#x60;educationSavings&#x60; * &#x60;healthSavingsAccount&#x60; * &#x60;nonTaxableBrokerageAccount&#x60; * &#x60;pension&#x60; * &#x60;profitSharingPlan&#x60; * &#x60;roth401k&#x60; * &#x60;sepIRA&#x60; * &#x60;simpleIRA&#x60; * &#x60;thriftSavingsPlan&#x60; * &#x60;variableAnnuity&#x60; |  |
| **currency** | **String** | A currency code for account | [optional] |
| **aggregation_status_code** | **Integer** | The status of the most recent aggregation attempt |  |
| **income_streams** | [**Array&lt;VOIETXVerifyReportIncomeStream&gt;**](VOIETXVerifyReportIncomeStream.md) | A list of income stream records | [optional] |
| **balance** | **Float** | The cleared balance of the account as-of &#x60;balanceDate&#x60; | [optional] |
| **average_monthly_balance** | **Float** | The average monthly balance of this account | [optional] |
| **transactions** | [**Array&lt;ReportTransactionNewTxBased&gt;**](ReportTransactionNewTxBased.md) | a list of transaction records |  |
| **details** | [**AccountDetailsTxBased**](AccountDetailsTxBased.md) |  | [optional] |
| **position** | [**ReportAccountPosition**](ReportAccountPosition.md) |  | [optional] |
| **available_balance** | **Float** | The available balance for the account | [optional] |

## Example

```ruby
require 'open_banking'

instance = OpenBanking::VOIETXVerifyReportAccount.new(
  id: 1000023996,
  number: 1111,
  owner_name: PATRICK PURCHASER|LORRAINE PURCHASER,
  owner_address: 7195 BELMONT ST. PARLIN, NJ 08859,
  name: Checking,
  type: checking,
  currency: USD,
  aggregation_status_code: 0,
  income_streams: null,
  balance: 123.45,
  average_monthly_balance: 301.45,
  transactions: null,
  details: null,
  position: null,
  available_balance: 123.45
)
```

