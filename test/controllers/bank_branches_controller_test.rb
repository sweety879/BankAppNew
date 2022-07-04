require "test_helper"

class BankBranchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bank_branch = bank_branches(:one)
  end

  test "should get index" do
    get bank_branches_url
    assert_response :success
  end

  test "should get new" do
    get new_bank_branch_url
    assert_response :success
  end

  test "should create bank_branch" do
    assert_difference("BankBranch.count") do
      post bank_branches_url, params: { bank_branch: { address: @bank_branch.address, branchname: @bank_branch.branchname, ifsc: @bank_branch.ifsc } }
    end

    assert_redirected_to bank_branch_url(BankBranch.last)
  end

  test "should show bank_branch" do
    get bank_branch_url(@bank_branch)
    assert_response :success
  end

  test "should get edit" do
    get edit_bank_branch_url(@bank_branch)
    assert_response :success
  end

  test "should update bank_branch" do
    patch bank_branch_url(@bank_branch), params: { bank_branch: { address: @bank_branch.address, branchname: @bank_branch.branchname, ifsc: @bank_branch.ifsc } }
    assert_redirected_to bank_branch_url(@bank_branch)
  end

  test "should destroy bank_branch" do
    assert_difference("BankBranch.count", -1) do
      delete bank_branch_url(@bank_branch)
    end

    assert_redirected_to bank_branches_url
  end
end
