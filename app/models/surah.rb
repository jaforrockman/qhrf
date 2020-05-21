class Surah < ApplicationRecord
	belongs_to :book
	has_many :ayats, dependent: :destroy 
end
