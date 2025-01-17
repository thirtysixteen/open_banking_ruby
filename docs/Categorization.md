# OpenBanking::Categorization

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **normalized_payee_name** | **String** | A normalized payee, derived from the transaction&#39;s description and memo fields |  |
| **category** | **String** | The different categories for transactions. * \&quot;ATM Fee\&quot;  * \&quot;Advertising\&quot;  * \&quot;Air Travel\&quot;  * \&quot;Alcohol &amp; Bars\&quot;  * \&quot;Allowance\&quot;  * \&quot;Amusement\&quot;  * \&quot;Arts\&quot;  * \&quot;Auto &amp; Transport\&quot;  * \&quot;Auto Insurance\&quot;  * \&quot;Auto Payment\&quot;  * \&quot;Baby Supplies\&quot;  * \&quot;Babysitter &amp; Daycare\&quot;  * \&quot;Bank Fee\&quot;  * \&quot;Bills &amp; Utilities\&quot;  * \&quot;Bonus\&quot;  * \&quot;Books\&quot;  * \&quot;Books &amp; Supplies\&quot;  * \&quot;Business Services\&quot;  * \&quot;Buy\&quot;  * \&quot;Cash &amp; ATM\&quot;  * \&quot;Charity\&quot;  * \&quot;Check\&quot;  * \&quot;Child Support\&quot;  * \&quot;Clothing\&quot;  * \&quot;Coffee Shops\&quot;  * \&quot;Credit Card Payment\&quot;  * \&quot;Dentist\&quot;  * \&quot;Deposit\&quot;  * \&quot;Dividend &amp; Cap Gains\&quot;  * \&quot;Doctor\&quot;  * \&quot;Education\&quot;  * \&quot;Electronics &amp; Software\&quot;  * \&quot;Entertainment\&quot;  * \&quot;Eyecare\&quot;  * \&quot;Fast Food\&quot;  * \&quot;Federal Tax\&quot;  * \&quot;Fees &amp; Charges\&quot;  * \&quot;Finance Charge\&quot;  * \&quot;Financial\&quot;  * \&quot;Financial Advisor\&quot;  * \&quot;Food &amp; Dining\&quot;  * \&quot;Furnishings\&quot;  * \&quot;Gas &amp; Fuel\&quot;  * \&quot;Gift\&quot;  * \&quot;Gifts &amp; Donations\&quot;  * \&quot;Groceries\&quot;  * \&quot;Gym\&quot;  * \&quot;Hair\&quot;  * \&quot;Health &amp; Fitness\&quot;  * \&quot;Health Insurance\&quot;  * \&quot;Hobbies\&quot;  * \&quot;Home\&quot;  * \&quot;Home Improvement\&quot;  * \&quot;Home Insurance\&quot;  * \&quot;Home Phone\&quot;  * \&quot;Home Services\&quot;  * \&quot;Home Supplies\&quot;  * \&quot;Hotel\&quot;  * \&quot;Income\&quot;  * \&quot;Interest Income\&quot;  * \&quot;Internet\&quot;  * \&quot;Investments\&quot;  * \&quot;Kids\&quot;  * \&quot;Kids Activities\&quot;  * \&quot;Late Fee\&quot;  * \&quot;Laundry\&quot;  * \&quot;Lawn &amp; Garden\&quot;  * \&quot;Legal\&quot;  * \&quot;Life Insurance\&quot;  * \&quot;Loan Fees and Charges\&quot;  * \&quot;Loan Insurance\&quot;  * \&quot;Loan Interest\&quot;  * \&quot;Loan Payment\&quot;  * \&quot;Loan Principal\&quot;  * \&quot;Loans\&quot;  * \&quot;Local Tax\&quot;  * \&quot;Low Balance\&quot;  * \&quot;Mobile Phone\&quot;  * \&quot;Mortgage &amp; Rent\&quot;  * \&quot;Movies &amp; DVDs\&quot;  * \&quot;Music\&quot;  * \&quot;Newspapers &amp; Magazines\&quot;  * \&quot;Office Supplies\&quot;  * \&quot;Parking\&quot;  * \&quot;Paycheck\&quot;  * \&quot;Personal Care\&quot;  * \&quot;Pet Food &amp; Supplies\&quot;  * \&quot;Pet Grooming\&quot;  * \&quot;Pets\&quot;  * \&quot;Pharmacy\&quot;  * \&quot;Printing\&quot;  * \&quot;Property Tax\&quot;  * \&quot;Public Transportation\&quot;  * \&quot;Reimbursement\&quot;  * \&quot;Rental Car &amp; Taxi\&quot;  * \&quot;Restaurants\&quot;  * \&quot;Sales Tax\&quot;  * \&quot;Sell\&quot;  * \&quot;Service &amp; Parts\&quot;  * \&quot;Service Fee\&quot;  * \&quot;Shipping\&quot;  * \&quot;Shopping\&quot;  * \&quot;Spa &amp; Massage\&quot;  * \&quot;Sporting Goods\&quot;  * \&quot;Sports\&quot;  * \&quot;State Tax\&quot;  * \&quot;Streaming Services\&quot;  * \&quot;Student Loan\&quot;  * \&quot;Taxes\&quot;  * \&quot;Television\&quot;  * \&quot;Toys\&quot;  * \&quot;Trade Commissions\&quot;  * \&quot;Transfer\&quot;  * \&quot;Transfer for Cash Spending\&quot;  * \&quot;Travel\&quot;  * \&quot;Tuition\&quot;  * \&quot;Uncategorized\&quot;  * \&quot;Utilities\&quot;  * \&quot;Vacation\&quot;  * \&quot;Veterinary\&quot;  * \&quot;Internet / Broadband Charges\&quot; |  |
| **city** | **String** | City | [optional] |
| **state** | **String** | State | [optional] |
| **postal_code** | **String** | A ZIP code | [optional] |
| **country** | **String** | Country code is Iso3166-1 Alpha-2 code and Alpha 3 standard (max length 3). |  |
| **best_representation** | **String** | Combines the &#x60;description&#x60; and &#x60;memo&#x60; data together, removing duplicated information and numbers and special characters | [optional] |

## Example

```ruby
require 'open_banking'

instance = OpenBanking::Categorization.new(
  normalized_payee_name: Mad Science Research,
  category: ATM Fee,
  city: Murray,
  state: UT,
  postal_code: 84123,
  country: USA,
  best_representation: VERIZON WIRELESS PAYMENTS
)
```

