json.array!(@notificaris) do |notificari|
  json.extract! notificari, :id, :text, :pacient_id, :var, :var1, :var2, :var3, :var4, :var5
  json.url notificari_url(notificari, format: :json)
end
