class Expense < ActiveRecord::Base
	belongs_to :category 

	validates :category_id, presence: true
	validates :concept, presence: true
	validates :date, presence: true
	validates_numericality_of :amount, only_integer: true, greater_than: 0
end
