
  # Mockpedia

 A markdown-based SAAS collaboration and information exchange platform that allows users to create and share wikis with the world community. It's all about **U**!

  [Mockpedia Demo](https://mockpedia.herokuapp.com/)

![Screen Shot 2019-10-25 at 10 58 46 AM](https://user-images.githubusercontent.com/14861025/67586213-c0f2f580-f716-11e9-9a03-582371dc027b.png)


  ![screen shot 2018-12-14 at 12 37 38 pm](https://user-images.githubusercontent.com/14861025/50021015-4fe29d80-ff9d-11e8-8803-7d6995d384d5.png)

___
## Development Objectives:
* Create a basic user scheme for a **Ruby on Rails** application.
* Give the users of the application the ability to sign up using the **Devise** gem.

* Create **CRUD** routes and resources in a Rails Application.


* Integrate **Stripe** third party API callouts.
* Integrate **Redcarpet Markdown** rendering gem.
___
## Application Features:
* offer three user roles: admin, standard(free), premium(upgrade)
* allow users to sign-up for a free account
* allow users to sign-in and sign-out

![screen shot 2018-12-14 at 12 54 16 pm](https://user-images.githubusercontent.com/14861025/50021713-8f11ee00-ff9f-11e8-9ba1-657cb772b750.png)


* allow users with a standard account to create, view, edit, and delete their public wikis

* edit wikis using markdown

![screen shot 2018-12-12 at 3 13 47 pm](https://user-images.githubusercontent.com/14861025/50020316-3b9da100-ff9b-11e8-9536-d28eeb0fdf45.png)


* allow users to upgrade from a free to a paid plan : **NOTE** The transactions are demos.

![screen shot 2018-12-12 at 12 30 53 pm](https://user-images.githubusercontent.com/14861025/50020364-5cfe8d00-ff9b-11e8-8314-f4a9c151e96c.png)

* allow premium users to create private wikis

![screen shot 2018-12-12 at 2 57 50 pm](https://user-images.githubusercontent.com/14861025/50020300-30e30c00-ff9b-11e8-8ac2-bcd46e8c7e08.png)



![screen shot 2018-12-12 at 2 31 23 pm](https://user-images.githubusercontent.com/14861025/50020204-e1044500-ff9a-11e8-95d4-92f9f57bbf9e.png)

![screen shot 2018-12-12 at 2 31 48 pm](https://user-images.githubusercontent.com/14861025/50020292-288ad100-ff9b-11e8-8104-5c58e46b6008.png)



* allow premium users to add and remove collaborators for my private wikis

___

## How To Use
* Public wikis are visible without an account, but you must sign up to create wikis.
Sign up and confirm your account via email.

* Sign up and confirm your account via email.

* Login with your credentials.

* You will be presented with the wikis index page.

* Your **username** will be presented in the upper-right corner with navigation options:
**Go Premium, Edit Profile, Sign Out**. Go Premium becomes **Standard** when the account is upgraded and vice versa when downgraded.


* Click on a wiki to to see more details.
A **new** button will populates on the index page after sign in. Use it to quickly create a public wiki.

* **mockpedia** link takes you to **your wikis** page. You can create and view wikis from here as well.

* Click one of your **wikis** to see **details**. There will be **options** to **edit, delete, etc…**

* Click **Wikis** _link_ or **wikis** _button_ from any page to return to the _wikis index_ page.


* Click **Go Premium** to upgrade.

* Click **Pay with card**
Enter details.

* Click **Pay**
Your **wikis are now private**. You also have the ability to add unlimited collaborators.

* Click **Standard** to **downgrade** from _premium_.

___
## Development Setup

#### Languages and Frameworks:
* Ruby version 2.3.8
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

Run mockpedia locally:

* Clone the repository
* Run bundle install
* Create the SQLite database with **rake db:create**
* Migrate the SQLite database with **rake db:migrate**
* Start the server using **rails server**
* Run the app on **localhost:3000**






Made by: **Tyrant Davis**
