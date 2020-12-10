require "application_system_test_case"

class SowsTest < ApplicationSystemTestCase
  setup do
    @sow = sows(:one)
  end

  test "visiting the index" do
    visit sows_url
    assert_selector "h1", text: "Sows"
  end

  test "creating a Sow" do
    visit sows_url
    click_on "New Sow"

    fill_in "A1 est", with: @sow.A1_est
    fill_in "A1 prop", with: @sow.A1_prop
    fill_in "A2 est", with: @sow.A2_est
    fill_in "A2 prop", with: @sow.A2_prop
    fill_in "Exnet est", with: @sow.EXNET_est
    fill_in "Exnet prop", with: @sow.EXNET_prop
    fill_in "Int est", with: @sow.INT_est
    fill_in "Int prop", with: @sow.INT_prop
    fill_in "Md est", with: @sow.MD_est
    fill_in "Md prop", with: @sow.MD_prop
    fill_in "Mgr est", with: @sow.MGR_est
    fill_in "Mgr prop", with: @sow.MGR_prop
    fill_in "Ops est", with: @sow.OPS_est
    fill_in "Ops prop", with: @sow.OPS_prop
    fill_in "Pres est", with: @sow.PRES_est
    fill_in "Pres prop", with: @sow.PRES_prop
    fill_in "Sa est", with: @sow.SA_est
    fill_in "Sa prop", with: @sow.SA_prop
    fill_in "Vp est", with: @sow.VP_est
    fill_in "Vp prop", with: @sow.VP_prop
    fill_in "Project", with: @sow.project_id
    click_on "Create Sow"

    assert_text "Sow was successfully created"
    click_on "Back"
  end

  test "updating a Sow" do
    visit sows_url
    click_on "Edit", match: :first

    fill_in "A1 est", with: @sow.A1_est
    fill_in "A1 prop", with: @sow.A1_prop
    fill_in "A2 est", with: @sow.A2_est
    fill_in "A2 prop", with: @sow.A2_prop
    fill_in "Exnet est", with: @sow.EXNET_est
    fill_in "Exnet prop", with: @sow.EXNET_prop
    fill_in "Int est", with: @sow.INT_est
    fill_in "Int prop", with: @sow.INT_prop
    fill_in "Md est", with: @sow.MD_est
    fill_in "Md prop", with: @sow.MD_prop
    fill_in "Mgr est", with: @sow.MGR_est
    fill_in "Mgr prop", with: @sow.MGR_prop
    fill_in "Ops est", with: @sow.OPS_est
    fill_in "Ops prop", with: @sow.OPS_prop
    fill_in "Pres est", with: @sow.PRES_est
    fill_in "Pres prop", with: @sow.PRES_prop
    fill_in "Sa est", with: @sow.SA_est
    fill_in "Sa prop", with: @sow.SA_prop
    fill_in "Vp est", with: @sow.VP_est
    fill_in "Vp prop", with: @sow.VP_prop
    fill_in "Project", with: @sow.project_id
    click_on "Update Sow"

    assert_text "Sow was successfully updated"
    click_on "Back"
  end

  test "destroying a Sow" do
    visit sows_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sow was successfully destroyed"
  end
end
