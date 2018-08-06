# mini BillFront

### Requirements
 - Ruby 2.x

### Dependencies
- gem 'rspec'
- gem 'rake'

## Setup

```sh
gem install bundler
bundle install
```

### Execution

provide the arguments as credit_line.json and invoices.json , order matters. Example as follows:

``` 
./cli.rb data/credit_line.json data/invoices.json 
```

or, simple run as ruby file 

``` 
ruby cli.rb data/credit_line.json data/invoices.json 
```


## Running tests

```
rspec spec
```

## Tested using
 - RSpec 3.7

## Author
 - Stella Miranda - August 5th, 2018

