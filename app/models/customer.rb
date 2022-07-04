class Customer < ApplicationRecord
    validates :name, presence: true
    validates :pancard, presence: true , uniqueness: true , length: { minimum: 3 }
    validates :aadhaar , presence: true , uniqueness: true , length: { minimum: 2 , maximum:12 }
    validates :mobile, presence: true , uniqueness: true, length: { minimum: 10 , maximum:10 }, numericality:{only_int: true}
    validates :email,  uniqueness: true , format: {with: /[a-z0-9]+@[a-z]+\.[a-z]{2,3}/ , message: "follow email@coindcx.com or .in format for email "}
    validates :address, presence: true , length: { minimum: 5 }

    has_many :accounts,
    dependent: :destroy
end
