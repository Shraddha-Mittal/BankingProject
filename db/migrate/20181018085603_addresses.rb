class Addresses < ActiveRecord::Migration[5.2]
  def change
    create_table  :addresses do |t|
        t.integer   :employee_id
        t.string    :street
        t.string    :city
        t.string    :state
        t.integer   :pincode
        t.string    :country
        t.timestamps
      end
  end
end
