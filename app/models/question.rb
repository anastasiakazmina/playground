class Question < ApplicationRecord
  belongs_to :visa_applications
  belongs_to :personal_information
  has_many :answers, foreign_key: :answer_id
end
