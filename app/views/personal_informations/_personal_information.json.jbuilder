json.extract! personal_information, :id, :title, :body, :created_at, :updated_at
json.url personal_information_url(personal_information, format: :json)
