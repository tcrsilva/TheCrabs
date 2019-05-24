json.extract! perfil, :id, :nome, :sobrenome, :telefone, :img_name, :img_content_type, :img_file_size, :created_at, :updated_at
json.url perfil_url(perfil, format: :json)
