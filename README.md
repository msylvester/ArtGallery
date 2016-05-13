# Week 7

To run this Rails app on your laptop:

1. Clone this repository
1. bundle install
1. rake db:migrate rake db:seed
1. rails server

The theme of tonight's class is *Security*.

If you really like the topic of application security and want to learn more, see http://guides.rubyonrails.org/security.html

## Warmup (10 minutes)

1. Does the search bar work?  If so, how does it work?
2. Sign in. (Click the Users navlink to see the list of accounts).
2. Notice how the navbar now says "Hello, you!"
2. Change the code to display the user's name instead of the word "you".


## SQL Injection Attacks

These are dangerous. For a written review of what I plan to cover in class, [this blog post is pretty good](http://gavinmiller.io/2015/fixing-sql-injection-vulnerabilities/).

Here's an interesting report from 2011 on security concerns for software, especially web apps: http://cwe.mitre.org/top25/archive/2011/2011_cwe_sans_top25.pdf


## Authentication and Authorization

These two words are similar, but connote two completely different concepts.

I sum it up like this:

* Authentication is *identification*.
* Authorization is *permission*.

You have to get both of these perfectly right, or your app will be insecure.  The smallest weakness can be a disaster. (Google for the  authorization hack on Citibank in 2011.)

For a web app, authorization can be achieved in one of two ways:

* Put code in the controller to redirect unauthenticated users away from an action
* Put code in the view to customize the HTML so that it's appropriate for the user


## Encrypted Cookies with the `session[]` hash

The `session` hash in Rails is a Ruby hash the provides an abstraction over a single cookie.  This cookie:

* Expires at the end of the browser session
* Can hold a maximum of 4K of data
* Is automatically managed by the Rails framework
  * With each request, Rails creates the `session` hash by decrypting cookie headers
  * With each response, Rails encrypts the `session` hash contents into a Set-Cookie header.

## Using Secure Passwords

Here's my setup recipe:

1. Use the 'bcrypt' in your Gemfile
2. Add a column named `password_digest` to your User model
2. Add the line `has_secure_password` to your User model class

Here's how to use it:

* When creating users, assign plain text passwords to the `password` and `password_confirmation` attributes
* When authenticating a user, call the `.authenticate` method, passing the plain-text password attempt.  It will return `false` if the wrong password was given, or the user object if the password was correct.



## Model Validations

Data integrity is super important.  And once you start exposing your data as an API, all sorts of HTTP clients can send you POST requests, bypassing HTML forms.

In Rails, we guard our model data with the `validates` method, documented here: http://guides.rubyonrails.org/active_record_validations.html

Then, we need to make our controllers smart enough to handle any validation errors by checking the return value of `.save` and responding appropriately.
