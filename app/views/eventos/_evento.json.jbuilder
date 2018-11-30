json.extract! evento, :id, :titulo, :texto, :date, :local, :created_at, :updated_at
json.url evento_url(evento, format: :json)
