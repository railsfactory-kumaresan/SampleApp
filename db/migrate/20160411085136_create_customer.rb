class CreateCustomer < ActiveRecord::Migration
  def change
    create_table :customers do |t|
    	t.string :name
    	t.timestamps null: false
    end
    create_table :orders do |t|
    	t.belongs_to :customer, index:true
    	t.datetime :order_date
    	t.timestamps null: false
    end	
  end
end
