require "application_system_test_case"

class InformationTest < ApplicationSystemTestCase
  setup do
    @information = information(:one)
  end

  test "visiting the index" do
    visit information_url
    assert_selector "h1", text: "Information"
  end

  test "creating a Information" do
    visit information_url
    click_on "New Information"

    fill_in "Activity levels", with: @information.activity_levels
    fill_in "Age", with: @information.age
    fill_in "Assets", with: @information.assets
    fill_in "City", with: @information.city
    fill_in "Country", with: @information.country
    fill_in "Dependents", with: @information.dependents
    fill_in "Expenses", with: @information.expenses
    fill_in "Gender", with: @information.gender
    fill_in "Health", with: @information.health
    fill_in "Income", with: @information.income
    fill_in "Liabilities", with: @information.liabilities
    fill_in "State", with: @information.state
    fill_in "Street", with: @information.street
    fill_in "Zipcode", with: @information.zipcode
    click_on "Create Information"

    assert_text "Information was successfully created"
    click_on "Back"
  end

  test "updating a Information" do
    visit information_url
    click_on "Edit", match: :first

    fill_in "Activity levels", with: @information.activity_levels
    fill_in "Age", with: @information.age
    fill_in "Assets", with: @information.assets
    fill_in "City", with: @information.city
    fill_in "Country", with: @information.country
    fill_in "Dependents", with: @information.dependents
    fill_in "Expenses", with: @information.expenses
    fill_in "Gender", with: @information.gender
    fill_in "Health", with: @information.health
    fill_in "Income", with: @information.income
    fill_in "Liabilities", with: @information.liabilities
    fill_in "State", with: @information.state
    fill_in "Street", with: @information.street
    fill_in "Zipcode", with: @information.zipcode
    click_on "Update Information"

    assert_text "Information was successfully updated"
    click_on "Back"
  end

  test "destroying a Information" do
    visit information_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Information was successfully destroyed"
  end
end
