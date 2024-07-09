# OpenBanking::CashFlowMonthlycashflowDebits

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **month** | **Integer** | One instance for each complete calendar month in the report |  |
| **number_of_debits** | **String** | Number of Debits by month |  |
| **total_debits_amount** | **Float** | Total Amount of Debits by month |  |
| **largest_debit** | **Float** | Largest Debit by month |  |
| **number_of_debits_less_transfers** | **String** | Number of Debits by month (less transfers) |  |
| **total_debits_amount_less_transfers** | **Float** | Total amount of debits by month (less transfers) |  |
| **average_debit_amount** | **Float** | The average debit amount |  |

## Example

```ruby
require 'open_banking'

instance = OpenBanking::CashFlowMonthlycashflowDebits.new(
  month: 1512111600,
  number_of_debits: 5,
  total_debits_amount: -12345,
  largest_debit: -2000,
  number_of_debits_less_transfers: 3,
  total_debits_amount_less_transfers: -2000,
  average_debit_amount: 500
)
```
