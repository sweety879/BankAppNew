class CreateBankBranches < ActiveRecord::Migration[7.0]
  def change
    create_table :bank_branches do |t|
      t.string :ifsc , presence: true , unique: true,null:false
      t.string :branchname , presence:true , unique: true,null:false
      t.text :address, presence:true ,null:false

      t.timestamps
    end
  end
end
