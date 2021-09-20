json.extract! project, :id, :name, :user_id, :platform_id, :approval_status, :created_at, :updated_at
json.url project_url(project, format: :json)
