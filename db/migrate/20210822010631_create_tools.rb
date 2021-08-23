class CreateTools < ActiveRecord::Migration[6.0]
  def change
    create_table :tools do |t|
      t.references :user
      t.string :tool_name
      t.integer :maker_id
      t.integer :price
      t.string :purchase_date
      t.integer :category_id
      t.text :detail
      t.string :size
      t.integer :weight
      t.string :part_number
      t.string :purchase_store
      t.integer :evaluation_id

      t.timestamps
    end
  end
end
