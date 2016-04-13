class RenameOrderPlaceToOrdervene < ActiveRecord::Migration
  def change
  	rename_column :order_infos, :order_place, :order_venue
  end
end
