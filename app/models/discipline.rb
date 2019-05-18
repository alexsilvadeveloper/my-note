class Discipline < ApplicationRecord
	has_many :evaluations
	validates :name, presence: true, uniqueness: true
end
