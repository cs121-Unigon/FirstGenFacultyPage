# FirstGenFacultyPage

The First Gen project aims to connect first-generation college students and faculty. We will create a website where first-generation faculty can sign up using their HMC single sign-on, and create profiles including their picture, contact information, and any information about themselves and their interests they want to include. This website will be freely accessible on the internet, so that current as well as prospective first-generation studentscan get in contact with these professors.

## Architecture

### Prerequisites
##### Ruby and Rails
This project uses Rails 5.2 and Ruby 2.3

#####  Image Processor and file
This project uses Paperclip gem which requires ImageMagick and `file` command. Installation and configuration instructions found [here](https://github.com/thoughtbot/paperclip#requirements).

### Gems
* Bulma - Used for styling the website
* Paperclip - Used for profile image uploading
* Better Errors - Used to see more descriptive errors while in development mode
* Omniauth Google Oauth2 - Used to allow professors to sign in with google

## Installation
After prerequisites have been met, run the following commands:

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

## Functionality
* Main page that displays information of professors
* Sign in using gmail
* Professor sign up (one professor per email)
* Submission of feedback in the form of testimonials, questions, and other.
* Mailer that sends feedback to the email provided in  ***config/application.yml***
* FAQs - displays frequently asked questions about the program
* Resources - displays resources available to first gen students

## Known Problems
Currently, if you go to the FAQ page, any user can create a question and answer which will automatically be shown on the page. Any user should not be able to do that, and we need to remove that functionality from the website since it should be part of admin privileges which only OID has. Secondly, if you got to the FAQ page by clicking the button on the header, then click "new FAQ" and click on the FAQ button on the header again, an error is thrown. 

## Contributing
1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request

## Credits
Contributors: Daksha Agarwal, Luis Hernandez Cruz, Chen Pekker, Nelll White 
Client: Dean Zack Ritter, Diana Aguilar, OID
CS121: Yekaterina Kharitonova

## License
See LICENSE.txt
