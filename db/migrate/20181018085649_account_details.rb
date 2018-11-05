class AccountDetails < ActiveRecord::Migration[5.2]
  def change
        create_table :account_details do |t|
       t.integer   :employee_id
       t.integer   :account_id
       t.boolean   :status, default: true
       t.string    :bank_name
       t.string    :account_type
       t.timestamps
     end
  end
end
