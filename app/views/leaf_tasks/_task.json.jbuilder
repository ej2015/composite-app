json.extract! task, :id, :name, :process_time, :created_at, :updated_at
json.url task_url(task, format: :json)
