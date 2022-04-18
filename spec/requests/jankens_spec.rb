require 'rails_helper'

RSpec.describe "Jankens", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/jankens/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/jankens/index"
      expect(response).to have_http_status(:success)
    end
  end

end
