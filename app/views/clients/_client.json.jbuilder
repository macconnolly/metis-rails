json.extract! client, :id, :office_id, :name, :industry, :hq, :contact_name, :contact_number, :contact_email, :created_at, :updated_at
json.url client_url(client, format: :json)
