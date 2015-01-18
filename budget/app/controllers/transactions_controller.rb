class TransactionsController < ApplicationController
  def display
    
  end
  
  def index
    @transactions = Transaction.all
  end
  def create
    @transaction = Transaction.new(transaction_params);
    
    @transaction.save
    redirect_to @transaction
  end
  def new
  end
  def edit
  end
  def show
    @transaction = Transaction.find(params[:id])
  end
  def update
  end
  def destroy
  end
  
  private
  def transaction_params
    params.require(:transaction).permit(:date, :amount, :credit, :description, :recurring, :recurrence)
  end
end
