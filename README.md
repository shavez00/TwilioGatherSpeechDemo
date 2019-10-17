# A Demonstration of the [input](https://www.twilio.com/docs/voice/twiml/gather#input) property in the Twilio [Gather](https://www.twilio.com/docs/voice/twiml/gather) verb 

This is a Ruby program to demonstrate Gather using speech. This program will make a webhook call out to a twilio function.  The twilio function (twilioFunction.js) will then capture the SpeechResult property.  It will then use the Say verb to say back what was said during the Gather, demonstrating the speech recognition capabilities of the Gather verb.

## Getting Started

Step 1.  Install Ruby on your workstation.</br>
Step 2.  Install the Twilio Ruby helper library.  To install the Twilio Ruby help library, type 'gem install twilio-ruby'.</br>
Step 3.  Install Sinatra.</br>
Step 4.  To install Sinatra you will need to make sure you have Bundler installed.  (https://bundler.io/)</br>
Step 5.  Type 'gem install bundler' to install Bundler.</br>
Step 6.  Install the Gemfile by typing 'bundle install'.</br>
Step 7.  Type './ngrok http 4567' to start ngrok and have it proxy from port 80 to port 4567.</br>
Step 8.  Once ngrok starts you will see a 'Forwarding' URL.  </br>
Step 9.  Input the URL from ngrok in the webhook for a Twilio phone number in the Twilio console.</br>
Step 10.  Make sure to set the webhook for your Twilio number in the Twilio console to use a GET request not a POST request.</br>
Step 11.  Copy and paste the node.js program from 'twilioFunction.js' to a Twilio function in the Console.</br>
Step 12.  Uncheck the Access Control checkbox on your Twilio Function that says "Check for valid Twilio signature'.</br>
Step 13.  Update the action property in the Ruby program with the URL of the twilio function.</br>
Step 14.  Type 'ruby SpeechResultDemo.rb' to start the program.</br>

## Running the demonstration 

Using the demonstration is very straightforward.  Call your Twilio phone number. You will hear the message "Please say something then hit the pound sign and the the program will repeat it back to you demonstrating that your speech result was captured."  Say something, type the pound key once you are done speaking.

The demonstration will repeat back what you say to it.  The Ruby program sends what is captured by the Gather verb to the action URL which is your Twilio function.  This Twilio function parses the JSON that is sent to it by Twilio and grabs the property "SpeechResult" and inserts it into a Say verb and returns the TwiML to Twilio which tells Twilio to say back to you what it captured during the Gather verb.  This is an easy demonstration of the Gather verb and the Speech input capabiliities.

### Prerequisites

[A Twilio account](https://www.twilio.com/console)</br>
[A Twilio phone number](https://www.twilio.com/docs/phone-numbers)</br>
[A Twilio function](https://www.twilio.com/docs/runtime/functions)</br>
[Ruby](http://www.ruby-lang.org/en/)</br>
[Twilio Ruby help library](https://www.twilio.com/docs/libraries/ruby)</br>
[Sinatra](http://sinatrarb.com/)</br>

## Authors

* **Mark Shavers** - *Initial work* - [shavez00](https://github.com/shavez00)
