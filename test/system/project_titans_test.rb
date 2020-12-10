require "application_system_test_case"

class ProjectTitansTest < ApplicationSystemTestCase
  setup do
    @project_titan = project_titans(:one)
  end

  test "visiting the index" do
    visit project_titans_url
    assert_selector "h1", text: "Project Titans"
  end

  test "creating a Project titan" do
    visit project_titans_url
    click_on "New Project Titan"

    fill_in "Comments", with: @project_titan.comments
    fill_in "Name", with: @project_titan.name
    fill_in "Project", with: @project_titan.project_id
    fill_in "Titan", with: @project_titan.titan_id
    click_on "Create Project titan"

    assert_text "Project titan was successfully created"
    click_on "Back"
  end

  test "updating a Project titan" do
    visit project_titans_url
    click_on "Edit", match: :first

    fill_in "Comments", with: @project_titan.comments
    fill_in "Name", with: @project_titan.name
    fill_in "Project", with: @project_titan.project_id
    fill_in "Titan", with: @project_titan.titan_id
    click_on "Update Project titan"

    assert_text "Project titan was successfully updated"
    click_on "Back"
  end

  test "destroying a Project titan" do
    visit project_titans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project titan was successfully destroyed"
  end
end
