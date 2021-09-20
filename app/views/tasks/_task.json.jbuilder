json.extract! task, :id, :name, :description, :due_date, :requirement_id, :user_id, :user_id, :status, :worklog, :created_at, :updated_at
json.url task_url(task, format: :json)
