json.extract! resource, :id, :nombre, :descripcion, :interes, :link, :parent, :created_at, :updated_at
json.url resource_url(resource, format: :json)
