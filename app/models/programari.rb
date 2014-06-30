class Programari < ActiveRecord::Base
  belongs_to :pacient
  validates_presence_of :data, :message => "EROARE:Campul nu poate fi gol!!!"
  validates_presence_of :ora,  :message => "EROARE:Campul nu poate fi gol!!!"
  validates_presence_of :medicul, :message => "EROARE:Campul nu poate fi gol!!!"
  validates_presence_of :tip, :message => "EROARE:Campul nu poate fi gol!!!"
  validates_uniqueness_of :ora, :scope => :data,:message => "EROARE: Exista alta programare la ora si data aleasa!!!"
  #validates :ora, uniqueness: {scope: :data}#,:message => "EROARE: Exista alta programare la data si ora respectiva"
  #validates_uniqueness_of :ora, scope: :data
  def self.ez
	    Programari.find_each do |prg|
		pac = Pacient.find(prg.pacient_id)
		time_now = Time.now
		date = time_now.strftime("%m/%d/%Y")
		
			if prg.data == date
				ProgramariMailer.trimitedimi(pac,prg).deliver
			end
					
	    end
end
def self.search(search)
	if search
					

		where('data LIKE ? OR ora LIKE ?  OR medicul LIKE ? OR tip LIKE ?',"%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")		
	else
		all
	end
end
end
