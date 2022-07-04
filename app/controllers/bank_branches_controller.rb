class BankBranchesController < ApplicationController
  before_action :set_bank_branch, only: %i[ show edit update destroy ]

  # GET /bank_branches or /bank_branches.json
  def index
    @bank_branches = BankBranch.all
  end

  # GET /bank_branches/1 or /bank_branches/1.json
  def show
  end

  # GET /bank_branches/new
  def new
    @bank_branch = BankBranch.new
  end

  # GET /bank_branches/1/edit
  def edit
  end

  # POST /bank_branches or /bank_branches.json
  def create
    @bank_branch = BankBranch.new(bank_branch_params)

    respond_to do |format|
      if @bank_branch.save
        format.html { redirect_to bank_branch_url(@bank_branch), notice: "Bank branch was successfully created." }
        format.json { render :show, status: :created, location: @bank_branch }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bank_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bank_branches/1 or /bank_branches/1.json
  def update
    respond_to do |format|
      if @bank_branch.update(bank_branch_params)
        format.html { redirect_to bank_branch_url(@bank_branch), notice: "Bank branch was successfully updated." }
        format.json { render :show, status: :ok, location: @bank_branch }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bank_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bank_branches/1 or /bank_branches/1.json
  def destroy
    @bank_branch.destroy

    respond_to do |format|
      format.html { redirect_to bank_branches_url, notice: "Bank branch was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bank_branch
      @bank_branch = BankBranch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bank_branch_params
      params.require(:bank_branch).permit(:ifsc, :branchname, :address)
    end
end
