require_relative "../../../story_helper.rb"

describe "Api::v1::UsersStory" do
  before do
    get "/api/v1/users"
  end

  it "responds successfully" do
    last_response.status.must_equal 200
  end
end
