class Ayat < ApplicationRecord
	belongs_to :surah
	belongs_to :book

 include PgSearch

 pg_search_scope :search, against: [:ayat_text]
  
end
