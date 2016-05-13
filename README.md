# Week 7

To run this Rails app on your laptop:

1. Clone this repository
1. bundle install
1. rake db:migrate rake db:seed
1. rails server

At this point, you should be able to browse to `http://localhost:3000` and you should see a list of awesome movies.  

The theme of tonight's class is *Security*.

If you really like the topic of application security, see http://guides.rubyonrails.org/security.html

## Warmup (10 minutes)

1. Does the search bar work?  If so, how does it work?
2. Sign in. (Use the Users tab to see the list of accounts).
2. Notice the navbar now says "Hello, you!"
2. Change the code to display the user's name instead.


## SQL Injection Attacks

These are dangerous. For a review of what I plan to cover in class, [this blog post is pretty good](http://gavinmiller.io/2015/fixing-sql-injection-vulnerabilities/).

Here's a general report from 2011 on security concerns for software, especially web apps: http://cwe.mitre.org/top25/archive/2011/2011_cwe_sans_top25.pdf

## Authentication and Authorization

The words are similar, but these are two completely different concepts.

I sum it up like this:

* Authentication is *identification*.
* Authorization is *permission*.

You have to get both of these perfectly right, or your app will be insecure.  The smallest weakness can be a disaster. (Google for hack on Citibank 2011)

## Encrypted Cookies with the `session[]` hash

The `session` hash in Rails is a Ruby hash the provides an abstraction over a single cookie.  This cookie:

* Expires at the end of the browser session
* Encrypts itself automatically on its way to the browser
* Decrypts itself automatically on its way to the server
* Is automatically managed by the Rails framework

## Model Validations

Data integrity is super important.  And once you start exposing your data as an API, all sorts of HTTP clients can send you POST requests, bypassing HTML forms.

In Rails, we guard our model data with the `validates` method, documented here: http://guides.rubyonrails.org/active_record_validations.html

Then, we need to make our controllers smart enough to handle any validation errors by checking the return value of `.save` and responding appropriately.
