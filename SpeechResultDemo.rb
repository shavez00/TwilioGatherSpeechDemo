require 'sinatra'
require 'twilio-ruby'

get '/' do
  content_type 'text/xml'

  response = Twilio::TwiML::VoiceResponse.new
  response.gather(input: 'speech', action: 'https://vanilla-poodle-7121.twil.io/temp', method: 'GET') do |gather|
    gather.say(message: 'Please say something then hit the pound sign and the the program will repeat it back to you demonstrating that your speech result was captured.')
  
  puts response
  end.to_s
end
