class DebtorsController < ApplicationController
  before_action :set_debtor, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /debtors
  # GET /debtors.json
  def index
    @debtors = Debtor.where(:user_id => current_user.id).all
  end

  # GET /debtors/1
  # GET /debtors/1.json
  def show
    @user = User.where(:user_id => current_user.id)
    @debtor = Debtor.find(params[:id])
  end

  # GET /debtors/new
  def new
    @debtor = current_user.debtors.build
  end

  # GET /debtors/1/edit
  def edit
  end

  # POST /debtors
  # POST /debtors.json
  def create
    @debtor = current_user.debtors.build(debtor_params)

    respond_to do |format|
      if @debtor.save
        format.html { redirect_to @debtor, notice: 'Debtor was successfully created.' }
        format.json { render :show, status: :created, location: @debtor }
      else
        format.html { render :new }
        format.json { render json: @debtor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /debtors/1
  # PATCH/PUT /debtors/1.json
  def update
    respond_to do |format|
      if @debtor.update(debtor_params)
        format.html { redirect_to @debtor, notice: 'Debtor was successfully updated.' }
        format.json { render :show, status: :ok, location: @debtor }
      else
        format.html { render :edit }
        format.json { render json: @debtor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /debtors/1
  # DELETE /debtors/1.json
  def destroy
    @debtor.destroy
    respond_to do |format|
      format.html { redirect_to debtors_url, notice: 'Debtor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_debtor
      @debtor = Debtor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def debtor_params
      params.require(:debtor).permit(:name, :number, :user_id)
    end
end
