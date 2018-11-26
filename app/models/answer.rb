class Answer < ApplicationRecord
  belongs_to :question
  has_many :question, foreign_key: :question_id
end
