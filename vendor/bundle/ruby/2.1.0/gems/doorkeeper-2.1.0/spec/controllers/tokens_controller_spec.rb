require 'spec_helper_integration'

describe Doorkeeper::TokensController do
  describe 'when authorization has succeeded' do
    let :token do
      double(:token, authorize: true)
    end

    before do
      allow(controller).to receive(:token) { token }
    end

    it 'returns the authorization' do
      skip 'verify need of these specs'
      expect(token).to receive(:authorization)
      post :create
    end
  end

  describe 'when authorization has failed' do
    it 'returns the error response' do
      token = double(:token, authorize: false)
      allow(controller).to receive(:token) { token }

      post :create

      expect(response.status).to eq 401
      expect(response.headers['WWW-Authenticate']).to match(/Bearer/)
    end
  end

  describe 'when revoke authorization has failed' do
    # http://tools.ietf.org/html/rfc7009#section-2.2
    it 'returns no error response' do
      token = double(:token, authorize: false)
      allow(controller).to receive(:token) { token }

      post :revoke

      expect(response.status).to eq 200
    end
  end
end
