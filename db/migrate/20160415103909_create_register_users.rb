class CreateRegisterUsers < ActiveRecord::Migration
  def change
    create_table :register_users do |t|
      t.string :name
      t.string :email
      t.timestamps
    end
  end
end
