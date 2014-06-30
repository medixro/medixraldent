json.array!(@rezultates) do |rezultate|
  json.extract! rezultate, :id, :exam, :diagn, :image, :var, :var1, :var2, :var3, :var4, :var5, :pacient_id
  json.url rezultate_url(rezultate, format: :json)
end
