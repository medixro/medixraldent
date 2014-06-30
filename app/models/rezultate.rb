class Rezultate < ActiveRecord::Base
  belongs_to :pacient
  mount_uploader :image, ImageUploader
  before_save do 
  	if self.var == "1"
  		n = " probleme la molarul bucal"
  		self.diagn += n
  	end
  	if self.var1 == "1"
  		n = " probleme molarul lingual"
  		self.diagn += n
  	end
  end	
end
