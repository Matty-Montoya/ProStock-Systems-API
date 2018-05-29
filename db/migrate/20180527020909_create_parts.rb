class CreateParts < ActiveRecord::Migration[5.1]
  def change
    create_table :parts do |t|
      t.string :name
      t.string :description
      t.string :sku
      t.integer :quantity
      t.references :collection, foreign_key: true

      t.timestamps
    end
  end
end
