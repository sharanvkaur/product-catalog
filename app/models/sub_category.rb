class SubCategory < ApplicationRecord
  belongs_to :category, required: false
	has_many :sub_sub_categories, dependent: :destroy
	has_many :products, through: :sub_sub_categories
end
