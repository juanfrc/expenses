class AddForeignKeyToExpenses < ActiveRecord::Migration
  def change
  	remove_column :expenses, :category, :string
  	add_column :expenses, :category_id, :integer  
  	add_index :expenses, :category_id
  end
end

