class Category < ActiveRecord::Base
	has_many :expenses, dependent: :destroy
	validates :name, presence: true, length: {in: 4..20}, uniqueness: true
end
