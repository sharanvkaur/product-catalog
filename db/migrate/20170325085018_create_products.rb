class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.references :sub_sub_category, foreign_key: true, index: true

      t.timestamps
    end
  end
end
