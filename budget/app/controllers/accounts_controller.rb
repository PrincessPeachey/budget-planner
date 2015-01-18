class AccountsController < ApplicationController
  def new
    end
  
  def index
    @accounts = Account.all
    end
  
  def create
    @account = Account.new(account_params);
    
    @account.save
    redirect_to @account
    end
  
  def show
    @account = Account.find(params[:id])
    end
  
  private
  def account_params
    params.require(:account).permit(:account, :balance)
    end
end
