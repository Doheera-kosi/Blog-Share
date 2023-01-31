require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    before(:example) { get users_path }
    it 'renders http status' do
      expect(response).to have_http_status(200)
    end

    it "renders 'index' template" do
      expect(response).to render_template(:index)
    end

    it 'should return correct placeholder' do
      expect(response.body).to include '<h1>Users#index</h1>'
    end
  end

  describe 'GET /show' do
    before(:example) { get '/users/1' }
    it 'renders http status' do
      expect(response).to have_http_status 200
    end

    it "renders 'show' template" do
      expect(response).to render_template :show
    end

    it 'should return correct placeholder' do
      expect(response.body).to include '<h1>Single User</h1>'
    end
  end
end