json.array!(@programaris) do |programari|
  json.extract! programari, :id, :data, :ora, :medicul, :tip, :var, :var1, :var2, :var3, :var4, :var5, :pacient_id
  json.url programari_url(programari, format: :json)
end
