class AddCategoriesToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :categories, index: true
  end
end
