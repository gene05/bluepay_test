##
# BluePay Ruby Sample code.
#
# This code sample runs a $0.00 Credit Card Auth transaction
# against a customer using test payment information.
# Once the rebilling cycle is created, this sample shows how to
# update the rebilling cycle. See comments below
# on the details of the initial setup of the rebilling cycle as well as the
# updated rebilling cycle.
##

require_relative "../../lib/bluepay.rb"

ACCOUNT_ID = "Merchant's Account ID Here"
SECRET_KEY = "Merchant's Secret Key Here"
MODE = "TEST"  

# Creates a request to update the rebill
rebill_update = BluePay.new(
  account_id: ACCOUNT_ID,  
  secret_key: SECRET_KEY,  
  mode: MODE  
)

# Updates the rebill
rebill_update.update_rebill(
  rebill_id: "Rebilling ID here", # The id of the rebilling cycle to be updated ('REBID')
  template_id: "Updated Transaction ID here", # The id of a transaction that uses the new payment information that the rebilling cycle will be updated to use
  next_date: "2017-03-01", # Rebill Start Date: March 1, 2017
  reb_expr: "1 MONTH", # Rebill Frequency: 1 MONTH
  reb_cycles: "8", # Rebill # of Cycles: 8
  reb_amount: "5.15", # Rebill Amount: $5.15
  next_amount: "1.50" # Rebill Next Amount: $1.50
)

# Makes the API Request to update the rebill
rebill_update.process

puts rebill.get_message
