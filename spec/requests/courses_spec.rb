require 'rails_helper'

RSpec.describe "Courses", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/courses/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/courses/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/courses/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/courses/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /search" do
    it "returns http success" do
      get "/courses/search"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /" do     # This is meant to test if the courses index has been added to the root or not
    it "returns http success" do
      get "/"
      expect(response).to have_http_status(:success)
    end
  end

end
