##
# BluePay Ruby Sample code.
#
# This code sample runs a $3.00 Credit Card Sale transaction
# against a customer using test payment information.
# If approved, a 2nd transaction is run to cancel this transaction.
# If using TEST mode, odd dollar amounts will return
# an approval and even dollar amounts will return a decline.
##

require_relative "../../lib/bluepay.rb"

ACCOUNT_ID = "Merchant's Account ID Here"
SECRET_KEY = "Merchant's Secret Key Here"
MODE = "TEST"  

payment_void = BluePay.new(
  account_id: ACCOUNT_ID,  
  secret_key: SECRET_KEY,  
  mode: MODE
)

trans_id = "Transaction ID here" # This is the id of the transaction to be cancelled

# Attempts to void the transaction
payment_void.void(trans_id)

# Makes the API Request to void the payment
payment_void.process

puts payment.get_message
