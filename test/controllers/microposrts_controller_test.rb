require 'test_helper'

class MicroposrtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @microposrt = microposrts(:one)
  end

  test "should get index" do
    get microposrts_url
    assert_response :success
  end

  test "should get new" do
    get new_microposrt_url
    assert_response :success
  end

  test "should create microposrt" do
    assert_difference('Microposrt.count') do
      post microposrts_url, params: { microposrt: { content: @microposrt.content, user_id: @microposrt.user_id } }
    end

    assert_redirected_to microposrt_url(Microposrt.last)
  end

  test "should show microposrt" do
    get microposrt_url(@microposrt)
    assert_response :success
  end

  test "should get edit" do
    get edit_microposrt_url(@microposrt)
    assert_response :success
  end

  test "should update microposrt" do
    patch microposrt_url(@microposrt), params: { microposrt: { content: @microposrt.content, user_id: @microposrt.user_id } }
    assert_redirected_to microposrt_url(@microposrt)
  end

  test "should destroy microposrt" do
    assert_difference('Microposrt.count', -1) do
      delete microposrt_url(@microposrt)
    end

    assert_redirected_to microposrts_url
  end
end
