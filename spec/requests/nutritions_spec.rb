require 'rails_helper'

RSpec.describe "Nutritions", type: :request do
  describe "GET /nutritions" do
    it "works! (now write some real specs)" do
      get nutritions_index_path
      expect(response).to have_http_status(200)
    end
  end
end
