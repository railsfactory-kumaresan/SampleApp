class AddOrderPlaceToOrderdetail < ActiveRecord::Migration
  def change
  	 add_column :order_infos, :order_place, :string
  end
end
