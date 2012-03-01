class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :style
      t.string :construction
      t.string :material
      t.string :cases
      t.string :size36
      t.string :size37
      t.string :size38
      t.string :size39
      t.string :size40
      t.string :size41
      t.string :pairs
      t.decimal :price
      t.integer :order_id

      t.timestamps
    end
  end
end
