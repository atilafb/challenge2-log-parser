# challenge2-log-parser

Challenge to learn git, file manipulation with ruby, tests with ruby.

## RVM and Ruby installation

To install RVM and Ruby you should take these steps

### Install GPG keys

gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

### Download and run the RVM installation script

curl -sSL https://get.rvm.io/ | bash -s stable

### Install Ruby

* rvm install ruby-3.1.0
* source ~/.rmv/scripts/rvm
* rvm use 3.1.0 --default

To check Ruby version run the command: **ruby -v**<br/>

To check Ruby installation: **which ruby**<br/>

### Install Bundler to manage gems

gem install bundler

### Install Rspec gem

* gem install rspec
* gem install rspec-core

### Steps to configure Test

* Start using the command **bundle init** to create a Gemfile
* In the Gemfile type the command **gem 'rspec', '~> 3.0'**, to use the latest rspec gem. Save the file.
* After, run the commmand **bundle binstubs rspec-core**, this will create rspec executable.
* Run the command **bin/rspec --init**, to generate the rspec files.

### Run the application

ruby main.rb

### Run the Rspec tests

./rspec/lib/log_parser_spec.rb

