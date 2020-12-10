require 'test_helper'

class TitansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @titan = titans(:one)
  end

  test "should get index" do
    get titans_url
    assert_response :success
  end

  test "should get new" do
    get new_titan_url
    assert_response :success
  end

  test "should create titan" do
    assert_difference('Titan.count') do
      post titans_url, params: { titan: { address: @titan.address, birthday: @titan.birthday, email: @titan.email, hire_date: @titan.hire_date, name: @titan.name, office_id: @titan.office_id, phone: @titan.phone } }
    end

    assert_redirected_to titan_url(Titan.last)
  end

  test "should show titan" do
    get titan_url(@titan)
    assert_response :success
  end

  test "should get edit" do
    get edit_titan_url(@titan)
    assert_response :success
  end

  test "should update titan" do
    patch titan_url(@titan), params: { titan: { address: @titan.address, birthday: @titan.birthday, email: @titan.email, hire_date: @titan.hire_date, name: @titan.name, office_id: @titan.office_id, phone: @titan.phone } }
    assert_redirected_to titan_url(@titan)
  end

  test "should destroy titan" do
    assert_difference('Titan.count', -1) do
      delete titan_url(@titan)
    end

    assert_redirected_to titans_url
  end
end
