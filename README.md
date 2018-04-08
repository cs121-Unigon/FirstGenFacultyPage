# FirstGenFacultyPage
The First Gen project aims to connect first-generation college students and faculty. We will create a website where first-generation faculty can sign up using their HMC single sign-on, and create profiles including their picture, contact information, and any information about themselves and their interests they want to include. This website will be freely accessible on the internet, so that current as well as prospective first-generation studentscan get in contact with these professors.

## Prerequisites
### Ruby and Rails
This project uses Rails 5.2 and Ruby 2.3

### Image Processor and file
This project uses Paperclip gem which requires ImageMagick and `file` command. Installation and configuration instructions found [here](https://github.com/thoughtbot/paperclip#requirements).

## Installation
Download the repo from github by running in desired directory:
```
git clone <repo>
```
Navigate into your directory through terminal and install ruby gems by running the following command:
```
bundle install
```
Finally, finish setting up the environment by running the following commands:
```
rails db:migrate
```
```
rails db:seed
```
In the ***config/application.yml*** file, add configuration values for website mailer to work. 

Lastly, to launch the website, run:
```
rails server 
```
or
```
rails s 
```

## Usage
Once the server is running visit 'localhost:3000' to view the mainpage locally.

## Features
* Main page that displays information of professors
* Sign in using gmail
* Professor sign up (one professor per email)
* Submission of feedback in the form of testimonials, questions, and other.
* Mailer that sends feedback to the email provided in  ***config/application.yml***
* FAQs - displays frequently asked questions about the program
* Resources - displays resources available to first gen students
* Gallery - displays uploaded photos
