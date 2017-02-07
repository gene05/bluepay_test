##
# BluePay Ruby Sample code.
#
# This code sample runs a report that grabs a single transaction
# from the BluePay gateway based on certain criteria.
# See comments below on the details of the report.
# If using TEST mode, only TEST transactions will be returned.
##

require_relative "../../lib/bluepay.rb"

ACCOUNT_ID = "Merchant's Account ID Here"
SECRET_KEY = "Merchant's Secret Key Here"
MODE = "TEST" 

query = BluePay.new(
  account_id: ACCOUNT_ID,  
  secret_key: SECRET_KEY,  
  mode: MODE
)

query.get_single_transaction_query(
  transaction_id: "Transaction ID here", # required
  report_start_date: '2014-01-01', # YYYY-MM-DD; required
  report_end_date: '2016-05-30', # YYYY-MM-DD; required
  exclude_errors: '1' # Do not include errored transactions? Yes; optional
)

# Makes the API request with BluePay 
response = query.process

puts response.get_message

