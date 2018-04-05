# FirstGenFacultyPage

## Description
This is a website where first-generation faculty can sign
up using their HMC single sign-on, and create profiles including their
picture, contact information, and any information about themselves and
their interests they want to include. OID plans to make this website freely accessible on
the internet, so that current as well as prospective first-generation students
can get in contact with these professors.


## Installation Instructions
In order to run this website locally on your computer, you first have to have Ruby on Rails 4 installed. After that, you can clone this repository with the following command:
* `git clone https://github.com/cs121-Unigon/FirstGenFacultyPage.git`

Then you need to install the necessary gems:
* `bundle install`

And set up the PostgreSQL database:
* `rails db:migrate`
* `rails db:seed`

Then you can run the website using:
* `rails server`

Now if you go to `localhost:3000`, you can see the website running locally!

### Quickstart

Run the following commands:

```git clone https://github.com/cs121-Unigon/FirstGenFacultyPage.git
cd FirstGenFacultyPage/FGFP
bundle install
rails db:migrate
rails db:seed
rails server
