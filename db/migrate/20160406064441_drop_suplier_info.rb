class DropSuplierInfo < ActiveRecord::Migration
  def change
  	drop_tabel :suplier_infos
  end
end
