# README  

![cc_logo](https://user-images.githubusercontent.com/47741682/57575100-d1c0ef00-7487-11e9-805a-670f2042a370.png "Catering Combined")

# Catering Combined. Many Cuisines, One Place
Welcome to `Catering Combined`. The aim of this web application is to provide a number of catering cuisine options to the general public, on the same site.

# Deliverables 
A link (URL) to your published App:  https://floating-wave-89515.herokuapp.com
A link to your GitHub repository.  https://github.com/owshepherd/rails-app-ca  
Ensure the repo is accessible by your Educators: Repo is set to public view.   
Description of your project, including,
- Problem definition / purpose (see questions 1-3)
- Functionality / features
  - Navbar with drop down menus
  - Cards that hover to indicate re-direction
  - on landing page, 3 recent listings displayed. One click to access specific details
  - 2 clicks to reach specific information from a seller 
  - Users can search by cuisine type
  - Users can book one or many caterers. pick a date and time of event
  - Users can modify their account. Add an avatar 
  - Users can leave reviews
  - Admin can remove reviews
  - Providers can see other listings and all reviews
  - Providers can see all bookings (with information) and view a map for location of event


- Screenshots (within the README.md)
- Tech stack (e.g. html, css, deployment platform, etc)
  - Programming language (Client side): html
    - Stylesheet : SCSS
    - Client side framework: Bootstrap
  - Programming language (server side): Ruby v 2.5.3
    - Framework: Ruby on Rails v 5.2.3
  - Operating system: macOS Mojave Version 10.14.4
  - Web server: Heroku
  - Cloud storage: GitHub, Amazon SW3, Stripe
  - Database: PostgreSQL 11.3 with PostGIS 2.5.2


- Instructions on how to setup, configure and use your App.


# Instructions on how to setup, configure and use your App.
## 1. Directions for guest. 
Guest users can visit the site and view the different listings available.  
Guests can click on one of the newest listings or click on the Listing link in the nav bar.  
When a listing is clicked on, you will be re-directed to the Listing show page. In the show page you will find extra important information about the listing, including cuisine type, cost per person and minimum people required for booking. You can also read user reviews.  
To book a particular catering cuisine, the general user will need to sign-up for a free account. 

### 1.1 Sign-up - general user ###
Click on the drop down menu called "My Account" located top right hand corner, and click sign-up User.  
You will be required to fill in:
- username
- email address (minimum 6 characters)
- first name
- last name
- date of birth
- password  
  
You will be re-directed to the home page. You will also receive a welcome email. 

### 1.2 Create a booking - general user ###
On the home page, follow the directions as guest user (section 1).  
As a user you can now have access to the "Create a Booking" button located on the listing show page.  
You can also add a review.  
After clicking on "Create a Booking", you will be required to fill in
- location of event (full address - number,street,city)
- number of guests (minimum number of guests required will be shown)
- Date and time of booking  

When these details are complete, click on "Create your booking". You will be directed to booking summary page where you can confirm you your details for your event. You can either pay for the booking or cancel the booking.  
- If you cancel you will re-directed to the listing show page.  
- If you pay for the booking, you will be directed to the booking confirmation page to view your details.  The booking will appear in your booking list page. You can access this page by clicking "Bookings" located in the nav bar.  

### 1.3 Modify account - general user ###
Click on the drop down menu, top right of nav bar, located next to your first name. and click on "Modify account'.  
Here you can:
- add an avatar
- change all your details  

You will also receive a confirmation email that you have modified your account. 

### 1.4 User profile - general user ###
On the home page, locate the "User Profile" link to view your user profile settings.


## 2. Directions for catering companies. ##
As a general user you can visit the site and view the different listings available.
If you would like to create a listing for your catering company, you are required to sign-up for an account. 

### 2.1 Sign-up - provider ###
Click on the drop down menu called "My Account" located top right hand corner, and click "Sign-up Provider".  
You will be required to fill in:
- a valid email
- username
- company name 
- city
- state
- postcode
- minimum persons for a booking
- Cost per head
- Cuisine type that you specialise in
- password (minimum 6 characters)  

After creating an account 
- You will be re-directed to the home page. 
- You will also receive a welcome email. 
- A listing will be automatically generated and be displayed on the Listing Index page.

On you listing show page, you can view your listing and read reviews left by customers.

### 2.2 Modify account/listing ###
Click on the drop down menu, top right of nav bar, located next to your first name. and click on "Modify account'.  
Here you can:
- change all your details  

### 2.3 View your bookings ###
Located in the nav bar, click on "Bookings" lick. You will be re-directed to your current bookings. On the this page you can view bookings summary. You can also view the location of the booking by clicking on the "Map location" button.  

## 3. Directions for Admin. ##
Administrators are created as a "user" and given admin privileges.

### 3.1 Sign-up - User-Admin ###
Complete details as for user to create an account. Enter Rails console to change admin attribute in users table to 'true'

### 3.2 User-Admin Tools ###
Just below the nav bar, on the home page, you will see a set of Administrator tools. You can edit:
- cuisine types
- provider details
- user details
- create test bookings for providers
- delete user reviews


#### 3.2.1 Cuisine types ####
Add, edit or delete cuisine types

#### 3.2.2 provider details ####
You will see a full list of providers with accounts. You can 
- edit provider details
- delete provider account

#### 3.2.3 user details ####
You will see a full list of users with accounts. You can 
- edit user details
- delete user account


## 4.1 Default User account ##
A user account has been created:  
'coderacademy.owenrob@gmail.com'  
password: 123456

## 4.2 Default admin account ##
An admin account has been created:  
robertdematteo1971@gmail.com.  
password: 123456  

Approved gmail accounts with mailgun

coderacademy.owenrob@gmail.com password:    
harrison.malone2@gmail.com !!


===================================================================================
# Design documentation including,
## Design process  

We used figma to produce wireframes and user workflows.  
We used DB Designer to create our ERD diagram and to configure associations. 

*Overall design*  
Bootstrap was used for the majority of the app. Although bootstrap provides a wealth of designs it was frustrating to over-ride default options.  

*Colors*    
The color palette was very simple. We used a combination of blue (color: #007bff), grey (color: #757575), white (color: #FFFFFF) and black (color: rgb(38, 38, 38)

![colors](https://user-images.githubusercontent.com/47741682/57579135-0f029c80-74db-11e9-9a6c-45c6d737c90e.png)

![colors2](https://user-images.githubusercontent.com/47741682/57579147-44a78580-74db-11e9-950b-53f3a1c874ff.png)

*Fonts*
Our global font-family was: 'Open Sans', sans-serif. We placed this in our application controller with the !important tag. 

*Page Layout*  
We used an open layout for all our web pages. This approach lead to clean well spaced out design.  
As we have two separate sign-up/in 
The navbar was located at the top of each page, with drop down menus. 




## User stories (see question 20 )
## A workflow diagram of the user journey/s (also see question 16)
Guest:  
- landing page - sign-up
- landing page - listing index - listing show  

User:  
- landing page - sign-up
- landing page - login
- landing page - modify account
- landing page - listing index - listing show - booking - booking summary - booking confirmation
- landing page - listing index - listing show - review
- landing page - bookings index page
- landing page - user profile  

Provider (caterer):
- landing page - sign-up
- landing page - login
- landing page - modify account
- landing page - listing index - listing show (listing and add review)
- landing page - bookings index page - map show page
- landing page - provider profile  

User - Admin:
- landing page - sign-up
- landing page - login
- landing page - modify account
- landing page - listing index - listing show 
- landing page - user index - user show - user edit
- landing page - provider index - provider show - provider edit 


## Wireframes (see question 16)
## Database Entity Relationship Diagrams (see question 12)





=================================================================================
# Details of planning process including, #
Project plan & timeline..

Week 1
- [X] Design project - Mon/Tue.
- [X] Start coding - Mon
- [X] Start styling - Tues
- [X] Finish adding models - Wed/Thu
- [X] Add CRUD functionality - Wed/Thu
- [X] Add mailgun, stripe, aws - Fri  
 

Week 2
- [X] Add cancan can, Add admin to user model
- [X] Extras - Geolocation fro providers
- [ ] Extras - Calendar for bookings
- [ ] Searching, sorting and/or filtering capability
- [X] Reviews for User
- [X] Search funsction


Day | Date | Tasks | Tasks completed | Blocks | Completed by
--- | --- | --- | --- | --- | ---
Mon | `29 April` | Create ERD, Wire, Github, Heroku | ERD, Wire diagrams, Github Repo | Github | Pair programming
Tue | `30 April` |Install Devise for users, design partials, | Installed Devise for Users, deployed on two machines, Changed project - approval of new ERD  | Deploying Heroku on both machines, Pushing/pulling Github | Pair programming
Wed | `1 May` | Install Devise for Providers,  add models (listing, cuisine, booking), modify routes, decide on provider work flow | added devise for providers, added listing model | | Pair programming
Thu | `2 May` | Create all models | Devise providers sign_up/in now routing to correct paths. Created cuisine and bookings model| Devise for providers did not allow for correct routing for sign_up sign_in | Pair programming
Fri | `3 May` | Complete booking form, aws, mailgun, strip | booking form | | pair programming

Day | Date | Tasks | Tasks completed | Blocks | Completed by
--- | --- | --- | --- | --- | ---
Mon | `6 May` | Manual testing, install stripe | added mailer, fixed devise and cancan, added stripe and setup amount path  | Cancan has trouble working with 2 devise models. Mailer - user model | Pair programming
Tue | `7 May` | Manual Testing, Reached MVP!! Styling | Stripe added | Navbar and Bootstrap | Pair programming
Wed | `8 May` | Manual testing, Styling, User reviews | User reviews  | User reviews, nested routes, navbar styling  | Styling, NavBar - Owen, Other - Rob
Thu | `9 May` | User show page, add mail for user login | Styling,  |  | Styling - Owen, Other - Rob
Fri | `10 May` | Add geolocater, styling, testing |  | | Styling - Owen, Other - Rob






=================================================================================================




# 2.2 Requirements - Short Answer Questions
```
1. What is the need (i.e. challenge) that you will be addressing in your project?
```   
Initially our idea was to create a web application which will act as a two sided market place for users who want to sell and/or purchase miscellaneous items.

On day 2 we decided to change our project direction. Our new challenge was to create a catering application where users could find a particular type of cuisine for a private function. Chefs/companies can advertise their cuisine speciality on the application. 


```
2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?
```
Presently, many catering companies have their own websites, only providing select options to their potential customers. Customers have the problem of limited cuisine selection from these websites. 

The problem is that customers have little 

This marketplace app will advertise many catering companies on the one site, with each catering company specializing in a particular cuisine. 

Benefits for catering companies include 
- drastically reduced website overhead costs
- increased exposure to customer base

Benefits for customer base include
- many cuisines in the one location
- ability to find catering companies by location
- reduced costs from increased competition (many companies on the one site)
- provide/read feedback 

```
3. Describe the project will you be conducting and how. your App will address the needs.
```
Our application is a catering service platform which enables consumers to source caterers for events and functions. Users are offered the ability to find and compare caterers who specialise in a variety of different cuisines while caterers are able to enhance their marketplace reach and make themselves more accessible with a reduced overhead cost (advertising, web presence, etc.)

```
4. Describe the network infrastructure the App may be based on.
```

Catering Combined uses the cloud platform Heroku for its infrastructure. Heroku has enabled us to handle tasks such as application deployment and hosting. 
When our app is deployed to Heroku, using Heroku run commands. Heroku packages the app’s code and dependencies into containers (lightweight, isolated environments that provide compute, memory, an OS, and an ephemeral filesystem). Containers are typically run on a shared host, yet are completely isolated from each other.  

The Heroku Platform uses the container model to run and scale all Heroku apps. The containers used at Heroku are called “dynos.” Dynos are isolated, virtualized Linux containers that are designed to execute code based on a user-specified command. A Heroku dyno is an instance of a server, that has all your app's source code, dependencies and environment variables pre-loaded into it, and can run any process that comprises your app.  
As Heroku handles much of this for us, we are able to direct a majority of our focus toward application development - this is particularly true as application are able to be instantly deployed from the terminal ("git push" commands). Heroku performs the building tasks for the application and makes numerous add-on resources available. 

```
5. Identify and describe the software to be used in your App.
```
We will be using the following software in our project:

 - Ruby: Ruby is dynamic, open source, object-oriented programming (OOP) language. Ruby is written in C programming language and has the ability of Python and Pearl. It was conceived and developed by Yukihiro Matsumoto of Japan in 1993-1995. It was first released on Japanese domestic newsgroup in December 1995.
 - Ruby on Rails: Ruby on Rails is open source software.  It is an open source framework for Web development in Ruby. Rails is made up of several components, beyond Ruby itself, including: Active Record, Action pack, Action mailer, Action web services. Rails is also an MVC (model, view, controller) framework where all layers are provided by Rails.
 - html: Hypertext Markup Language (HTML) is the standard markup language for creating web pages and web applications. HTML describes the structure of a web page semantically
 - SCSS: Sassy cascading style sheets is a style sheet language. Sass is a preprocessor scripting language that is interpreted or compiled into Cascading Style Sheets (CSS). SCSS is a special type of file for SASS, a program written in Ruby that assembles CSS style sheets for a browser.

```
6. Identify the database to be used in your App and provide a justification for your choice.
```
We are using PostgreSQL 11 as our database. 

PostgreSQL is object-relational. It supports user-defined objects and their behaviors including data types, functions, operators, domains and indexes. This makes PostgreSQL extremely flexible and robust. Among other things, complex data structures can be created, stored and retrieved. It supports a number of built-in and user-defined data types, provides extensive data capacity and is trusted for its data integrity. 

PostgreSQL 11 is now the default version for all new provisioned Heroku Postgres databases.  [https://blog.heroku.com/postgresql-11-general-availability]. Since we have deployed on Heroku, we needed to use PostgreSQL 11

```
7. Identify and describe the production database setup (i.e. postgres instance).
```

The database for our application was PostgreSQL. PSQL was used in favour of the stock SQLite due it being a more efficient alternative. PSQL is also able to be used in conjunction with Heroku without issue.

Creation of the PSQL database is relatively simple. First the user specifies which database they would like to use in conjunction with their Rails application on creation. This information is passed into the application and is carried over to Heroku on deployment. Models can then be migrated using either "rake db:migrate" (local) or "heroku run rake db:migrate" (Heroku deployment); both of these will populate the database structure specified.

```
8. Describe the architecture of your App.
```
This application was been created using the Ruby on Rails framework. This framework uses an MVC (model view controller) architecture which, as suggested, separates the application into different components: the model (logic), controllers (intermediary between the model and the view) and the views (user interface).

Within this application, there are several models. These are:
- Application Record
- Booking
- Cuisine
- Listing
- Place
- Provider Ability
- Provider
- Review
- User Ability, and
- User

Controllers for the application are as follows:
- Application Controller
- Bookings Controller
- Charges Controller
- Cuisines Controller
- Listings Controller
- Places Controller
- Providers Controller
- Reviews Controller
- Users Controller
- Welcome Controller

Views, as mentioned previously, deal with the application's graphical user interface. Many of the controllers. Views largely consist of an index page, a show page, a new page or an edit page. These views are tied to both the controllers and the models mentioned above.

Partials (such as the navbar shown on all pages) are also considered views. These have been manually added to all pages where this should be shown.

The process can be explained in the image below: 


![RAILS](https://user-images.githubusercontent.com/47741682/57570080-900d5580-7441-11e9-9356-e41886db2cf6.jpg)

```
9. Explain the different high-level components (abstractions) in your App.
```
Abstraction is selecting data from a larger pool to show only the relevant details to the object. It helps to reduce programming complexity and effort. In our model active record is the abstraction of SQL. For example when we type in User.find(1), active record performs the following tasks for us: `SELECT  "users".* FROM "users" WHERE "users"."id" = $1 LIMIT $2`  and returns the attribute for 
User, id:1 eg => #<User id: 1, email: "owen@email.com", created_at: "2019-04-30 06:02:36", updated_at: "2019-04-30 06:30:36", username: "owen", firstname: "Owen", lastname: "Shepherd", dob: "2019-04-30", avatar: nil>

Middle-level components include scaffold and helpers.  A `scaffold` is a code generator tool that can build a complete stack of components, given a database record definition. With Ruby-on-rails, a scaffold will build a set of html components, add the new ActiveRecord model to the routing tables, and build stubs for CSS and Javascript customization, plus a complete test framework. `Helpers` in Rails are used to extract complex logic out of the view so that code can be better organized. 

```
10. Detail any third party services that your App will use.
```
We will be using the following third party services:

 - `Stripe`: allows individuals and businesses to make and receive payments over the Internet.
 - `Mailgun`:  Email Service For Developers
 - `Heroku`: A platform as a service that enables developers to build, run, and operate applications entirely in the cloud.
 - `Amazon S3`: Amazon Simple Storage Service (Amazon S3) is storage for the internet. Amazon S3 can be used to store and retrieve any amount of data at any time, from anywhere on the web. These tasks can be accomplished using simple and intuitive web interface of the AWS Management Console.
 - `Google Maps`: Provides static and interactive maps

 The following additional Gems were also used
- devise
- bootstrap
- aws-sdk-s3
- faker
- dotenv-rails
- cancancan
- aws-sdk-s3
- jquery-rails
- stripe
- geocoder
- font-awesome-sass


```
11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb)
```
Were we to select a comparable two-sided marketplace, I would choose AirBnB. The reason for this is that two users of different "levels" (in this case, a standard user and a caterer) are able to come together and exchange a good or service. These similarities could be further enhanced with future development (menu specific search functions, booking availability and so on).

```
12. Discuss the database relations to be implemented.
```

Design One - Department Store idea ERD
<img width="1199" alt="erdV1store" src="https://user-images.githubusercontent.com/47741682/57575465-d2f51a80-748d-11e9-93b3-d48fbe976800.png">

Design two - Catering idea ERD
![erdV2](https://user-images.githubusercontent.com/47741682/57575450-a7723000-748d-11e9-876a-e8117f632b32.png)


```
13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.
```
Active Record is the M in MVC - the model - which is the layer of the system responsible for representing business data and logic. An association is a connection between two Active Record models. The types of associations used in our model where:
- belongs_to
- has_one
- has_many


The belongs_to Association  
A belongs_to association sets up a one-to-one connection with another model, such that each instance of the declaring model "belongs to" one instance of the other model. 

The has_one Association  
A has_one association also sets up a one-to-one connection with another model. This association indicates that each instance of a model contains or possesses one instance of another model.  

The has_many Association  
A has_many association indicates a one-to-many connection with another model. This association is often found on the "other side" of a belongs_to association. This association indicates that each instance of the model has zero or more instances of another model. 

The associations between the models in our app includes:

Provider: 
- has_one :listing
- has_one :cuisine
- has_many :bookings  

User:  
- has_many :bookings, dependent: :destroy
- has_one_attached :uploaded_image, dependent: :destroy
- has_many :reviews, dependent: :destroy  

Listing:  
- has_one :provider
- has_many :reviews, dependent: :destroy  

Cuisine:  
- has_many :providers  

Booking  
- has_one :user
- has_one :provider
- has_one :place, dependent: :destroy  

Review  
- belongs_to :listing
- belongs_to :user  

Place  
- belongs_to :booking


```
14. Provide your database schema design.
```
The schema for our application is as above.

```
15. Provide User stories for your App.
```
As a guest, visitors can:
- Visit the site
- Browse listings (either all or by cuisine type)
- View listings
- Sign up for an account

In addition to that which has been mentioned above, a user can also:
- Create a new booking
- View previously made bookings
- Modify their own account information
- Create reviews on listings
- Delete and/or edit reviews on listings

As a provider (caterer), visitors can:
- View listings
- Browse listings
- View bookings made for their services
- Edit their own listings and/or account information

```
16. Provide Wireframes for your App.
```
The Wire frames are located at https://www.figma.com/file/aIJ1hn7A456uyNmlZVCCDccz/Rails-Project?node-id=0%3A1 and images are below.  


<img width="910" alt="wireframe" src="https://user-images.githubusercontent.com/47741682/57575652-f28e4200-7491-11e9-8a2f-c06894d3fe36.png">

```
17. Describe the way tasks are allocated and tracked in your project.
```
We used trello and the README.md file.
Trello was used to list tasks that needed to be done, doing and completed. These tasks were then divided amongst the group and then listed in the table, located at the start of the README.md file. This table was also used for Agile process.  
 
 <img width="1440" alt="trello" src="https://user-images.githubusercontent.com/47741682/57575666-1487c480-7492-11e9-8bfd-ad3165698225.png">


 We used slack to communicate issues  

 <img width="1018" alt="interaction_with_owen" src="https://user-images.githubusercontent.com/47741682/57575671-35501a00-7492-11e9-939a-7911dcbe1eca.png">



```
18. Discuss how Agile methodology is being implemented in your project.
```
Agile is a project management methodology that uses short development cycles called sprints to focus on continuous improvement in the development of a product or service.  
The more traditional cumbersome methodologies like waterfall typically require entire project groups to meet and discuss full project goals throughout each phase. Agile, however, uses smaller more focused groups that meet more frequently to discuss very specific goals, making it easier to make rapid changes as required. This allows teams to be more agile, more effective and increases the chances of meeting customer goals.  
Here are some common agile terms and how we used them in our project:  
- `Scrum - A framework by which a small team, consisting of a product owner, scrum master, developers, and testers, works to deliver a product or product increment in time periods of no more than 4 weeks, called “sprints.”`  
The team consisted of Owen Shepherd and Robert De Matteo.  
- `Sprint - A finite time period allotted to work on an approved number of tasks relating to a product increment. Sprints are prioritized in order of execution.`  
Our Sprint cycle was daily. We set tasks to be completed at the beginning of the day.  
- `User Stories - Small elements that work is divided up into. Each story contributes to the value of the end product. User stories are frequently referred to as “tickets.”`  
We used user stories as out testing tool.  
- `Scrum/Kanban Board - A task board divided into sections (usually columns). The most basic task board has columns labelled To Do, In Progress, and Done.`  
- We used Trello as our scrum board. We had three columns: to do, doing and done.  
- `Scrum Meeting/Standup - A quick (usually 10-15 minutes) meeting that takes place regularly where team members coordinate their daily work.`  
We participated in a daily standup meeting at 10.30 with 6 other groups. The meeting went for 15-20 minutes.  
- `Sprint Planning - A meeting to decide which stories from the backlog to bring into the next sprint.`  
Not implemented.
- `Retrospective - the team reviews their work and discusses ways to improve the next Sprint.`  
Not implemented.


```
19. Provide an overview and description of your Source control process.
```
Source control proved to relatively difficult for us due to persistent merge conflicts and similar issues with GitHub. Owen largely worked within the master after becoming frustrated working in his own individual branch and repeatedly encountering these kinds of issues. Rob, conversely, worked within his own assigned branch and pushed his work up to master. The approach used by Rob is the more ideal method of source/version control (ie. submit a pull request, review the work and merge with master branch). An additional approach would be to delete each working branch after it has been pushed to Github.


```
20. Provide an overview and description of your Testing process.
```
Our testing comprised of user stories and manual testing. We also had third party persons provide feedback.


```
21. Discuss and analyse requirements related to information system security.
```

Information security is defined as `protecting information (data) and information systems from unauthorized access, use, disclosure, disruption, modification, or destruction.` The threats against web applications include user account hijacking, bypass of access control, reading or modifying sensitive data, or presenting fraudulent content.

#### user account hijacking  
It is crucial to make sure that all user data (emails, passwords, etc.) are stored securely and are not accessible by third-party software. We used DEVISE to authorize user information. Passwords were encrypted to the database, thus could not be viewed when accessing records. To improve this security measure we could  
- implement the use of strong passwords
- use CAPTCHAs  

#### bypass of access control, reading or modifying sensitive data 
We used cancan can gem to prevent unauthorized access, reading or modifying sensitive data . This was performed at 3 layers.  
1. The first layer was to restrict access of certain pages to guest users and/or users and/or providers and/or administrators. This was actioned in the user_ability and provider_ability models. Ruby code was used in other models to determine access to data. In our model users could not access provider information and vice-versa. However, admin users were able to access and modify user and provider information. This function was needed incase the admin user was not familiar with the use of rails console to edit the user and provider information. However going forward, this functionality will need to be re-addressed as it posses a vulnerability of protecting private data.  
2. The second layer was to protect url by adding an `load_and_authorize_resources` to each model.  
3. Third layer was to use ruby methods (if) to control access

#### presenting fraudulent content  
Protection of the device which contains the source of the code is another consideration. A good firewall would help with this security measure. 


Rails has developed an extensive file on Securing Rails Applications https://guides.rubyonrails.org/security.html#intranet-and-admin-security.  Adhering to these suggestions would increase the security of our app. 

We were also advised by our instructors not to push security keys and/or other passcodes to GitHub and that these should be included in the git-ignore for our application. This is due to the prevalence of bots and/or malicious use whereby these keys are discovered by a third-party and used without the owner's consent. These passcodes can be stored securely within Heroku (config vars, .env).

```
22. Discuss methods you will use to protect information and data.
```
All credit card information is stored in the Stripe database, so no need to protect this information.  
User accounts are protected using by email and password combination.  
The database is stored in Heroku servers thus user and provider information is protected with Heroku security systems.  
All keys that are stored in the .env file have variables names that are used in the development and production environment. The .env file has been placed in the gitignore file. This means this data stays on local machines.  
Stripe and Google Cloud Keys have are stored in credentials.yml which encrypts the keys. Since this file is encrypted, it is safe to push this to a remote git repository or a server.  
the master.key is a file containing the encryption key. Without this file or if it is modified, Rails will not be able to read credentials stored in credentials.yml.enc. The maser.key has been placed in the gitignore file. 


```
23. Research what your legal obligations are in relation to handling user data.
```
The Australian Government has legislated the Privacy Act 1988 to details legal obligations to handle user data. The latest additions were registered on 11 January 2019 and a full copy of the act is available from https://www.legislation.gov.au/Details/C2019C00025. Being a long and tedious read, I prefer to reference the `Guide to securing personal information`, published by the Australian Government, June 2018 https://www.oaic.gov.au/agencies-and-organisations/guides/guide-to-securing-personal-information. This guide provides guidance on the reasonable steps entities are required to take to protect the personal information they hold from misuse, interference, loss, and from unauthorised access, modification or disclosure. The guide specifically explains the Australian Privacy Principle (AAP) 11 - security of personal information which describes the information lifecycle. Personal information security throughout the lifecycle involves:  
1. considering whether it is actually necessary to collect and hold personal information in order to carry out your functions or activities
2. planning how personal information will be handled by embedding privacy protections into the design of information handling practices
3. assessing the risks associated with the collection of the personal information due to a new act, practice, change to an existing project or as part of business as usual
4. taking appropriate steps and putting into place strategies to protect personal information that you hold
5. destruction or de-identification of the personal information when it is no longer needed.    

APP 12 describes access to personal information while APP 13 outlines correction of personal information.

  
On May 25th 2018 the Europe’s General Data Protection Regulation (GDPR) came into affect. The GDPR is are rules for how companies manage and share personal data. In theory, the GDPR only applies to EU citizens’ data, but the global nature of the internet means that nearly every online service is affected.  The GDPR sets a higher bar for obtaining personal data. At any time a company collects personal data on an EU citizen, it will need explicit and informed consent from that person. Users also need a way to revoke that consent, and they can request all the data a company has from them as a way to verify that consent. In addition the GDPR sets severe penalties for violations - 4% of a company’s global turnover (or $20 million, whichever is larger). Companies will now need to require permission to collect data. There will also be more opportunities for individuals to download all the data a company has on an the individual.  
The GDPR also sets rules for how companies share data after it’s been collected.  

  
====================================================  
This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
