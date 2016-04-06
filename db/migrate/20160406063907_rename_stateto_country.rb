class RenameStatetoCountry < ActiveRecord::Migration
  def change
  	rename_column :suplier_infos, :state, :country
  end
end
