class CreateParts < ActiveRecord::Migration[5.1]
  def change
    create_table :parts do |t|
      t.string :name
      t.string :description
      t.string :sku
      t.integer :quantity

      t.timestamps
    end
  end
end
