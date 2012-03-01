class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :number
      t.string :currency
      t.string :terms
      t.integer :client_id

      t.timestamps
    end
  end
end
