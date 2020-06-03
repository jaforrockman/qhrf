class AddReligionIdToBook < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :religion_id, :string
  end
end
