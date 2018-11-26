class Document < ApplicationRecord
  belongs_to :user
  has_many :files, foreigh_key: :file_id
end
