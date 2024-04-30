require "test_helper"

class Authentication::UsersControllerTest < ActionDispatch::IntegrationTest

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    stub_request(:get, "http://ip-api.com/json/127.0.0.1").
      to_return(status: 200, body: {
        status: "success",
        countryCode: "CA"
      }.to_json, headers: {})
    assert_difference("User.count") do
      post users_url, params: { user: { email: 'user1@gmail.com', username: 'user1', password: 'secure' } }
    end

    assert_redirected_to products_url
  end
end
