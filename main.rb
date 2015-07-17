require 'chatterbot/dsl'
require 'json'

def sendTweet()
  # Absolute path
  path = "/full/path/to/script";
  file = open("#{path}/data.json");
  currentTime = Time.now.strftime '%H:%M';
  parsed = JSON.parse(file.read);
  
  # Loop through JSON
  parsed.each do |tweets|
    if currentTime === tweets["time"]
     tweetTime = tweets["time"]
     tweetValue = tweets["value"]
  
     tweet tweetValue
    end
  end
end

def replyTweet()
  replyArray = ["*Kneads and gives you kisses*", "*Mmmeow?*", "*Kneads*", "*Head boop*"]

  # The sample-method means a random item from the array is picked
  bot.search("@soylatrudis") do |tweet|
    bot.reply "#{tweet_user(tweet)} " "#{replyArray.sample}", tweet
  end
end

sendTweet()
replyTweet()
