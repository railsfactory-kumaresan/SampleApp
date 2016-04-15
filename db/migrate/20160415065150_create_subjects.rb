class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.timestamps null: false
    end
    create_table :books do  |t|
      t.belongs_to :subjects, index:true
      t.string  :title,  limit: 50
      t.float :price
      t.text  :description
      t.timestamps null: false
    end  
  end
end
