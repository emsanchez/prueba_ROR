json.extract! usuario, :id, :nombre, :email, :password, :tipousuario_id, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
