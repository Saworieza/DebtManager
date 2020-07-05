require "application_system_test_case"

class DebtsTest < ApplicationSystemTestCase
  setup do
    @debt = debts(:one)
  end

  test "visiting the index" do
    visit debts_url
    assert_selector "h1", text: "Debts"
  end

  test "creating a Debt" do
    visit debts_url
    click_on "New Debt"

    fill_in "Amount", with: @debt.amount
    fill_in "Date", with: @debt.date
    fill_in "Debtor", with: @debt.debtor_id
    fill_in "Reason", with: @debt.reason
    fill_in "User", with: @debt.user_id
    click_on "Create Debt"

    assert_text "Debt was successfully created"
    click_on "Back"
  end

  test "updating a Debt" do
    visit debts_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @debt.amount
    fill_in "Date", with: @debt.date
    fill_in "Debtor", with: @debt.debtor_id
    fill_in "Reason", with: @debt.reason
    fill_in "User", with: @debt.user_id
    click_on "Update Debt"

    assert_text "Debt was successfully updated"
    click_on "Back"
  end

  test "destroying a Debt" do
    visit debts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Debt was successfully destroyed"
  end
end
