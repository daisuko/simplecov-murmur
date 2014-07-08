# simplecov-murmur

Console formatter for SimpleCov

## Usage

`Gemfile`:

```ruby
  gem 'simplecov-murmur', require: false, group: 'test'
```

`test/test_helper.rb` or `test/spec_helper.rb`:

```ruby
  require 'simplecov-murmur'

  SimpleCov.formatter = SimpleCov::Formatter::MurMurFormatter
  # or
  SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
    SimpleCov::Formatter::MurMurFormatter,
    SimpleCov::Formatter::HTMLFormatter
  ]
```

## Example
```
  All Files:
    [ 23.53%] lib/tempfile.rb
    [ 30.00%] concern.rb
    [ 36.36%] lib/schedule.rb
    [ 47.88%] app.rb
    [ 58.82%] user.rb
    [ 80.00%] access_point.rb
    [ 83.33%] lib/report.rb
    [ 86.67%] helpers.rb
    [100.00%] config/boot.rb
    [100.00%] lib/date.rb
```

## Mode

```ruby
  SimpleCov::Formatter::MurMurFormatter.mode = :all
```

| mode    | target                  |
|:--------|:------------------------|
| :all    | all files               |
| :short  | without 100% (default)  |

## License
simplecov-murmur is released under the [MIT License](LICENSE.txt).

