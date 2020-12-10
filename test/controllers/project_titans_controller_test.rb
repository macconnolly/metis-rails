require 'test_helper'

class ProjectTitansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_titan = project_titans(:one)
  end

  test "should get index" do
    get project_titans_url
    assert_response :success
  end

  test "should get new" do
    get new_project_titan_url
    assert_response :success
  end

  test "should create project_titan" do
    assert_difference('ProjectTitan.count') do
      post project_titans_url, params: { project_titan: { comments: @project_titan.comments, name: @project_titan.name, project_id: @project_titan.project_id, titan_id: @project_titan.titan_id } }
    end

    assert_redirected_to project_titan_url(ProjectTitan.last)
  end

  test "should show project_titan" do
    get project_titan_url(@project_titan)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_titan_url(@project_titan)
    assert_response :success
  end

  test "should update project_titan" do
    patch project_titan_url(@project_titan), params: { project_titan: { comments: @project_titan.comments, name: @project_titan.name, project_id: @project_titan.project_id, titan_id: @project_titan.titan_id } }
    assert_redirected_to project_titan_url(@project_titan)
  end

  test "should destroy project_titan" do
    assert_difference('ProjectTitan.count', -1) do
      delete project_titan_url(@project_titan)
    end

    assert_redirected_to project_titans_url
  end
end
