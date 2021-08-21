class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.references :user
      t.integer :age
      t.string :affiliation
      t.integer :height
      t.integer :weight
      t.integer :pitching_id
      t.integer :batting_id
      t.integer :prefecture_id

      t.timestamps
    end
  end
end
