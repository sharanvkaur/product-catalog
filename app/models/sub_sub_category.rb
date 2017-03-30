class SubSubCategory < ApplicationRecord
  belongs_to :sub_category
	has_many :products, dependent: :destroy

  validates :name, presence: true
end
