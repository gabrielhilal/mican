class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :style
      t.string :construction
      t.string :material
      t.integer :cases
      t.integer :size36
      t.integer :size37
      t.integer :size38
      t.integer :size39
      t.integer :size40
      t.integer :size41
      t.decimal :price
      t.integer :order_id

      t.timestamps
    end
  end
end
