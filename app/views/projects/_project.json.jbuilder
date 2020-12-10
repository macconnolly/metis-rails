json.extract! project, :id, :client_id, :name, :category, :subcategory, :start, :end, :created_at, :updated_at
json.url project_url(project, format: :json)
