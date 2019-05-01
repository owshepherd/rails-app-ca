# README


Details of planning process including,
Project plan & timeline

- [X] Design project - Mon/Tue.
- [X] Start coding - Mon
- [X] Start styling - Tues
- [ ] Finish adding models - Wed/Thu
- [ ] Add CRUD functionality - Wed/Thu
- [ ] Add mailgun, stripe, aws - Fri
- [ ] 
- [ ]


Day | Date | Tasks | Tasks completed | Blocks
--- | --- | --- | --- | ---
*Mon* | `29 April` | Create ERD, Wire, Github, Heroku | ERD, Wire diagrams, Github Repo | 
Tue | 30 April |Install Devise for users, design partials, | Installed Devise for Users, deployed on two machines, Changed project - approval of new ERD  | Deploying Heroku on both machines, Pushing/pulling Github
Wed | 1 May | Install Devise for Providers,  add models (listing, cuisine, booking), modify routes, decide on provider work flow | added devise for providers, added listing model | 
Thu | 2 May |  | |
Fri | 3 May |  | |




2.2 Requirements - Short Answer Questions

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


```
11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb)
```

```
12. Discuss the database relations to be implemented.
```

```
13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.
```

```
14. Provide your database schema design.
```

```
15. Provide User stories for your App.
```

```
16. Provide Wireframes for your App.
```

```
17. Describe the way tasks are allocated and tracked in your project.
```

```
18. Discuss how Agile methodology is being implemented in your project.
```

```
19. Provide an overview and description of your Source control process.
```

```
20. Provide an overview and description of your Testing process.
```

```
21. Discuss and analyse requirements related to information system security.
```

```
22. Discuss methods you will use to protect information and data.
```

22. Research what your legal obligations are in relation to handling user data.
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