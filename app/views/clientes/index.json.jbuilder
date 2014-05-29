json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :cedula, :nombre, :mail, :genero, :fch_nacimiento, :celular
  json.url cliente_url(cliente, format: :json)
end
