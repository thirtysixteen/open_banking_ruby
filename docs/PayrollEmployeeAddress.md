# OpenBanking::PayrollEmployeeAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address1** | **String** | Employee address as stated by the employer in the payroll system | [optional] |
| **city** | **String** | Employee city as stated by the employer in the payroll system | [optional] |
| **state** | **String** | Employee state as stated by the employer in the payroll system | [optional] |
| **zip** | **String** | Employee zip code as stated by the employer in the payroll system | [optional] |

## Example

```ruby
require 'open_banking'

instance = OpenBanking::PayrollEmployeeAddress.new(
  address1: Address 1,
  city: City,
  state: TX,
  zip: 99999
)
```

