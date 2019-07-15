# #OctoThorp README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

## Database creation

- Seeded titles from Redit and content if it was available.

## How to run the test suite
1. Fork and clone the repository

2. `cd` into the correct directory, after opening the file, we suggest deleting the 'development.db' (if it exists) file in the event the database is skewed from cloning.

3. Make sure to `bundle install` in your terminal to make sure all your gems are up to date

4. After deleting the database, re-seed the database by first running `db:migrate` in your terminal to make sure the database is structured correctly.

5. Once the migration files are in order, run `db:seed` in your terminal to repopulate the database.

6. To run the program, enter `rails s` in your console to run the application!

## CRUD Actions

- Users can be CREATED and they can CREATE a post.
- Users can READ posts and commpents.
- Users can UPDATE their profile bio as well as their own posts.
- Users can DELETE their posts but not their profile.

## Difficulties 

* Git and needing to wipe out the reposity the second day and reupload it

* Merging to and from the right branch without breaking things

* Getting Redit data to feed in rather than just Faker data.

* Getting users to have a default profile picture.

* Utilizing sessions properly for specific conditions.

* CSSing the site so quickly with little to no working knowledge of it.

* Crashing the site when spamming the 'Like' button. This would need JavaScript to fix as with each like the page needs to reload and incrument the count.

## Stretch Goals

* Getting links to author profiles with in the articles.

* Likes/Dislikes on comments as well as the ability to reply to a comment

* Dislikes on a post

* The ability to change photo or upload photos.

* Links to share articles on the Social Media of choice.

## contributors

* [DaNeil Coulthard] (https://github.com/caffiendkitten)
* [Noah Fairbairn](https://github.com/NFairbairn)


#### Learn.co Educational Content License

Copyright (c) 2015 Flatiron School, Inc

The Flatiron School, Inc. owns this Educational Content. However, the Flatiron School supports the development and availability of educational materials in the public domain. Therefore, the Flatiron School grants Users of the Flatiron Educational Content set forth in this repository certain rights to reuse, build upon and share such Educational Content subject to the terms of the Educational Content License set forth [here](http://learn.co/content-license) (http://learn.co/content-license). You must read carefully the terms and conditions contained in the Educational Content License as such terms govern access to and use of the Educational Content.

Flatiron School is willing to allow you access to and use of the Educational Content only on the condition that you accept all of the terms and conditions contained in the Educational Content License set forth [here](http://learn.co/content-license) (http://learn.co/content-license).  By accessing and/or using the Educational Content, you are agreeing to all of the terms and conditions contained in the Educational Content License.  If you do not agree to any or all of the terms of the Educational Content License, you are prohibited from accessing, reviewing or using in any way the Educational Content.

