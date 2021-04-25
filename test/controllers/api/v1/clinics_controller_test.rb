require 'test_helper'

class Api::V1::ClinicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clinic = clinics(:one)
  end

  test "should get index" do
    get api_v1_clinics_url, as: :json
    assert_response :success
  end

  test "should create clinic" do
    assert_difference('Clinic.count') do
      post api_v1_clinics_url, params: { clinic: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show clinic" do
    get api_v1_clinic_url(@clinic), as: :json
    assert_response :success
  end

  test "should update clinic" do
    patch api_v1_clinic_url(@clinic), params: { clinic: {  } }, as: :json
    assert_response 200
  end

  test "should destroy clinic" do
    assert_difference('Clinic.count', -1) do
      delete api_v1_clinic_url(@clinic), as: :json
    end

    assert_response 204
  end
end
