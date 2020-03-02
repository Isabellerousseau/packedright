require 'test_helper'

class ParcelsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get parcels_index_url
    assert_response :success
  end

  test "should get new" do
    get parcels_new_url
    assert_response :success
  end

  test "should get create" do
    get parcels_create_url
    assert_response :success
  end

  test "should get show" do
    get parcels_show_url
    assert_response :success
  end

  test "should get edit" do
    get parcels_edit_url
    assert_response :success
  end

  test "should get update" do
    get parcels_update_url
    assert_response :success
  end

  test "should get destroy" do
    get parcels_destroy_url
    assert_response :success
  end

end
