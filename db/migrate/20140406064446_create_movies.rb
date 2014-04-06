class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :Name
      t.string :Language
      t.string :Genera
      t.string :Year

      t.timestamps
    end
  end
end
