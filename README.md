
Email data analysing tool, designed to capture event data, store and display.

Assuming you have Rails installed,

To use this application please follow instructions:

Open terminal/iTerm 

Clone repository using git clone 'git@github.com:ScottGledhill/Email_Analyser.git'

Go into project folder and run 'bundle install', if there are any outdated gems, run 'bundle update'

Run 'rails s' to start server

In new terminal window;

Run 'bin/rake post_data' to fill with email data.

Run 'bin/rake db:create' to create the databases

Open browser at http://localhost:3000/

![screenshot](app/assets/images/screenshots/page.png)
