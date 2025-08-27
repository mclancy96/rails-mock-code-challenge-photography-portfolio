
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

You've just been hired by the 'NYC Photography Society' - congratulations! The devoted members want you to develop a web application that will allow them to record their favorite photography portfolios and the photos in them. To do this, we need a way to keep track of the many NYC portfolios and record the photos for each portfolio.

Luckily, another developer has already started the job. We have a controller, model, and views to support the creation, listing, and display of portfolios. Visiting `/portfolios` displays all of the portfolios recorded by members. Unfortunately, we don't have a way for members to record the photos in each portfolio.

## Deliverables

Implement the following features in this repository. Each item specifies exactly what must be built, how users should interact with it, and what interface elements are required.

1. **Set Up Photo Model and Associations**
    + Create a `Photo` model and database table with columns for `name`, `description`, and a `portfolio_id` foreign key.
    + Set up the association: each `Photo` belongs_to a `Portfolio`; each `Portfolio` has_many `Photos`.

2. **Database Migrations**

    + Create and run migrations to add the `photos` table and set up the foreign key relationship to `portfolios`.
    + Ensure all migrations are present and can be run from a fresh database setup.

3. **Model Validations**

    + In the `Photo` model, require presence of `name` and `description`.
    + In the `Portfolio` model, require presence and uniqueness of `name`, and presence of `address`.
    + Validations must display error messages in the relevant forms when invalid data is submitted.

4. **RESTful Routes and Controller Actions for Photos**

    + Add RESTful routes for `photos` (at minimum: `new`, `create`, `show`).
    + Implement `PhotosController` actions for `new`, `create`, and `show`.
    + The `new` photo form must be accessible from a `Portfolio` show page via a clearly labeled link or button (e.g., "Add Photo").
    + After creating a photo, redirect to the photo's show page.

5. **Photo Form and Error Handling**

    + The `new` photo form must use Rails form helpers and allow the user to enter a name and description.
    + The form must include a way to associate the photo with a specific portfolio (e.g., hidden field or select menu if needed).
    + If the form submission fails validations, display error messages above the form fields.

6. **Portfolio Show Page: List Photos**

    + On each `Portfolio` show page, display a list of all photos belonging to that portfolio.
    + Each photo in the list must link to its individual show page.
    + If a portfolio has no photos, display a message indicating so.

7. **Photo Show Page**

    + The photo show page must display the photo's name, description, and a link back to its parent portfolio's show page.

8. **Navigation and User Flow**

    + All pages must include navigation links to return to the portfolios index and to the relevant parent portfolio where appropriate.
    + The user must be able to navigate from the portfolios index to a portfolio show page, from there to add a new photo, and from a photo show page back to its portfolio.

9. **Rails Console Usage**

    + All associations and validations must work as expected in the Rails console. For example, creating a photo and assigning it to a portfolio should persist and be queryable via ActiveRecord.
