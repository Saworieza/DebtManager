require 'test_helper'

class DebtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @debt = debts(:one)
  end

  test "should get index" do
    get debts_url
    assert_response :success
  end

  test "should get new" do
    get new_debt_url
    assert_response :success
  end

  test "should create debt" do
    assert_difference('Debt.count') do
      post debts_url, params: { debt: { amount: @debt.amount, date: @debt.date, debtor_id: @debt.debtor_id, reason: @debt.reason, user_id: @debt.user_id } }
    end

    assert_redirected_to debt_url(Debt.last)
  end

  test "should show debt" do
    get debt_url(@debt)
    assert_response :success
  end

  test "should get edit" do
    get edit_debt_url(@debt)
    assert_response :success
  end

  test "should update debt" do
    patch debt_url(@debt), params: { debt: { amount: @debt.amount, date: @debt.date, debtor_id: @debt.debtor_id, reason: @debt.reason, user_id: @debt.user_id } }
    assert_redirected_to debt_url(@debt)
  end

  test "should destroy debt" do
    assert_difference('Debt.count', -1) do
      delete debt_url(@debt)
    end

    assert_redirected_to debts_url
  end
end
