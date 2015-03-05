class AddValidationToExpenses < ActiveRecord::Migration
  def change
  	change_column_null :categories, :name, false
	change_column_null :expenses, :category, false
	change_column_null :expenses, :date, false
	change_column_null :expenses, :concept, false
	change_column_null :expenses, :amount, false
  end
end
