class UserAccountsController < ApplicationController
  def new
    @account = UserAccount.new
  end

  def create
    @account = UserAccount.new(account_params)
    if @account.save
      redirect_to user_accounts_path
    else
      render 'new'
    end
  end

  def destroy
    UserAccount.find_by(id: params[:id]).destroy
    redirect_to user_accounts_path
  end

  def index
    @accounts = UserAccount.all
  end



  private
    def account_params
      params.require(:user_account)
            .permit(:first_name, :last_name, :email, :password, :password_confirmation, :password_hint)
    end
end

