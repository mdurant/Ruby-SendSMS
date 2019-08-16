class SendSMS
  attr_reader :message, :number
​
  def initialize(message)
    @message = message
    @number = number
  end
​
  def call
    client = Twilio::REST::Client.new
    client.messages.create({
      from: ENV['twilio_phone_number'],
      to: @number,
      body: message
    })
  end
end