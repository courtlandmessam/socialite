json.extract! claim_venue, :id, :name, :venue, :email, :phone_number, :other, :created_at, :updated_at
json.url claim_venue_url(claim_venue, format: :json)
