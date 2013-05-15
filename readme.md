# Travis-CI Example for NodeJS

This is just a test project for continuous integration with Travis-CI with NodeJS. Whee! 

Check out the [build status](https://travis-ci.org/conancat/travis-test) of this project.

## Setting up

1. Register an account with http://travis-ci.org
2. Create a repo on [Github](https://github.com/new) 
3. Enable your repo to work with Travis service hook under your [Profile section](https://travis-ci.org/profile)
4. Push the code to your repo. 
5. Check your email for build status updates!

For more details, check out the [Getting Started](http://about.travis-ci.org/docs/user/getting-started/) guide on Travis! 

## Other details
This example is written in CoffeeScript, then compiled into JavaScript. 

To compile, do:

    npm install coffee-script -g
    cake watch

That's all folks! 