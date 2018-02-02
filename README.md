# Missing kitties!

A ruby program which connects to an api, receives a list of directions and has to then find a location.

From: http://which-technical-exercise.herokuapp.com/

##### User stories
```
As an investigator
So I can find the kitties
I need to know the directions the witch went

As an investigator
So I can get the kitties
I need to be able to locate the witches lair
```
#### Getting started

Clone the repo:  
```
git clone git@github.com:david-div/missing_kitties.git
bundle install
irb -r ./lib/controller.rb
```

Tests:  
```
rspec
```

Usage:
```ruby
irb(main):001:0> controller = Controller.new
=> #<Controller:0x00007f93f103eda0 @data=#<GetData:0x00007f93f103c208>, @directions=Directions, @location=Location>
irb(main):002:0> controller.confirm_location
```
