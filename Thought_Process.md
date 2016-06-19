
I will attempt to outline my thought process for each step of the project.

I will use Rails for this project, as it is the framework you guys use, and
I am comfortable with it, I will use rspec, and postgresgl, as I am familiar
with both. I will test drive as much of this project as I can.

I decided to use a rake task, to add email data instead of using Go,
for this small project it didn't seem necessary, and I knew I could achieve the same result quickly, and could easily see whether the API was working as expected by just executing the rake task, also it may possibly make it easier to use for people without previous Go knowledge.

My thoughts about the app structure; our input is email data, and our
output will need to be web graphical user interface to show the data.

Input from rake command looks like an API call, so I will version an API to handle this data, I think versioning API's is good practice, incase it needs updating in the future.

I want this controller to WHEN receiving a pay load, THEN create a new email object in database, this tells me I shall need an Email model, I could have separate models for event open, event click, etc, and pick which model is used based on data received, for small project currently one model is fine I think.

Wasted a bit of time with depreciation warning for transaction-fixtures, tried many ways to fix, in the end changed to latest rspec-rails beta version, and worked.

Added tests to check model interacts with database correctly, tested for correct columns present and for correct calculations, created migration for the database.

Used scope in email model, previously have used class methods, but this seemed cleaner and prettier, set up data for displaying in view.

Capybara tests for checking view, very simple as only one page needed, wanted to check if the correct info was coming through instead of just appearing on page, but I think that is covered in my model tests.

Took around 4-5 hours I believe, thanks for reading!
