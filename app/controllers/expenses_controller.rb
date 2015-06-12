class ExpensesController < ApplicationController
  def index
  	@expenses = Expense.all
    
	@total = 0
	@expenses.each do |expense|
		@total += expense.amount
	end
  	@total
  	render :index
  end

  def new
  	@expense = Expense.new
    @categories = Category.all
  end
  
  def create
  	@expense = Expense.new(expense_params)
    if @expense.save
      redirect_to expenses_path
    else
      render 'new'
    end
  end

  def show
  	@expense = Expense.find(params[:id])
  end

  def edit
  	@expense = Expense.find(params[:id])
    @categories = Category.all
  	render :edit
  end

  def update
  	@expense = Expense.find(params[:id])

	 if @expense.update(expense_params)
	    redirect_to expense_path
	 else
	    render 'edit'
	 end
  end

  def destroy
  	@expense = Expense.find(params[:id])
  	@expense.destroy
  	redirect_to expenses_path
  end



  private
		def expense_params
			params.require(:expense).permit(:category_id, :date, :concept, :amount)	
		end

end
