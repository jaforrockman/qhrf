class AddBookReligionToBook < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :religion, :string
  end
end
