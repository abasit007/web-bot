require "test_helper"

class JsSriptsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @js_sript = js_sripts(:one)
  end

  test "should get index" do
    get js_sripts_url
    assert_response :success
  end

  test "should get new" do
    get new_js_sript_url
    assert_response :success
  end

  test "should create js_sript" do
    assert_difference('JsSript.count') do
      post js_sripts_url, params: { js_sript: { chatscript: @js_sript.chatscript } }
    end

    assert_redirected_to js_sript_url(JsSript.last)
  end

  test "should show js_sript" do
    get js_sript_url(@js_sript)
    assert_response :success
  end

  test "should get edit" do
    get edit_js_sript_url(@js_sript)
    assert_response :success
  end

  test "should update js_sript" do
    patch js_sript_url(@js_sript), params: { js_sript: { chatscript: @js_sript.chatscript } }
    assert_redirected_to js_sript_url(@js_sript)
  end

  test "should destroy js_sript" do
    assert_difference('JsSript.count', -1) do
      delete js_sript_url(@js_sript)
    end

    assert_redirected_to js_sripts_url
  end
end
