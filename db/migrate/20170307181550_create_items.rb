class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end
