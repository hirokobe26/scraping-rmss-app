require 'test_helper'

class ApisControllerTest < ActionDispatch::IntegrationTest
  test "should get return_scraping_data" do
    get apis_return_scraping_data_url
    assert_response :success
  end

end
