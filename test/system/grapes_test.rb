require "application_system_test_case"

class GrapesTest < ApplicationSystemTestCase
  setup do
    @grape = grapes(:one)
  end

  test "visiting the index" do
    visit grapes_url
    assert_selector "h1", text: "Grapes"
  end

  test "creating a Grape" do
    visit grapes_url
    click_on "New Grape"

    click_on "Create Grape"

    assert_text "Grape was successfully created"
    click_on "Back"
  end

  test "updating a Grape" do
    visit grapes_url
    click_on "Edit", match: :first

    click_on "Update Grape"

    assert_text "Grape was successfully updated"
    click_on "Back"
  end

  test "destroying a Grape" do
    visit grapes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grape was successfully destroyed"
  end
end
