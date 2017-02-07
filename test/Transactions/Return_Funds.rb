##
# BluePay Ruby Sample code.
#
# This code sample runs a $3.00 Credit Card Sale transaction
# against a customer using test payment information. If
# approved, a 2nd transaction is run to partially refund the 
# customer for $1.75 of the $3.00.
# If using TEST mode, odd dollar amounts will return
# an approval and even dollar amounts will return a decline.
##

require_relative "../../lib/bluepay.rb"

ACCOUNT_ID = "Merchant's Account ID"
SECRET_KEY = "Merchant's Secret Key"
MODE = "TEST"  

payment_return = BluePay.new(
  account_id: ACCOUNT_ID,  
  secret_key: SECRET_KEY,  
  mode: MODE
)

trans_id = "Transaction ID here" # This is the id of the transaction whose funds are being returned

# Creates a refund transaction against previous sale
payment_return.refund(
  trans_id: payment.get_trans_id, # id of previous transaction to refund
  amount: "1.75" # partial refund of $1.75
)

# Makes the API Request to process refund
payment_return.process

puts payment_return.get_message

