class AccountDetail < ApplicationRecord
  belongs_to :employee
  scope :active, -> { where  status: true }
  scope :inactive, -> { where  status: false  }
  def status_value
    status? ? "Active" : 'Inactive'
  end
end
