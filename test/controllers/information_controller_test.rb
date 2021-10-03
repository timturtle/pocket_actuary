require "test_helper"

class InformationControllerTest < ActionDispatch::IntegrationTest
  setup do
    @information = information(:one)
  end

  test "should get index" do
    get information_index_url
    assert_response :success
  end

  test "should get new" do
    get new_information_url
    assert_response :success
  end

  test "should create information" do
    assert_difference('Information.count') do
      post information_index_url, params: { information: { activity_levels: @information.activity_levels, age: @information.age, assets: @information.assets, city: @information.city, country: @information.country, dependents: @information.dependents, expenses: @information.expenses, gender: @information.gender, health: @information.health, income: @information.income, liabilities: @information.liabilities, state: @information.state, street: @information.street, zipcode: @information.zipcode } }
    end

    assert_redirected_to information_url(Information.last)
  end

  test "should show information" do
    get information_url(@information)
    assert_response :success
  end

  test "should get edit" do
    get edit_information_url(@information)
    assert_response :success
  end

  test "should update information" do
    patch information_url(@information), params: { information: { activity_levels: @information.activity_levels, age: @information.age, assets: @information.assets, city: @information.city, country: @information.country, dependents: @information.dependents, expenses: @information.expenses, gender: @information.gender, health: @information.health, income: @information.income, liabilities: @information.liabilities, state: @information.state, street: @information.street, zipcode: @information.zipcode } }
    assert_redirected_to information_url(@information)
  end

  test "should destroy information" do
    assert_difference('Information.count', -1) do
      delete information_url(@information)
    end

    assert_redirected_to information_index_url
  end
end
