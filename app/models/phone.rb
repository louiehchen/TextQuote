class Phone < ActiveRecord::Base


  def clean_number
    number = self.number.scan(/\d+/).join
    number[0] == "1" ? number[0] = '' : number
    number unless number.length != 10
  end

  def send_sms(number)
    acct_sid = ENV["TWILIO_ACCT_SID"]
    auth_token = ENV["TWILIO_AUTH"]
    
		

    begin 
        @client = Twilio::REST::Client.new acct_sid, auth_token

        from = '+15109013038'
        my_quote_object = Quotey::Quoter.new
        

        message = @client.account.messages.create(
            :from => from,
            :to => '+1'+number,
            :body => my_quote_object.get_quote
            )
    p number 
    end
  end

end