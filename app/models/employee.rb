class Employee < ApplicationRecord
  validates :name, presence: true
  validates :age, numericality: {only_integer: true}
  validates :phone_no, numericality: {only_integer: true}, length: {is: 10}
  has_many   :addresses, dependent: :destroy
  has_one    :employee_detail, dependent: :destroy
  has_many   :account_details, dependent: :destroy
  accepts_nested_attributes_for :addresses, :employee_detail, :account_details
end
