## Installation

```
bundle install
```

## Run example

There're 2 files with specs that use different ways of calling operation:
`spec/controllers/key_based_import_example_controller_spec.rb` and
`spec/controllers/base_import_example_controller_spec.rb`.

Each file has three specs passing and one spec failng, because stub is not applied.

Run all specs with
```
bundle exec rspec spec
```
