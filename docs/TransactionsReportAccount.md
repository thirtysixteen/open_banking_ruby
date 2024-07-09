# OpenBanking::TransactionsReportAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The Finicity account ID | [optional] |
| **name** | **String** | The account name from the financial institution. | [optional] |
| **number** | **String** | The account number from the financial institution (obfuscated) | [optional] |
| **type** | **String** | The list of supported account types. * &#x60;checking&#x60; * &#x60;savings&#x60; * &#x60;moneyMarket&#x60; * &#x60;cd&#x60; * &#x60;investment&#x60; * &#x60;investmentTaxDeferred&#x60; * &#x60;employeeStockPurchasePlan&#x60; * &#x60;ira&#x60; * &#x60;401k&#x60; * &#x60;roth&#x60; * &#x60;403b&#x60; * &#x60;529&#x60; * &#x60;rollover&#x60; * &#x60;ugma&#x60; * &#x60;utma&#x60; * &#x60;keogh&#x60; * &#x60;457&#x60; * &#x60;401a&#x60; * &#x60;unknown&#x60; * &#x60;mortgage&#x60; * &#x60;loan&#x60; * &#x60;creditCard&#x60; * &#x60;lineOfCredit&#x60; * &#x60;payroll&#x60; * &#x60;studentLoan&#x60; * &#x60;brokerageAccount&#x60; * &#x60;educationSavings&#x60; * &#x60;healthSavingsAccount&#x60; * &#x60;nonTaxableBrokerageAccount&#x60; * &#x60;pension&#x60; * &#x60;profitSharingPlan&#x60; * &#x60;roth401k&#x60; * &#x60;sepIRA&#x60; * &#x60;simpleIRA&#x60; * &#x60;thriftSavingsPlan&#x60; * &#x60;variableAnnuity&#x60; | [optional] |
| **currency** | **String** | A currency code for account | [optional] |
| **aggregation_status_code** | **Integer** | The status of the most recent aggregation attempt for this account. Note: non-zero means the account was not accessed successfully for this report, and additional fields for this account may not be reliable. | [optional] |
| **balance** | **Float** | The cleared balance of the account as-of &#x60;balanceDate&#x60; | [optional] |
| **balance_date** | **Integer** | A timestamp showing when the balance was captured | [optional] |
| **oldest_transaction_date** | **Integer** | The oldest transaction date of this account. | [optional] |
| **transactions** | [**Array&lt;ReportTransaction&gt;**](ReportTransaction.md) | a list of transaction records | [optional] |

## Example

```ruby
require 'open_banking'

instance = OpenBanking::TransactionsReportAccount.new(
  id: 1000075473,
  name: Super Checking,
  number: 5015,
  type: checking,
  currency: USD,
  aggregation_status_code: 0,
  balance: 100000,
  balance_date: 1594676289,
  oldest_transaction_date: 1588350276,
  transactions: null
)
```
