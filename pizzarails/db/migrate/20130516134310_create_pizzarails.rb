class CreatePizzarails < ActiveRecord::Migration
  def change
    create_table :pizzarails do |t|
      t.string :name
      t.string :size
      t.text :address
      t.string :phone
      t.string :side_order
      t.string :price

      t.timestamps
    end
  end
end
