class User < ApplicationRecord
  has_one :personal_information, foreight_key: :personal_information_id
  has_many :visas, foreight_key: :visa_id
  has_many :visa_applications, foreign_key: :visa_application_id
  has_many :documents, foreight_key: :document_id
end
