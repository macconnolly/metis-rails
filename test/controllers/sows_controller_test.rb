require 'test_helper'

class SowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sow = sows(:one)
  end

  test "should get index" do
    get sows_url
    assert_response :success
  end

  test "should get new" do
    get new_sow_url
    assert_response :success
  end

  test "should create sow" do
    assert_difference('Sow.count') do
      post sows_url, params: { sow: { A1_est: @sow.A1_est, A1_prop: @sow.A1_prop, A2_est: @sow.A2_est, A2_prop: @sow.A2_prop, EXNET_est: @sow.EXNET_est, EXNET_prop: @sow.EXNET_prop, INT_est: @sow.INT_est, INT_prop: @sow.INT_prop, MD_est: @sow.MD_est, MD_prop: @sow.MD_prop, MGR_est: @sow.MGR_est, MGR_prop: @sow.MGR_prop, OPS_est: @sow.OPS_est, OPS_prop: @sow.OPS_prop, PRES_est: @sow.PRES_est, PRES_prop: @sow.PRES_prop, SA_est: @sow.SA_est, SA_prop: @sow.SA_prop, VP_est: @sow.VP_est, VP_prop: @sow.VP_prop, project_id: @sow.project_id } }
    end

    assert_redirected_to sow_url(Sow.last)
  end

  test "should show sow" do
    get sow_url(@sow)
    assert_response :success
  end

  test "should get edit" do
    get edit_sow_url(@sow)
    assert_response :success
  end

  test "should update sow" do
    patch sow_url(@sow), params: { sow: { A1_est: @sow.A1_est, A1_prop: @sow.A1_prop, A2_est: @sow.A2_est, A2_prop: @sow.A2_prop, EXNET_est: @sow.EXNET_est, EXNET_prop: @sow.EXNET_prop, INT_est: @sow.INT_est, INT_prop: @sow.INT_prop, MD_est: @sow.MD_est, MD_prop: @sow.MD_prop, MGR_est: @sow.MGR_est, MGR_prop: @sow.MGR_prop, OPS_est: @sow.OPS_est, OPS_prop: @sow.OPS_prop, PRES_est: @sow.PRES_est, PRES_prop: @sow.PRES_prop, SA_est: @sow.SA_est, SA_prop: @sow.SA_prop, VP_est: @sow.VP_est, VP_prop: @sow.VP_prop, project_id: @sow.project_id } }
    assert_redirected_to sow_url(@sow)
  end

  test "should destroy sow" do
    assert_difference('Sow.count', -1) do
      delete sow_url(@sow)
    end

    assert_redirected_to sows_url
  end
end
