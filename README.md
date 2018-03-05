# README

* What Does Our App Do?
finDining is the go-to app for anyone looking to see where the local food trucks are. Go to our site, and you're immediately presented with a map showing all open food trucks in any city or area you choose.

You choose between one of the four options for food types: Veggie, Mexican, Pizza, and Mexican. You can choose multiple options at the same time and all matching food trucks will show in the map.

We rely on food truck owners to sign up for an account and enter in their location. When they are closed, they can delete their food truck. If they move, they can edit their food truck location.

Sign up for an account if you want to be able to rate food trucks, upload pictures, and leave comments about your experience for other users to see.

* User Stories
We have two expected users for our app. One is the person looking for a quick meal in their area. The other is the food truck owner looking to drive traffic to his or her business.

Our goal was to make the site as simple, and quick to use as possible. We had originally wire framed two pages the user would have to click through to get to the map, and decided to scrap them to maximize efficiency of time for the user.

* Technologies
Back End
* Postgres database with two tables and data models, one for food trucks and one for the users
* The user has a one to many relationship with the food trucks, and the food truck belongs to a user
* Ruby on Rails
* Fully functional CRUD app
* Includes authentication and authorization
  * Users can sign up, log in, log out & edit/delete their profiles
  * There is validation for the sign up, log in, and create new food trucks so that important fields cannot be blank or incorrect data types
  * There is error handling to ensure the user is aware of any errors

Front End
* HTML
* CSS
* Bootstrap
* Responsive design (hamburger nav bar)
* CoffeeScript - a programming language that transcompiles to JavaScript
* JavaScript & jQuery - for event listeners
* Google font ‘Shrikhand’ was used to style our logo, and h2 tags

* Link To Heroku
https://obscure-woodland-57780.herokuapp.com/

* Contributers
Lamberto Asghedom- https://github.com/bigbertolucci
Katie So - https://github.com/ktso11
Kingsley Nyaosi- https://github.com/xingzo
Hunter Cote - https://github.com/hcote

* Coding Process
Lamberto and Hunter pair programmed the back end, while Katie and Kingsley took care of the front end, all of the styling, including the Google Maps API.

Lamberto and Hunter worked together on one computer at a time. After we got the bulk of the code working, we assigned individual tasks. Lamberto worked on getting the app hosted on Heroku, Hunter worked on finishing touches for the back end, including user permissions and food truck validations.

Katie and Kingsley did a mix of individual testing and pair programming. Both members conducted a lot of research on features we want to incorporate and ran tests on individual computers. We later consolidated what worked and input the codes onto one computer.

* Biggest Challenges
Making sure everyone knew what the others were working on was a challenge. This showed up when we pushed to Git and realized both teams had worked on the same file, resulting in merging conflicts. This also caused some errors in variable names being changed, causing data to not save to variables. This took some time to troubleshoot, which we did by going through all the files and matching variable names. Other than that, consolidating front and back end work was very smooth.

For coding challenges, registering the checkbox as clicked or not was one of the harder things. The goal was to give/restrict permissions for users depending on if it was checked. If (... = true) would not work, so we had to refactor it so the statement was If (... != false), which did work.

Challenges we faced on the front-end was integrating the Google map to rails 5. With help from this tutorial (https://www.driftingruby.com/episodes/plotting-points-on-a-map-from-scratch), we were able to successfully render our food truck coordinates on to the map.  This tutorial relies heavily on CoffeeScript, so we had to learn the basics of this language when adding features like filtering locations based on food types. Juan Carlos, a member of our class also contributed by sharing his expertise.

* Future Features
Right now, creating your truck means you're open and at the spot, since it will show up immediately on the map. We'd like to make it so that you can set hours of operation for when your food truck will appear on the map.

Roll it out to more food types, and drink types.

Implement ability for users to rate food trucks, upload images of their food, and leave comments/feedback.

Allow for customers to see estimated wait time.

Allow food truck owners to enter an address, and have that interpreted by our app to add a pin on our map, rather than a latitude and longitude.
