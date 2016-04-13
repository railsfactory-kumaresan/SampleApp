class RenameOrderDetailToOrderInfo < ActiveRecord::Migration
  def change
  	rename_table :order_details, :order_infos
  end
end
