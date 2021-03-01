require 'test_helper'

class Api::V1::DocauthsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_docauth = api_v1_docauths(:one)
  end

  test "should get index" do
    get api_v1_docauths_url, as: :json
    assert_response :success
  end

  test "should create api_v1_docauth" do
    assert_difference('Api::V1::Docauth.count') do
      post api_v1_docauths_url, params: { api_v1_docauth: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show api_v1_docauth" do
    get api_v1_docauth_url(@api_v1_docauth), as: :json
    assert_response :success
  end

  test "should update api_v1_docauth" do
    patch api_v1_docauth_url(@api_v1_docauth), params: { api_v1_docauth: {  } }, as: :json
    assert_response 200
  end

  test "should destroy api_v1_docauth" do
    assert_difference('Api::V1::Docauth.count', -1) do
      delete api_v1_docauth_url(@api_v1_docauth), as: :json
    end

    assert_response 204
  end
end
