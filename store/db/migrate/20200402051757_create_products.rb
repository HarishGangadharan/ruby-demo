class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :created_by
      t.string :modified_by

      t.timestamps
    end
  end
end
