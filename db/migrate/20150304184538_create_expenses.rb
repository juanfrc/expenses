class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :category
      t.date :date
      t.text :concept
      t.integer :amount

      t.timestamps
    end
  end
end
