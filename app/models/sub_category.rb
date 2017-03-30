class SubCategory < ApplicationRecord
  belongs_to :category
	has_many :sub_sub_categories, dependent: :destroy
	has_many :products, through: :sub_sub_categories

  validates :name, presence: true
end
