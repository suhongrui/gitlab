require 'spec_helper_integration'

feature 'Implicit Grant Flow' do
  background do
    config_is_set(:authenticate_resource_owner) { User.first || redirect_to('/sign_in') }
    config_is_set(:grant_flows, ["implicit"])
    client_exists
    create_resource_owner
    sign_in
  end

  scenario 'resource owner authorizes the client' do
    visit authorization_endpoint_url(client: @client, response_type: 'token')
    click_on 'Authorize'

    access_token_should_exist_for @client, @resource_owner

    i_should_be_on_client_callback @client
  end

  context 'token reuse' do
    scenario 'should return a new token each request' do
      Doorkeeper.configuration.stub(:reuse_access_token).and_return(false)

      token = client_is_authorized(@client, @resource_owner)

      post "/oauth/authorize",
           client_id: @client.uid,
           state: '',
           redirect_uri: @client.redirect_uri,
           response_type: 'token',
           commit: 'Authorize'

      expect(response.location).not_to include(token.token)
    end

    scenario 'should return the same token if it is still accessible' do
      Doorkeeper.configuration.stub(:reuse_access_token).and_return(true)

      token = client_is_authorized(@client, @resource_owner)

      post "/oauth/authorize",
           client_id: @client.uid,
           state: '',
           redirect_uri: @client.redirect_uri,
           response_type: 'token',
           commit: 'Authorize'

      expect(response.location).to include(token.token)
    end
  end
end
