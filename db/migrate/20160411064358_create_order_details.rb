class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.string :name
      t.string :password
      t.string :order_no

      t.timestamps
    end
  end
end
