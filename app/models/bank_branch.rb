class BankBranch < ApplicationRecord
    validates :ifsc, presence: true , uniqueness: true
    validates :branchname, presence: true , length: { minimum: 5 } , uniqueness: true
    validates :address, presence: true, length: {minimum:5}

    has_many :accounts,
    dependent: :destroy

    def self.to_csv()
        attributes = %w{id branchname ifsc address}
        CSV.generate(headers: true) do |csv|
            csv << attributes

            all.each do |contact|
                csv << attributes.map{ |attr| contact.send(attr) }
            end
        end
    end    
end
