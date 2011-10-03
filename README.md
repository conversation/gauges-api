# Gaug.es API

*Warning: stand back, we're hacking shit!*

[Gauges](http://gaug.es/) is an awesome service, it makes us happy. Unfortunately it doesn't have an official API, which makes us slighly less happy.

It turns out that because Gauges is powered by [Pusher](http://pusher.com/) we don't need no stinkin' API. We can just subscribe to the correct channel on Pusher and voilá: we get our real-time page hits.

## Gimmie!

We need two pieces of information to connect to Pusher and receive data. Firstly we need the Gauges application key, which in our case is always the same and is hard-coded in our app. Secondly, we need our Gauges user ID which you can get with a bit of javascript console hacking.

Sign in to Gauges, fire up a javascript console and type:

    Gauges.user.id

Throw the user ID in the config.yml and run the example:

    bundle exec ruby gauges_api_test.rb
