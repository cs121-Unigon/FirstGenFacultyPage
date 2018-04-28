# FirstGenFacultyPage

The First Gen project aims to connect first-generation college students and faculty. We have created a website where first-generation faculty can sign up using their HMC single sign-on, and create profiles including their picture, contact information, and any information about themselves and their interests they want to include. In the future, we hope this website will be available on the internet via the Harvey Mudd website, so that current as well as prospective first-generation students can get in contact with these professors.

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

### Users
All users of this website will be associated with Harvey Mudd College. There are three possible users for this website: first-generation current or prospective students, first-generation professors, and the Office of Institutional Diversity (OID). The students do not need to make an account with the website. They interact with the website by viewing available professor mentors, submitting feedback, questions, or testimonials for the website and browsing through the resources available to first generation college students. Professors who were first generation college students can sign up to be mentors for the program. OID administers the website, keeps the resources up-to-date, and uploads any relevant testimonials or frequently asked questions. 

Each user can interact with the website differently, as shown in the use case diagram in Figure 1. Professors and OID can both see all the pages of the website that a student can. However, many of the features of the website are intended for students, so the associations in the diagram capture the intended usage rather than possible usage. \\


![UnigonUseCaseDiagram.png](images/UnigonUseCaseDiagram.png)
Use Case Diagram. This shows the intended usage of the website for each possible user. The dashed arrows denote that one task must happen before the other can (ie. a professor must log in before they can create a profile). The solid lines denote that the user is intended to use the feature.

### User Journey for Student
#### Main Page
The *Main Page* for the website, pictured in Figure 2, has some basic information about the website, and an overview of all professors who are currently signed up on the site. When a student clicks on the overview of a given professor, the page redirects to that professor's profile page.


![main-pageV2.png](images/main-pageV2.png)
This is the *Main Page* of the website. It has a description of the website and a display of all the professors who have signed up for the site. The block labeled features will contain content that OID provides.

#### Navigation Bar
The navigation bar, pictured in Figure 3, is located at the top of the website and is accessible throughout the whole website. The student can select the "Home" button to go to the *Main Page*. The rest of the buttons will redirect the student to the pages that are described in the following sections.\\


![navbar.jpg](/images/navbar.jpg)
The navigation bar, as can be seen from the *Main Page*

#### Profile Page
Each professor's *Profile Page*, an example of which can be seen in Figure 4, has an in-depth description that they have provided, including their picture, contact information, interests, and why they want to be a mentor. These pages allows the students to learn more about professors before contacting them. 

![prof-page.png](images/Prof-page.png)
This is the *Profile Page* for a professor that shows basic information about an individual professor.

#### Testimonials
Students will be able to browse this page to find out more about the experiences of past participants. If a student wishes to submit their own testimonial, they click the link at the bottom of the page, as can be seen in Figure 5, which redirects them to the *Contact Us* page, from which their testimonial will be sent to OID for approval before being posted on the *Testimonials* page by OID.\\

![Tdone.png](/images/Tdone.png)
An example testimonial

\subsubsection{FAQs}
Students can browse this page to read through some commonly asked questions and answers about the program. If a student wishes to submit a new question, they click the link at the bottom of the page, as seen in Figure 6, which redirects them to the *Contact Us* page, from which they can submit their question to OID.

![Fdone.png](/images/Fdone.png)
An example of an FAQ.

#### Contact Us 
Students will be able to submit feedback through the *Contact Us* page which contains a form. The form allows for five types of feedback to be submitted: "Testimonial," "Question," "Private," "Feedback," "Other." This is demonstrated in Figure 7. 


![contact-us2.png](/images/contact-us2.png)
Contact Us form. The drop down menu allows for the selection of one type of feedback.

All types of feedback are sent to OID's email. Students can submit their testimonials and questions through the "Testimonials" and "Questions" options. Students can submit private questions or information that a student might want to alert OID about through the "Private" option. Anything else should be submitted using the "Other" option. For example, a student might want to let OID know about a resource that is not currently listed using the "Other" option.
% We should mention the "Feedback option"

#### Resources

The resources page has a number of resources intended for first-generation college students as seen in Figure 8. OID has provided links to resources they think would be valuable, including a number of scholarships for first-generation students. 

![newR.png](/images/newR.png)
Resources being displayed on the page


### User Journey for Professor
 
The professors are able to access all the website pages that are available to the student users. Harvey Mudd College professors that were first generation students can sign up to be a mentor to these students by using their HMC credentials. Since we are using Google sign-in, the professor can be assured that their email and password are safely stored. 
% Google sign-in section sounds kinda architecture-y

#### Form Page
After signing in, the professor is directed to a form page, as can be seen in Figure 9, where they can enter all their information and upload a picture. 


![prof-sign-up.png](/images/prof-sign-up.png)
Mentor sign-up for professors. The professor can either drag their picture into the box or use the upload button. The actual image is not displayed on the page. All fields apart from the picture are required to be filled. The form page asks the user to  sign up to be a mentor only if they are an HMC professor. A professor is able to edit their profile after they have completed, in which case they are redirected back to this sign-up page. Note that the picture is cropped for readability.


### User Journey for OID

% Add Admin privileges stuff
OID will be able to access all the same pages that the students can, as well as some private forms used for maintaining the website. These forms are outlined below.

#### Testimonial Form Page
This form page will be accessed only by OID to create new testimonials which will be displayed on the site.


![TForm.png](images/TForm.png)
The form OID will use to create a new testimonial, as can be seen in Figure ???.

#### FAQ Form Page
This form page will be accessed only by OID to create new frequently asked questions and answers, which will be displayed on the site.

![FForm.png](/images/FForm.png)
The form OID will use to create a new FAQ.


#### Resources Form Page 
This form page will be accessed only by OID to post new resources which will be displayed on the site. 

![resources3.png](/images/resources3.png)
Resources being displayed on the page


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
