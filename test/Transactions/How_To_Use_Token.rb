##
# BluePay Ruby Sample code.
#
# Charges a customer $3.00 using the payment and customer information from a previous transaction. 
# If using TEST mode, odd dollar amounts will return
# an approval and even dollar amounts will return a decline.
##

require_relative "../../lib/bluepay.rb"

ACCOUNT_ID = "Merchant's Account ID Here"
SECRET_KEY = "Merchant's Secret Key Here"
MODE = "TEST"  
TOKEN = "Transaction ID here" 

payment = BluePay.new(
  account_id: ACCOUNT_ID,  
  secret_key: SECRET_KEY,  
  mode: MODE
)

payment.sale(
  amount: "3.00", 
  trans_id: TOKEN 
) 

# Makes the API Request
payment.process

puts payment.get_message

