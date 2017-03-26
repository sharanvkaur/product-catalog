class CreateSubSubCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :sub_sub_categories do |t|
      t.string :name
      t.references :sub_category, index: true, foreign_key: true


      t.timestamps
    end
  end
end
