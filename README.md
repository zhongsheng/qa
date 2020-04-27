# Qa
Question && Answer && Project Management

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'qa'
```

And then execute:
```bash
$ bundle
```

``` ruby
Rails.application.routes.draw do
  mount Usefultag::Engine => "/qa"
end
```
## Config

``` ruby
# APP Home url
Qa.main_app_path = '/test/hi'
# Inheritate from
# default is ::ApplicationController
Qa.main_controller = '::AuthBaseController'

# When task finished will trigger this event
ActiveSupport::Notifications.subscribe "qa.task.done" do |*args|
  data = args.extract_options!
  data[:url]  # => http://xxxx/task
  data[:task]  # => Qa::Task record object
  data[:task].user  # => User record object
end
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
