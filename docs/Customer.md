# OpenBanking::Customer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | A customer ID. See Add Customer API for how to create a customer ID. |  |
| **username** | **String** | The customer&#39;s username, assigned by the partner (a unique identifier), following these rules: minimum 6 characters maximum 255 characters any mix of uppercase, lowercase, numeric, and non-alphabet special characters ! @ . # $ % &amp; * _ - + the use of email in this field is discouraged it is recommended to use a unique non-email identifier. Use of special characters may result in an error (e.g. í, ü, etc.). Usernames are unique. A username used in Test Drive can&#39;t be reused in other plans. |  |
| **first_name** | **String** | The first name of the account holder | [optional] |
| **last_name** | **String** | The last name of the account holder | [optional] |
| **phone** | **String** | A phone number (max length 15). | [optional] |
| **email** | **String** | An email address | [optional] |
| **type** | **String** | The type of customer (\&quot;active\&quot; or \&quot;testing\&quot; or \&quot;\&quot; for all types) |  |
| **created_date** | **String** | A date in Unix epoch time (in seconds). See: [Handling Epoch Dates and Times](https://developer.mastercard.com/open-banking-us/documentation/codes-and-formats/). |  |
| **last_modified_date** | **String** | A date in Unix epoch time (in seconds). See: [Handling Epoch Dates and Times](https://developer.mastercard.com/open-banking-us/documentation/codes-and-formats/). | [optional] |

## Example

```ruby
require 'open_banking'

instance = OpenBanking::Customer.new(
  id: 1005061234,
  username: customerusername1,
  first_name: John,
  last_name: Smith,
  phone: 1-801-984-4200,
  email: myname@mycompany.com,
  type: active,
  created_date: 1607450357,
  last_modified_date: 1607450357
)
```

