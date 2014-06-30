class Pacient < ActiveRecord::Base
	has_many :programaris
	has_many :rezultates
  validates_presence_of :nume, :message => "EROARE:Campul nu poate fi gol!!!"
  validates_presence_of :prenume,  :message => "EROARE:Campul nu poate fi gol!!!"
  validates_presence_of :adresa, :message => "EROARE:Campul nu poate fi gol!!!"
  validates_presence_of :nrtel, :message => "EROARE:Campul nu poate fi gol!!!"
 validates_presence_of :email, :message => "EROARE:Campul nu poate fi gol!!!"
 validates_presence_of :var, :message => "EROARE:Trebuie aleasa o optiune!!!"
validates_presence_of :var1, :message => "EROARE:Trebuie aleasa o optiune!!!"
	def self.search(search)
	if search
					

		where('nume LIKE ? OR prenume LIKE ?  OR nrtel LIKE ? OR adresa LIKE ? OR email LIKE ?',"%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")		
	else
		all
	end
end

	

end
