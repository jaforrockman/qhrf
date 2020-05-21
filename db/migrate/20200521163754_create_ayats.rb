class CreateAyats < ActiveRecord::Migration[5.0]
  def change
    create_table :ayats do |t|
      t.string :book_id
      t.string :surah_id
      t.integer :ayat_number
      t.text :ayat_text

      t.timestamps
    end
  end
end
