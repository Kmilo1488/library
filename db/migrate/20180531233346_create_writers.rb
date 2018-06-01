class CreateWriters < ActiveRecord::Migration[5.2]
  def change
    create_table :writers do |t|
      t.string :name
      t.integer :birth
      t.string :place

      t.timestamps
    end
  end
end
