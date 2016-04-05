class AddStateToSuplierInfo < ActiveRecord::Migration
  def change
    add_column :suplier_infos, :state, :string
  end
end
