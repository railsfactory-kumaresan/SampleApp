class CreateSupplierInfos < ActiveRecord::Migration
  def change
    create_table :supplier_infos do |t|
      t.string :name
      t.string :password
      t.string :registration_no

      t.timestamps
    end
  end
end
