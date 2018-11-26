class Country < ApplicationRecord
  has_many :info, foreign_key: :info_id
end
