# README
Welcome to `Company Name`. The aim of this web application is to provide a number of catering cuisine options to the general public, on the same site.

# Deliverables #
A link (URL) to your published App:  
A link to your GitHub repository.  
Ensure the repo is accessible by your Educators.  
Description of your project, including,
- Problem definition / purpose
- Functionality / features
- Screenshots
- Tech stack (e.g. html, css, deployment platform, etc)
- Instructions on how to setup, configure and use your App.


# Instructions on how to setup, configure and use your App. #
## 1. Directions for users/admins. ##
General users can visit the site and view the different listings available. To book a particular catering cuisine, the general user will need to sign-up for a free account. 

### 1.1 Sign-up - general user ###
Locate the drop down menu..........and click on the sign-up link.  
Enter a valid email and a password (minimum 6 characters). You will receive a welcome email.



## 2. Directions for catering companies. ##
As a general user you can visit the site and view the different listings available.
If you would like to create a listing for your company, you are required to sign-up for an account. 

### 2.1 Directions for sign-up ###
Locate the drop down menu..........and click on the sign-up link.  
You will be required to enter in these details: 
- a valid email
- company name 
- username
- 
- 
- password (minimum 6 characters)
- You will receive a welcome email.

When fields 
 
- When you submit a listing for your company will be created. 


## 1.2 Default User account ##
A user account has been created: email: username: 'coderacademy.owenrob@gmail.com' password: ''

## 1.3 Default admin account ##
An admin account has been created: email; 'admin@admin.com.au', :password => ''


Details of planning process including,
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
- [ ] Extras - Geolocation fro providers
- [ ] Extras - Calendar for bookings
- [ ] Searching, sorting and/or filtering capability
- [ ] Reviews for User


Day | Date | Tasks | Tasks completed | Blocks | Completed by
--- | --- | --- | --- | --- | ---
Mon | `29 April` | Create ERD, Wire, Github, Heroku | ERD, Wire diagrams, Github Repo | Github | Pair programming
Tue | `30 April` |Install Devise for users, design partials, | Installed Devise for Users, deployed on two machines, Changed project - approval of new ERD  | Deploying Heroku on both machines, Pushing/pulling Github | Pair programming
Wed | `1 May` | Install Devise for Providers,  add models (listing, cuisine, booking), modify routes, decide on provider work flow | added devise for providers, added listing model | | Pair programming
Thu | `2 May` | Create all models | Devise providers sign_up/in now routing to correct paths. Created cuisine and bookings model| Devise for providers did not allow for correct routing for sign_up sign_in | Pair programming
Fri | `3 May` | Complete booking form, aws, mailgun, strip | booking form | | pair programming

Day | Date | Tasks | Tasks completed | Blocks | Completed by
--- | --- | --- | --- | --- | ---
Mon | `6 May` | install stripe | added mailer, fixed devise and cancan, added stripe and setup amount path  | Cancan has trouble working with 2 devise models. Mailer - user model | Pair programming
Tue | `7 May` | Reached MVP!! Styling |  |  | Pair programming
Wed | `8 May` |  |  | | Pair programming
Thu | `9 May` |  |  |  | Pair programming
Fri | `10 May` |  |  | | pair programming









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

```
4. Describe the network infrastructure the App may be based on.
```

```
5. Identify and describe the software to be used in your App.
```
We will be using the following software in our project:

 - Ruby: 
 - Ruby on Rails: 
 - html: 
 - scss: 

```
6. Identify the database to be used in your App and provide a justification for your choice.
```
We are using PostgreSQL 11 as our database. 

PostgreSQL is object-relational. It supports user-defined objects and their behaviors including data types, functions, operators, domains and indexes. This makes PostgreSQL extremely flexible and robust. Among other things, complex data structures can be created, stored and retrieved. It supports a number of built-in and user-defined data types, provides extensive data capacity and is trusted for its data integrity. 

PostgreSQL 11 is now the default version for all new provisioned Heroku Postgres databases.  [https://blog.heroku.com/postgresql-11-general-availability]. Since we have deployed on Heroku, we needed to use PostgreSQL 11

```
7. Identify and describe the production database setup (i.e. postgres instance).
```

```
8. Describe the architecture of your App.
```

```
9. Explain the different high-level components (abstractions) in your App.
```
Abstraction is selecting data from a larger pool to show only the relevant details to the object. It helps to reduce programming complexity and effort. In our model active record is the abstraction of SQL. For example when we type in User.find(1), active record performs the following tasks for us: `SELECT  "users".* FROM "users" WHERE "users"."id" = $1 LIMIT $2`  and returns the attribute for 
User, id:1 eg => #<User id: 1, email: "owen@email.com", created_at: "2019-04-30 06:02:36", updated_at: "2019-04-30 06:30:36", username: "owen", firstname: "Owen", lastname: "Shepherd", dob: "2019-04-30", avatar: nil>

```
10. Detail any third party services that your App will use.
```

We will be using the following third party services:

 - Stripe: allows individuals and businesses to make and receive payments over the Internet.
 - Mailgun:  Email Service For Developers
 - Heroku: A platform as a service that enables developers to build, run, and operate applications entirely in the cloud.

 Gems used
- devise
- bootstrap
- aws-sdk-s3
- faker
- dotenv-rails (groups: [:development, :test])
- cancancan


```
11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb)
```

```
12. Discuss the database relations to be implemented.
```

```
13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.
```
Models
Devise: Users/Providers
Listings (relationship with Providers)
Cuisine (relationship with Providers)
Bookings (relationship between providers and users)


```
14. Provide your database schema design.
```

```
15. Provide User stories for your App.
```

```
16. Provide Wireframes for your App.
```
https://www.figma.com/file/aIJ1hn7A456uyNmlZVCCDccz/Rails-Project?node-id=0%3A1


```
17. Describe the way tasks are allocated and tracked in your project.
```
We used trello and the README.md file.
Trello was used to list tasks that needed to be done, doing and completed. These tasks were then divided amongst the group and then listed in the table, located at the start of the README.md file. This table was also used for Agile process.



```
18. Discuss how Agile methodology is being implemented in your project.
```

```
19. Provide an overview and description of your Source control process.
```

```
20. Provide an overview and description of your Testing process.
```
Our testing comprised of user stories and manual testing. We also had third party persons provide feedback.


```
21. Discuss and analyse requirements related to information system security.
```


```
22. Discuss methods you will use to protect information and data.
```


```
23. Research what your legal obligations are in relation to handling user data.
```


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