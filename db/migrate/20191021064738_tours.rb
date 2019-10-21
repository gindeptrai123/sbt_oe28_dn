class Tours < ActiveRecord::Migration[5.0]
  def change
    create_table :tours do |t|
      t.string :title
      t.string :description
      t.string :content
      t.float :price
      t.datetime :date_in
      t.datetime :date_out
      t.integer :rating, default: "0"

      t.timestamps
    end
    add_index :tours, [:title, :created_at]
    add_index :tours, :rating
  end
end
