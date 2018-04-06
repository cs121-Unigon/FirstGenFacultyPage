# FirstGenFacultyPage

## Project Description
The First Gen project aims to connect first-generation college students and faculty. We will create a website where first-generation faculty can sign up using their HMC single sign-on, and create profiles including their picture, contact information, and any information about themselves and their interests they want to include. This website will be freely accessible on the internet, so that current as well as prospective first-generation studentscan get in contact with these professors.

## Installation Instructions
Make sure you have **Rails 5.2** installed on your computer. After installation is complete, run the following commands:

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
