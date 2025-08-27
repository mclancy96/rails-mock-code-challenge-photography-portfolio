
# Rails Mock Code Challenge: Photography Portfolio

Sharpen your Rails skills by building a Photography Portfolio app for NYC! This practice challenge mirrors a real-world scenario where you'll manage portfolios and their photos.

## Objectives

+ MVC
+ REST
+ Request/Response Cycle
+ Form/Form Helpers
+ ActiveRecord
+ Validations
+ Stay calm, code and debug

## Setup

Before you begin, fork and clone this repo, run `bundle install`, `bin/rails db:migrate` and `bin/rails db:seed` to get started.

## The Domain

## The Domain

You've just been hired by the 'NYC Photography Society' - congratulations! The devoted members want you to develop a web application that will allow them to record their favorite photography portfolios and the photos in them. To do this, we need a way to keep track of the many NYC portfolios and record the photos for each portfolio.

Luckily, another developer has already started the job. We have a controller, model, and views to support the creation, listing, and display of portfolios. Visiting `/portfolios` displays all of the portfolios recorded by members. Unfortunately, we don't have a way for members to record the photos in each portfolio. **Each Portfolio has many Photos, and each Photo belongs to a Portfolio.**

## Instructions / Deliverables

***To help you complete this assignment, we've listed the steps required. Read through them carefully to get a sense of the requirements for this code challenge, and then tackle them one by one.***

1. Before you start building the new functionality, make sure that you are able to create and view a new portfolio.

2. Let's build following an inside-out approach (Domain model to views). Begin by developing the classes required to persist Photos and associate them to a Portfolio. You should then be able to run the code below:

```Ruby
photo.portfolio = portfolio
photo.save
portfolio.photos.first === photo # should return true
portfolio = Portfolio.first
photo = Photo.create(name:'Sunset Over Brooklyn', description: 'A beautiful sunset photo taken from the Brooklyn Bridge')
photo.portfolio = portfolio
photo.save
portfolio.photos.first === photo # should return true
```

3. Set up validations for the photo and the portfolio:

+ A photo must have a name and a description.
+ A portfolio must have a unique name and an address.

4. Now that our backend domain model is properly setup we can build the user facing functionality. Adding this functionality will require you to develop code across many different parts of the application including routes, controllers and views.

Items needed to complete an application that works as described include:

+ `Photo` new, create, and show actions & corresponding views that display all shown data
+ `Portfolio` show page updated to list all its photos
+ All the links and forms to connect the models (the `Photo` show page should link back to its `Portfolio` show page)

---

+ Don't be confused by the sottocasanyc.com/brooklyn/menu website the demo shows. It is just being used to obtain a photo name and description.
