json.extract! libro, :id, :titulo, :autor, :estado, :fecha_prestado, :fecha_devolucion, :created_at, :updated_at
json.url libro_url(libro, format: :json)
