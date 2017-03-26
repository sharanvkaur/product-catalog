class Product < ApplicationRecord
  belongs_to :sub_sub_category

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 140 }
end
