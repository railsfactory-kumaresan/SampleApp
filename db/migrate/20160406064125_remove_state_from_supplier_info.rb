class RemoveStateFromSupplierInfo < ActiveRecord::Migration
  def change
  	remove_column :suplier_infos, :state, :string
  end
end
