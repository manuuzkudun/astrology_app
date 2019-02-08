require 'test_helper'

class PlanetsDignitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get planets_dignities_show_url
    assert_response :success
  end

end
