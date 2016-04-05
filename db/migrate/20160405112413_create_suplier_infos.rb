class CreateSuplierInfos < ActiveRecord::Migration
  def change
    create_table :suplier_infos do |t|
      t.string :name
      t.string :password
      t.string :registration_no
      t.timestamps
    end
  end
end
