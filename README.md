#trudis-twitterbot
I was bored with doing all the Tweeting myself for my pets ("I'm not crazy my mother had me tested") so I
decided to look for a framework which might help me to Tweet automatically.

##Required Gems
* Chatterbot

##What's in the box?
Trudis, my cat obviously.

* main.rb
* data.json

After running the configuration for Chatterbot, rename the __file.yml__ to __main.yml__ and you're all set up.

##Running in crontab
Add this line after __crontab -e__:
* * * * /usr/bin/ruby /Applications/MAMP/htdocs/eigen_werk/2015/popientabot/main.rb &> /dev/null

That will run every minute.

If that does not work, add:
* * * * * /Applications/MAMP/htdocs/eigen_werk/2015/popientabot/main.sh &> /dev/null

And create a __main.sh__ with the following contents:
  #!/bin/bash
  #!/usr/bin/ruby
  ruby /fullpath/to/main.rb

*I need to get my RaspberryPi up and running again, soon.*
