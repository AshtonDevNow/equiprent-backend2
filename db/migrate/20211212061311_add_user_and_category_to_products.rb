class AddUserAndCategoryToProducts < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :user, null: false, foreign_key: true
    add_reference :products, :category, null: false, foreign_key: true
  end
end
