json.extract! evento, :id, :titulo, :contenido, :fecha, :hora, :created_at, :updated_at
json.url evento_url(evento, format: :json)