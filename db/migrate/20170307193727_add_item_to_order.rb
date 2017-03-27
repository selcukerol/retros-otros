class AddItemToOrder < ActiveRecord::Migration[5.0]
  def change
    add_reference :orders, :item, foreign_key: true
  end
end
