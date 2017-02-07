##
# BluePay Ruby Sample code.
#
# This code sample runs a $0.00 Credit Card Auth transaction
# against a customer using test payment information, sets up
# a rebilling cycle, and also shows how to cancel that rebilling cycle.
# See comments below on the details of the initial setup of the
# rebilling cycle.
##

require_relative "../../lib/bluepay.rb"

ACCOUNT_ID = "Merchant's Account ID Here"
SECRET_KEY = "Merchant's Secret Key Here"
MODE = "TEST"  

rebill_cancel = BluePay.new(
  account_id: ACCOUNT_ID,  
  secret_key: SECRET_KEY,  
  mode: MODE
)

rebill_id = "Rebilling ID here" # The id of the rebilling cycle to be cancelled ('REBID')

# Cancel rebilling cycle 
rebill_cancel.cancel_rebilling_cycle(rebill_id)

# Makes the API request to cancel the rebill
rebill_cancel.process

puts rebill_cancel.get_message