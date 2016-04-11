class RemovenameFromOrderInfo < ActiveRecord::Migration
  def change
  	remove_column :order_infos, :name,:string
  end
end
