class AddEditableToBook < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :editable, :boolean, default: false
  end
end
