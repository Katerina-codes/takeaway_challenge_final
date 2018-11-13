class send_sms
  def sms
    account_sid = "*******************************"
    auth_token = "********************************"

    @client = Twilio::REST::Client.new account_sid, auth_token
    message = @client.messages.create(
        body: "Thank You! Your order has been placed!",
        to:   "+444573910384", #fake number
        from: "+443450924051") #fake number
  end
end
