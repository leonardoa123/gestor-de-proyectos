require "test_helper"

class FormulariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @formulary = formularies(:one)
  end

  test "should get index" do
    get formularies_url
    assert_response :success
  end

  test "should get new" do
    get new_formulary_url
    assert_response :success
  end

  test "should create formulary" do
    assert_difference("Formulary.count") do
      post formularies_url, params: { formulary: { condition: @formulary.condition, date_begin: @formulary.date_begin, date_end: @formulary.date_end, description: @formulary.description, name: @formulary.name } }
    end

    assert_redirected_to formulary_url(Formulary.last)
  end

  test "should show formulary" do
    get formulary_url(@formulary)
    assert_response :success
  end

  test "should get edit" do
    get edit_formulary_url(@formulary)
    assert_response :success
  end

  test "should update formulary" do
    patch formulary_url(@formulary), params: { formulary: { condition: @formulary.condition, date_begin: @formulary.date_begin, date_end: @formulary.date_end, description: @formulary.description, name: @formulary.name } }
    assert_redirected_to formulary_url(@formulary)
  end

  test "should destroy formulary" do
    assert_difference("Formulary.count", -1) do
      delete formulary_url(@formulary)
    end

    assert_redirected_to formularies_url
  end
end
