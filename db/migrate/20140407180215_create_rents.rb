class CreateRents < ActiveRecord::Migration
  def change
    create_table :rents do |t|
      t.references :movie, index: true
      t.references :member, index: true
      t.date :borrowDate

      t.timestamps
    end
  end
end
