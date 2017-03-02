json.extract! event, :id, :title, :date_time, :description, :created_at, :updated_at
json.url event_url(event, format: :json)
