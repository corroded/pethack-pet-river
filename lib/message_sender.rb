# frozen_string_literal: true

# Sends messages using Twilio SDK
class MessageSender
  def self.send_message(message)
    new.send_message(message)
  end

  def initialize
    # To find TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN visit
    # https://www.twilio.com/user/account
    account_sid = ENV['TWILIO_ACCOUNT_SID']
    auth_token  = ENV['TWILIO_AUTH_TOKEN']
    @client = ::Twilio::REST::Client.new(account_sid, auth_token)
  end

  def send_message(message, to = ENV['DEV_NUMBER'])
    @client.messages.create(
      from: ENV['TWILIO_NUMBER'],
      to: to,
      body: message
    )
  end
end
