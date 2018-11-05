class EmployeeDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_details do |t|
     t.integer  :employee_id
     t.string   :designation
     t.string   :hobbies
     t.integer  :experience_of_years
     t.string   :marital_status
     t.date     :joining_date
     t.string   :email_id
     t.timestamps
    end
  end
end
