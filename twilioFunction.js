exports.handler = function(context, event, callback) {
    let twiml = "<Response><Say>What you said was " + event.SpeechResult + ".  Thank you for using this demonstration.  Goodbye.</Say></Response>"
	console.log(event);
	callback(null, twiml);
};
