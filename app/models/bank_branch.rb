class BankBranch < ApplicationRecord
    validates :ifsc, presence: true , uniqueness: true
    validates :branchname, presence: true , length: { minimum: 5 } , uniqueness: true
    validates :address, presence: true, length: {minimum:5}

    has_many :accounts,
    dependent: :destroy
end
