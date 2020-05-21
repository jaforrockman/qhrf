class AddBookIdToSurah < ActiveRecord::Migration[5.0]
  def change
    add_column :surahs, :book_id, :string
  end
end
