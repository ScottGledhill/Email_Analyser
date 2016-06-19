
I will outline my thought process for each step of the project.

I will use Rails for this project, as it is the framework Lost_my_Name use, and
I am comfortable with it, I will use Rspec, and postgresgl, as I am familiar
with both. I will test drive as much of this project as I can.

I decided to use a rake task, to add email data instead of using Go,
for this small project it didn't seem necessary, and I knew I could achieve
the same result quickly and could easily see when the API was working as expected
also possibly make it easier to use for people without previous Go knowledge.

My thoughts about the app structure are that our input is email data, and our
output will need to be web graphical user interface to show the data.

Input from rake command looks like an API call, so I will version an API
to handle this data.
