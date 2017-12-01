# Sorting Hat app

This is an app to help manage your band and you choose your setlist.

### Installing dependencies

This project uses:
 -  The 2.3.4 Ruby version.
 -  The 5.1.0 Rails version.

You can install ruby with [RVM](https://rvm.io/rvm/install) and then install the correct version of Ruby:

        $ rvm install ruby-2.3.4

You can run bin/setup to configure all the basic settings first:

        $ bin/setup

Install dependencies using bundler like above:

        $ bundle install

In case you don't have bundler:

        $ gem bundler install

You need to have an account on [Spotify for developers](https://beta.developer.spotify.com/dashboard/login). After you
create an app, you put your credentials on .environment_vars and run:

        $ eval "$(cat .environment_vars)"

#### Automated tests with RSpec

You can run all tests using:

        $ rspec

#### Running in your local machine

You can run like above:

        $ rails server

And then access the link [http://localhost:3000/](http://localhost:3000/) in your browser.
