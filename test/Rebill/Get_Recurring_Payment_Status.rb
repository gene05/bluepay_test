##
# BluePay Ruby Sample code.
#
# This code sample runs a $0.00 Credit Card Auth transaction
# against a customer using test payment information.
# Once the rebilling cycle is created, this sample shows how to
# get information back on this rebilling cycle.
# See comments below on the details of the initial setup of the
# rebilling cycle.
##

require_relative "../../lib/bluepay.rb"

ACCOUNT_ID = "Merchant's Account ID Here"
SECRET_KEY = "Merchant's Secret Key Here"
MODE = "TEST"  


rebill_status = BluePay.new(
  account_id: ACCOUNT_ID,  
  secret_key: SECRET_KEY,  
  mode: MODE
)

rebill_id = "Rebilling ID here" # The id of the rebilling cycle whose status you want ('REBID')

# Find the rebill by ID and get rebill status 
rebill_status.get_rebilling_cycle_status(rebill_id)

# Makes the API Request to get the rebill status
rebill_status.process

puts rebill.get_message
