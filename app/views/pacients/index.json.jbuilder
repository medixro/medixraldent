json.array!(@pacients) do |pacient|
  json.extract! pacient, :id, :nume, :prenume, :adresa, :nrtel, :email, :var, :var1, :var2, :var3, :var4, :var5
  json.url pacient_url(pacient, format: :json)
end
