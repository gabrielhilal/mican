class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :buyer
      t.string :address
      t.string :phone
      t.string :email
      t.string :comments

      t.timestamps
    end
  end
end
