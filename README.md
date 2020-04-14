## Installation

```
bundle install
```

## Run example

There're 4 specs that use different way of calling operation, located in `spec/controllers/key_based_import_example_controller_spec.rb` and
there're 4 specs that use different way of calling operation, located in `spec/controllers/base_import_example_controller_spec.rb`

Three of these specs of each controller pass while one is faling, because operation didn't get stubbed.

Run all specs with
```
bundle exec rspec spec
```
