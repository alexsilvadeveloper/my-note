class Evaluation < ApplicationRecord
  belongs_to :student
  belongs_to :discipline
   
  scope :with_relations, -> do
  	joins(:student, :discipline).
  	includes(:student, :discipline)
  end

  def average
  	(note1 + note2 + note3 + note4) / 4
  end
end
