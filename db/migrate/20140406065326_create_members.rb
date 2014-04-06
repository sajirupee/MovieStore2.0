class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :Name
      t.string :Contact
      t.string :Address
      t.string :NIC

      t.timestamps
    end
  end
end
