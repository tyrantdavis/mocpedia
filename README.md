
  # Mockpedia

 A markdown-based SAAS collaboration and information exchange platform that allows users to create and share wikis with the world community!

  [Mockpedia Demo](https://mockpedia.herokuapp.com/)

![Screen Shot 2019-10-25 at 10 58 46 AM](https://user-images.githubusercontent.com/14861025/67586213-c0f2f580-f716-11e9-9a03-582371dc027b.png)


![Screen Shot 2019-10-25 at 11 16 03 AM](https://user-images.githubusercontent.com/14861025/67587177-e7b22b80-f718-11e9-8b30-64a2e625e5c9.png)


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

![Screen Shot 2019-10-25 at 11 18 07 AM](https://user-images.githubusercontent.com/14861025/67587304-3069e480-f719-11e9-8c52-087c52743f8b.png)


* allow users with a standard account to create, view, edit, and delete their public wikis

![Screen Shot 2019-10-25 at 11 22 01 AM](https://user-images.githubusercontent.com/14861025/67588042-bd616d80-f71a-11e9-8105-d80fc399e7f2.png)
* edit wikis using markdown

![Screen Shot 2019-10-25 at 11 25 55 AM](https://user-images.githubusercontent.com/14861025/67587908-6b204c80-f71a-11e9-8f4f-0dbec7303fde.png)


* allow users to upgrade from a free to a paid plan : **NOTE** The transactions are demos.

![Screen Shot 2019-10-25 at 11 23 29 AM](https://user-images.githubusercontent.com/14861025/67588018-afabe800-f71a-11e9-9c3d-aa196ebe5482.png)

* allow premium users to create private wikis


![Screen Shot 2019-10-25 at 11 44 01 AM](https://user-images.githubusercontent.com/14861025/67588886-ceab7980-f71c-11e9-9b68-25f2e499b31f.png)



![Screen Shot 2019-10-25 at 11 25 07 AM](https://user-images.githubusercontent.com/14861025/67587993-a02c9f00-f71a-11e9-9713-97ab68a55d16.png)


![Screen Shot 2019-10-25 at 11 20 44 AM](https://user-images.githubusercontent.com/14861025/67588101-e124b380-f71a-11e9-8ad4-103f837afc4d.png)



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
* Faker for seeding data
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
