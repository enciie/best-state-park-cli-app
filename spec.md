# Specifications for the CLI Assessment

Specs:
- [x] Have a CLI for interfacing with the application: I created a #call method that calls all the other methods for the CLI to run upon initialization. The CLI welcomes the user and requests user input to return different outputs based on user input. The app will list all 50 states and the user can choose to go to the next level to view more information.
- [x] Pull data from an external source: I created a Scrapper class to pull data from the Travel and Leisure website https://www.travelandleisure.com/trip-ideas/national-parks/best-national-parks-by-state
- [x] Implement both list and detail views: The list view provides the user with a list of all 50 states. They have an option to input the corresponding number or input the state name to go to the new view. Once the user inputs their choice it will take the user to the detail view of the state with the National Park name and a short description.
