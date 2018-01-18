
# Blocipedia
___
A markdown-based SAAS collaboration and information exchange platform that allows users to create and share wikis with the world community.

## Development Objectives:
* Create a basic user scheme for a Ruby on Rails application.
* Give the users of the application the ability to sign up using the Devise gem.
* Create CRUD routes and resources in a Rails Application.
* Integrate Stripe third party API callouts.
* Integrate Redcarpet Markdown rendering gem.
___
## Application Features:
* offer three user roles: admin, standard(free), premium(upgrade)
* allow users to sign-up for a free account
* allow users to sign-in and sign-out
* allow users with a standard account to create, view, edit, and delete their public wikis
* edit wikis using markdown
* allow users to upgrade from a free to a paid plan : **NOTE** The transactions are demos. 
* allow premium users to create private wikis
* allow premium users to add and remove collaborators for my private wikis

___
## Setup 

#### Languages and Frameworks: 
* Ruby version 2.3.3
* Ruby on Rails 4.2.5 
* Bootstrap



#### Databases: 
* SQLite (Test, Development) 
* PostgreSQL (Production)

#### Default Development Tools and Gems include:

* Devise  for user authentication
* Pundit for authorization
* Redcarpet for Markdown 
* SendGrid for email confirmation
* Stripe for payments
* Figaro for secure configuration
* Faker for seeding fake data
___
#### Configuration:
Figaro creates a _config/application.yml_ file, which sets up and stores  **_environment variables_**, and adds it into your _.gitignore_ file. The _config/application.example.yml_ file demonstrates the appropriate way to store _environment variables_.

Run Blocipedia locally:

* Clone the repository
* Run bundle install
* Create the SQLite database with **rake db:create**
* Migrate the SQLite database with **rake db:migrate**
* Start the server using **rails server**
* Run the app on **localhost:3000**





_Made with my mentor, Chris, at [Bloc](http://bloc.io)_
