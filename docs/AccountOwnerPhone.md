# OpenBanking::AccountOwnerPhone

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The account owner&#39;s phone type:  * \&quot;HOME\&quot;  * \&quot;BUSINESS\&quot;  * \&quot;CELL\&quot;  * \&quot;FAX\&quot; | [optional] |
| **country** | **String** | Country calling code of the phone number as defined by ITU-T E.123 and E.164 international standards (max length 3)\&quot;. | [optional] |
| **phone** | **String** | A phone number (max length 15). | [optional] |

## Example

```ruby
require 'open_banking'

instance = OpenBanking::AccountOwnerPhone.new(
  type: HOME,
  country: 61,
  phone: 1-801-984-4200
)
```

