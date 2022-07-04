require "application_system_test_case"

class BankBranchesTest < ApplicationSystemTestCase
  setup do
    @bank_branch = bank_branches(:one)
  end

  test "visiting the index" do
    visit bank_branches_url
    assert_selector "h1", text: "Bank branches"
  end

  test "should create bank branch" do
    visit bank_branches_url
    click_on "New bank branch"

    fill_in "Address", with: @bank_branch.address
    fill_in "Branchname", with: @bank_branch.branchname
    fill_in "Ifsc", with: @bank_branch.ifsc
    click_on "Create Bank branch"

    assert_text "Bank branch was successfully created"
    click_on "Back"
  end

  test "should update Bank branch" do
    visit bank_branch_url(@bank_branch)
    click_on "Edit this bank branch", match: :first

    fill_in "Address", with: @bank_branch.address
    fill_in "Branchname", with: @bank_branch.branchname
    fill_in "Ifsc", with: @bank_branch.ifsc
    click_on "Update Bank branch"

    assert_text "Bank branch was successfully updated"
    click_on "Back"
  end

  test "should destroy Bank branch" do
    visit bank_branch_url(@bank_branch)
    click_on "Destroy this bank branch", match: :first

    assert_text "Bank branch was successfully destroyed"
  end
end
