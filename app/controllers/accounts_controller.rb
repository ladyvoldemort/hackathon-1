class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update]
  
  def index
    @accounts = current_user.accounts
  end

  def show
  end

  def new
    @account = Account.new
  end

  def create
    @account = current_user.accounts.new(account_params)
    if @account.save
      redirect_to accounts_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @account.update(account_params)
      redirect_to accounts_path
    else
      render :edit
    end
  end

  def destroy
    @account.destroy
  end

  private

  def set_account
    @account = current_user.accounts.find(params[:id])
  end

  def account_params
    params.require(:account).permit(:name, :balance)
  end
  
end
