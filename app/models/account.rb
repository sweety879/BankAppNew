class Account < ApplicationRecord
  belongs_to :bank_branch
  belongs_to :customer
  validates :balance,  numericality:{greater_than_or_equal_to: 1000}
end
