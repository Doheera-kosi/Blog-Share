require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    before(:example) { get '/users/1/posts' }
    it 'renders http status' do
      expect(response).to have_http_status :ok
    end

    it "renders 'index' template" do
      expect(response).to render_template :index
    end

    it 'renders correct placeholder' do
      expect(response.body).to include '<h1>Posts#index</h1>'
    end
  end

  describe 'GET /show' do
    before(:example) { get '/users/1/posts/1' }
    it 'renders http status' do
      expect(response).to have_http_status :ok
    end

    it "renders 'show' template" do
      expect(response).to render_template :show
    end

    it 'renders correct placeholder' do
      expect(response.body).to include '<h1>Single post</h1>'
    end
  end
end
