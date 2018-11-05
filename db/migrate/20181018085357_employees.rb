class Employees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
     t.string   :name
     t.integer  :age
     t.string   :sex
     t.boolean  :status, default: true
     t.integer  :phone_no
     t.timestamps
   end
  end
end
