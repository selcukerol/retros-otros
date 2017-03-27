class AddSellerIdToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :seller_id, :string
  end
end
