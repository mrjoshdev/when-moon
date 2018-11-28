# [When Moon?](https://protected-woodland-79832.herokuapp.com/)

When Moon? is my capstone project for Launch Academy. This application is a cryptocurrency price tracker that allows users to track the current USD value of their portfolio in a fun and dynamic way. This app was built using Ruby on Rails and interacts with an API pulled from www.coinmarketcap.com to provide up to date cryptocurrency prices displayed using a chart styled using CSS.

## Build Status
[![Build Status](https://codeship.com/projects/484d5170-be94-0136-125f-728fb199655f/status?branch=master)

### Tools Used
<b>Built with:</b>
- [Ruby v2.4.5](https://rubyonrails.org/)
- [CoinMarketCap API](https://api.coinmarketcap.com/v2/ticker/)
- [Heroku](https://www.heroku.com/)
- [PostgreSQL](https://postgresapp.com/)

### User Story

Users can navigate to the index page where they are able to click on a 'Sign Up' link in the nav bar and are brought to a registration form.  After registering their account a user will be able to click the 'Add Cryptocurrency' button which will redirect them to an 'Add Cryptocurrency' form.  The user can then add the name, ticker symbol and target price of their chosen cryptocurrency and click 'Submit'.  The currency will then be added to a list on their user page, titled 'Captain's Page' in the nav bar, as part of a list.  On the user page the crypto can be edited by clicking on an 'Edit' button and updating the 'Add Cryptocurrency' form, the cryptocurrency can also be deleted on the user page by clicking a 'Delete' button.

Finally, the currencies are displayed on the main page using a custom chart made with CSS that displays the progress of each cryptocurrency on the user's list to their price target or 'Moon Price'.  Finally a 'Moon Price' rocket image appears along with flashing text that says 'MOON NOW!'

### Installation
1. Fork or clone project to local workstation
2. Run ```bundle install```from the terminal
3. Run ```rake db:setup``` from the terminal
4. The application is ready for use. Create a user account, and build out an athlete profile.

### Screenshots
##### Login Screen
![Login Screen](https://i.imgur.com/glFGKZE.png)
##### Main Page - Portfolio Tracker
![Main Page](https://i.imgur.com/VQPCTXh.png)
##### User Page
![User Page](https://i.imgur.com/2F8pQBp.png)
