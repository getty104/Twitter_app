require 'test_helper'

class GroupLibrariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_library = group_libraries(:one)
  end

  test "should get index" do
    get group_libraries_url
    assert_response :success
  end

  test "should get new" do
    get new_group_library_url
    assert_response :success
  end

  test "should create group_library" do
    assert_difference('GroupLibrary.count') do
      post group_libraries_url, params: { group_library: { name: @group_library.name } }
    end

    assert_redirected_to group_library_url(GroupLibrary.last)
  end

  test "should show group_library" do
    get group_library_url(@group_library)
    assert_response :success
  end

  test "should get edit" do
    get edit_group_library_url(@group_library)
    assert_response :success
  end

  test "should update group_library" do
    patch group_library_url(@group_library), params: { group_library: { name: @group_library.name } }
    assert_redirected_to group_library_url(@group_library)
  end

  test "should destroy group_library" do
    assert_difference('GroupLibrary.count', -1) do
      delete group_library_url(@group_library)
    end

    assert_redirected_to group_libraries_url
  end
end
