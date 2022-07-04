class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name , presence:true ,null:false
      t.bigint :mobile ,presence:true , unique: true,null:false
      t.string :pancard, presence:true , unique: true,null:false
      t.string :aadhaar, presence:true , unique: true,null:false
      t.text :address, presence:true ,null:false
      t.string :email, presence:true , unique: true,null:false

      t.timestamps
    end
  end
end
