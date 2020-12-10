require "application_system_test_case"

class TitansTest < ApplicationSystemTestCase
  setup do
    @titan = titans(:one)
  end

  test "visiting the index" do
    visit titans_url
    assert_selector "h1", text: "Titans"
  end

  test "creating a Titan" do
    visit titans_url
    click_on "New Titan"

    fill_in "Address", with: @titan.address
    fill_in "Birthday", with: @titan.birthday
    fill_in "Email", with: @titan.email
    fill_in "Hire date", with: @titan.hire_date
    fill_in "Name", with: @titan.name
    fill_in "Office", with: @titan.office_id
    fill_in "Phone", with: @titan.phone
    click_on "Create Titan"

    assert_text "Titan was successfully created"
    click_on "Back"
  end

  test "updating a Titan" do
    visit titans_url
    click_on "Edit", match: :first

    fill_in "Address", with: @titan.address
    fill_in "Birthday", with: @titan.birthday
    fill_in "Email", with: @titan.email
    fill_in "Hire date", with: @titan.hire_date
    fill_in "Name", with: @titan.name
    fill_in "Office", with: @titan.office_id
    fill_in "Phone", with: @titan.phone
    click_on "Update Titan"

    assert_text "Titan was successfully updated"
    click_on "Back"
  end

  test "destroying a Titan" do
    visit titans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Titan was successfully destroyed"
  end
end
