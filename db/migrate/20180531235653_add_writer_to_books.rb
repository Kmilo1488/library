class AddWriterToBooks < ActiveRecord::Migration[5.2]
  def change
    add_reference :books, :writer, index: true, foreign_key: true
  end
end
