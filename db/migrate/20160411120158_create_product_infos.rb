class CreateProductInfos < ActiveRecord::Migration
  def change
    create_table :product_infos do |t|
      t.string :name
      t.decimal :price
      t.references :manufacture, index: true

      t.timestamps
    end
  end
end
