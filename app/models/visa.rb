class Visa < ApplicationRecord
  belongs_to :user
  has_one :document, foreight_key: :document_id
end
