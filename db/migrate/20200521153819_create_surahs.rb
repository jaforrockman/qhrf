class CreateSurahs < ActiveRecord::Migration[5.0]
  def change
    create_table :surahs do |t|
      t.integer :surah_number
      t.string :surah_name

      t.timestamps
    end
  end
end
