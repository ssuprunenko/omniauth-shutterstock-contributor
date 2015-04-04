require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class ShutterstockContributor < OmniAuth::Strategies::OAuth2
      # Give your strategy a name.
      option :name, 'shutterstock_contributor'

      # This is where you pass the options you would pass when
      # initializing your consumer from the OAuth gem.
      option :client_options, {
        site: 'https://api.shutterstock.com/v2',
        authorize_url: 'https://contributor-accounts.shutterstock.com/oauth/authorize',
        token_url: 'https://contributor-accounts.shutterstock.com/oauth/access_token'
      }

      option :scope, 'user.view user.email user.edit collections.view collections.edit licenses.view licenses.create earnings.view purchases.view'

      option :fields, ['id', 'username', 'full_name', 'email', 'customer_id']

      # These are called after authentication has succeeded. If
      # possible, you should try to set the UID without making
      # additional calls (if the user id is returned with the token
      # or as a URI parameter). This may not be possible with all
      # providers.
      uid { raw_info[:id].to_s }

      info do
        {
          name: raw_info[:full_name],
          email: raw_info[:email],
          nickname: raw_info[:username],
          customer_id: raw_info[:customer_id]
        }
      end

      extra do
        { raw_info: raw_info }
      end

      def raw_info
        @raw_info ||= deep_symbolize(access_token.get('user').parsed)
      end
    end
  end
end
