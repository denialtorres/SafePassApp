require "rails_helper"

RSpec.describe "Users V2 endpoint", type: :request do
  it "shows the user info" do
    user = create(:user)

    get "/api/v2/users/#{user.id}"

    expect(response).to have_http_status(:ok)
  end
end
