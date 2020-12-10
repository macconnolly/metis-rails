require 'test_helper'

class TitanRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @titan_role = titan_roles(:one)
  end

  test "should get index" do
    get titan_roles_url
    assert_response :success
  end

  test "should get new" do
    get new_titan_role_url
    assert_response :success
  end

  test "should create titan_role" do
    assert_difference('TitanRole.count') do
      post titan_roles_url, params: { titan_role: { ended_at: @titan_role.ended_at, role_id: @titan_role.role_id, started_at: @titan_role.started_at, titan_id: @titan_role.titan_id } }
    end

    assert_redirected_to titan_role_url(TitanRole.last)
  end

  test "should show titan_role" do
    get titan_role_url(@titan_role)
    assert_response :success
  end

  test "should get edit" do
    get edit_titan_role_url(@titan_role)
    assert_response :success
  end

  test "should update titan_role" do
    patch titan_role_url(@titan_role), params: { titan_role: { ended_at: @titan_role.ended_at, role_id: @titan_role.role_id, started_at: @titan_role.started_at, titan_id: @titan_role.titan_id } }
    assert_redirected_to titan_role_url(@titan_role)
  end

  test "should destroy titan_role" do
    assert_difference('TitanRole.count', -1) do
      delete titan_role_url(@titan_role)
    end

    assert_redirected_to titan_roles_url
  end
end
