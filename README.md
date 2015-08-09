# yelp_on_rails

Getting Application Up and Running:
  * Installed Postgresql using brew install postgresql
  * Installed Rails using gem install rails and rails new app command

Ran into a few issues running rails server but all resolved - brew install xz.

Working on two branches simultaneously

## Rails info:
* app – where your code goes. Contains models, views and controllers; as well also JavaScript & CSS assets
* bin – contains specific versions of executables such as rails and rake for doing low level tasks
* config – configuration information, including database.yml which includes database configuration details and a  
  routes file
* db - all our database related code for migrating and seeding the databse
* lib - place to put non-rails ruby code
* log – keeps server logs and terminal output
* public – public resources. These will remain available even if the server goes down. Includes all your error pages
  by default
* tmp - temporary stuff gets stored here
* vendors – a place for resources that you didn't write but are needed for the project, like jQuery; also called 3rd 
  party assets

Added gems for testing - rspec ready (and ran bin/rails generate rspec:install)
  it { is_expected.to have_many :reviews }
