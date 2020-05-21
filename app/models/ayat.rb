class Ayat < ApplicationRecord
	belongs_to :surah
	belongs_to :book
end
