json.extract! persona, :id, :nombre, :apellido_p, :apellido_m, :fecha_nacimiento, :sexo, :lugar_nacimiento, :estado_civil, :created_at, :updated_at
json.url persona_url(persona, format: :json)
