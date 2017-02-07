##
# BluePay Ruby Sample code.
#
# This code sample runs a $3.00 Credit Card Authorization transaction
# against a customer using test payment information.  
# If using TEST mode, odd dollar amounts will return
# an approval and even dollar amounts will return a decline.

require_relative "../../lib/bluepay.rb"

ACCOUNT_ID = "Merchant's Account ID Here"
SECRET_KEY = "Merchant's Secret Key Here"
MODE = "TEST"    

payment = BluePay.new(
  account_id: ACCOUNT_ID,  
  secret_key: SECRET_KEY,  
  mode: MODE
)

payment.set_customer_information(
  first_name: "Bob", 
  last_name: "Tester",
  address1: "123 Test St.", 
  address2: "Apt #500", 
  city: "Testville", 
  state: "IL", 
  zip_code: "54321", 
  country: "USA",
  phone: "123-123-1234",  
  email: "test@bluepay.com"  
)

payment.set_cc_information(
  cc_number: "4111111111111111", # Customer Credit Card Number
  cc_expiration: "1220", # Card Expiration Date: MMYY
  cvv2: "123" # Card CVV2
)

payment.auth(amount: "3.00") # Card authorization amount: $3.00

# Makes the API Request for a credit card authorization
payment.process

puts payment.get_message

