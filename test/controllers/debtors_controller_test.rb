require 'test_helper'

class DebtorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @debtor = debtors(:one)
  end

  test "should get index" do
    get debtors_url
    assert_response :success
  end

  test "should get new" do
    get new_debtor_url
    assert_response :success
  end

  test "should create debtor" do
    assert_difference('Debtor.count') do
      post debtors_url, params: { debtor: { name: @debtor.name, number: @debtor.number, user_id: @debtor.user_id } }
    end

    assert_redirected_to debtor_url(Debtor.last)
  end

  test "should show debtor" do
    get debtor_url(@debtor)
    assert_response :success
  end

  test "should get edit" do
    get edit_debtor_url(@debtor)
    assert_response :success
  end

  test "should update debtor" do
    patch debtor_url(@debtor), params: { debtor: { name: @debtor.name, number: @debtor.number, user_id: @debtor.user_id } }
    assert_redirected_to debtor_url(@debtor)
  end

  test "should destroy debtor" do
    assert_difference('Debtor.count', -1) do
      delete debtor_url(@debtor)
    end

    assert_redirected_to debtors_url
  end
end
