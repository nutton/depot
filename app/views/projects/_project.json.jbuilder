json.extract! project, :id, :projectname, :comment, :created_at, :updated_at
json.url project_url(project, format: :json)