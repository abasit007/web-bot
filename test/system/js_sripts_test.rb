require "application_system_test_case"

class JsSriptsTest < ApplicationSystemTestCase
  setup do
    @js_sript = js_sripts(:one)
  end

  test "visiting the index" do
    visit js_sripts_url
    assert_selector "h1", text: "Js Sripts"
  end

  test "creating a Js sript" do
    visit js_sripts_url
    click_on "New Js Sript"

    fill_in "Chatscript", with: @js_sript.chatscript
    click_on "Create Js sript"

    assert_text "Js sript was successfully created"
    click_on "Back"
  end

  test "updating a Js sript" do
    visit js_sripts_url
    click_on "Edit", match: :first

    fill_in "Chatscript", with: @js_sript.chatscript
    click_on "Update Js sript"

    assert_text "Js sript was successfully updated"
    click_on "Back"
  end

  test "destroying a Js sript" do
    visit js_sripts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Js sript was successfully destroyed"
  end
end
