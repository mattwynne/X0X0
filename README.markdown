# X0X0

This is a codebase designed for practising Test Driven Development, using 
the example of an application that allows you to play naughts and crosses
(or tic-tac-toe in en-US.)

## Context

The application we're building is written in javascript. If you want to take
a look at it, open the `app/index.html` page in a browser.

We have two levels of tests for this applicaiton. There are acceptance tests,
which spell out the basic functionality that our stakeholders expect. Then there
are unit tests which define the technical design of the solution.

We don't expect to cover every possible scenario from acceptance tests. We use 
these as broad brush strokes, and leave the unit tests to pick up on the details 
of every edge-case.

## Running the unit tests

The unit tests run in a browser. Just open up `unit-tests/index.html` in a browser
to run then.

## Running the acceptance tests

You'll need Ruby installed in order to run the acceptance tests for the app.

Once you have Ruby installed, run the following commands to install the 
dependencies to allow you to run the acceptance tests:

```
  gem install bundler
  bundle install
```

You should now have all the test dependencies installed, and be able to run
the tests like this:

```
  cucumber
```
