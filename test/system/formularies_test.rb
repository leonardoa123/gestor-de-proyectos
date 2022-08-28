require "application_system_test_case"

class FormulariesTest < ApplicationSystemTestCase
  setup do
    @formulary = formularies(:one)
  end

  test "visiting the index" do
    visit formularies_url
    assert_selector "h1", text: "Formularies"
  end

  test "should create formulary" do
    visit formularies_url
    click_on "New formulary"

    fill_in "Condition", with: @formulary.condition
    fill_in "Date begin", with: @formulary.date_begin
    fill_in "Date end", with: @formulary.date_end
    fill_in "Description", with: @formulary.description
    fill_in "Name", with: @formulary.name
    click_on "Create Formulary"

    assert_text "Formulary was successfully created"
    click_on "Back"
  end

  test "should update Formulary" do
    visit formulary_url(@formulary)
    click_on "Edit this formulary", match: :first

    fill_in "Condition", with: @formulary.condition
    fill_in "Date begin", with: @formulary.date_begin
    fill_in "Date end", with: @formulary.date_end
    fill_in "Description", with: @formulary.description
    fill_in "Name", with: @formulary.name
    click_on "Update Formulary"

    assert_text "Formulary was successfully updated"
    click_on "Back"
  end

  test "should destroy Formulary" do
    visit formulary_url(@formulary)
    click_on "Destroy this formulary", match: :first

    assert_text "Formulary was successfully destroyed"
  end
end
