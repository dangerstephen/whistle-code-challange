# Whistle Lab's Code Challenge 
Interview code challange sent to me by [Whistle][]

## The Challenge 
Your assignment is to create a RESTful API to manage a dog's daily schedule.

At the bare minimum, this service should be able to:
- Schedule mealtimes for a dog
- Schedule walks for a dog
- Retrieve a dog's schedule for a particular day in JSON format

One important piece of business logic is that a dog cannot be doing multiple activities at the same time.

Do not worry about:
- Having different users or permissions
- Time zones, it is perfectly fine to assume all dogs live in the same time zone, or even in UTC

First and foremost, we will be looking for correctness. We will also pay attention to code clarity, unit tests, as well as your git commit history.


## Download and Installation

```
git clone https://github.com/dangerstephen/whistle_code_challenge.git
cd whistle_code_challenge
bundle install
rake db:test:prepare
rake db:migrate
rake db:seed
```

## Getting Started 
This app was created using [Ruby on Rails][]. 
To start up the application 

```
rails server
```
This will start the app, which can be accessed at localhost:3000 from your choice of browser.

## Testing 
To run the example tests 
```
rspec
```

## What it looks like

The UI looks likes this:

<img width="1440" alt="screen shot 2017-03-28 at 4 19 13 pm" src="https://cloud.githubusercontent.com/assets/22550925/24431705/757c2808-13d2-11e7-95a2-5f03516610e7.png">

An example of one of the API routes 

<img width="1388" alt="screen shot 2017-03-28 at 4 19 39 pm" src="https://cloud.githubusercontent.com/assets/22550925/24431714/8625c894-13d2-11e7-93de-8be10fd51e92.png">



[Whistle]: https://www.whistle.com/
[Ruby on Rails]: http://rubyonrails.org/

