class CreateAccountHistories < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
    	t.string :name
    	t.timestamps null: false
    end
    create_table :accounts do |t|
    	t.belongs_to :supplier ,index:true
    	t.string :account_number
    	t.timestamps null: false
    end
    create_table :account_histories do |t|
      t.belongs_to :account, index: true
      t.integer :credit_rating
      t.timestamps null: false
    end

  end
end
