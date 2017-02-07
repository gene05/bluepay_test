class BluePay
  def get_response
    @RESPONSE_HASH
  end

 # Returns a message with next steps
  # Or a human-readable response from Bluepay.
  def get_message
    m = @RESPONSE_HASH['MESSAGE']
    if m == nil or m == ""
      "YOUR REQUEST HAS BEEN RECEIVED - PLEASE CONTACT BLUEPAY INTEGRATION SUPPORT FOR FURTHER ASSISTANCE."
    else
      m
    end
  end

end