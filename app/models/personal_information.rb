class PersonalInformation < ApplicationRecord
  belongs_to :user
  has_many :questions, foreight_key: :question_id
  has_many :answers, foreight_key: :answer_id
end
