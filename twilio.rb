require 'rubygems'
require 'twilio-ruby'

account_sid = "AC644495ab1f8919eca163f71e8b635780"
auth_token = "0f91ee723ce4271cf8deda492d48910c"
 
@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.account.messages.create(
  :from => "+1 415-599-2671", 
  :to =>"+1 650-576-5393", 
  :body => "Ask your question?"
)
 
puts message.to