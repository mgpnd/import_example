## Installation

```
bundle install
```

## Run example

There're 4 specs that use different way of calling operation, located in `spec/controllers/example_controller_spec.rb`.
Three of these specs pass while one is faling, because operation didn't get stubbed.

Run all four specs with
```
bundle exec rspec spec
```
