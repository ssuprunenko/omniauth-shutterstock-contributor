# Omniauth::Shutterstock::Contributor

Shutterstock Contributor OAuth2 Strategy for OmniAuth.

Supports the OAuth 2.0 server-side and client-side flows. Read the Shutterstock API docs for more details: https://developers.shutterstock.com/guides/authentication

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-shutterstock-contributor'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-shutterstock-contributor

## Usage

Register your application with Shutterstock to receive Client ID and Client Secret: https://developers.shutterstock.com/applicationsdeveloper

This is an example that you might put into a Rails initializer at `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :shutterstock_contributor, ENV['SHUTTERSTOCK_CLIENT_ID'], ENV['SHUTTERSTOCK_CLIENT_SECRET']
end
```

OR you might put following code to `config/initializers/devise.rb`:

```ruby
config.omniauth :shutterstock_contributor, ENV['SHUTTERSTOCK_CLIENT_ID'], ENV['SHUTTERSTOCK_CLIENT_SECRET']
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
