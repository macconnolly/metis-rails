require "application_system_test_case"

class TitanRolesTest < ApplicationSystemTestCase
  setup do
    @titan_role = titan_roles(:one)
  end

  test "visiting the index" do
    visit titan_roles_url
    assert_selector "h1", text: "Titan Roles"
  end

  test "creating a Titan role" do
    visit titan_roles_url
    click_on "New Titan Role"

    fill_in "Ended at", with: @titan_role.ended_at
    fill_in "Role", with: @titan_role.role_id
    fill_in "Started at", with: @titan_role.started_at
    fill_in "Titan", with: @titan_role.titan_id
    click_on "Create Titan role"

    assert_text "Titan role was successfully created"
    click_on "Back"
  end

  test "updating a Titan role" do
    visit titan_roles_url
    click_on "Edit", match: :first

    fill_in "Ended at", with: @titan_role.ended_at
    fill_in "Role", with: @titan_role.role_id
    fill_in "Started at", with: @titan_role.started_at
    fill_in "Titan", with: @titan_role.titan_id
    click_on "Update Titan role"

    assert_text "Titan role was successfully updated"
    click_on "Back"
  end

  test "destroying a Titan role" do
    visit titan_roles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Titan role was successfully destroyed"
  end
end
