class PacientPdf < Prawn::Document
	def initialize(pacient)
		super(top_margin: 5)
		@pacient = pacient
		text"									
							Fisa medicala",size: 18, style: :bold, align: :center
stroke_horizontal_rule
draw_text "Pacient : #{@pacient.prenume} #{@pacient.nume}", size:14, style: :bold, :at => [0, 680]
draw_text "CNP: #{@pacient.var}", size:14, style: :bold, :at => [0, 660]
draw_text "Istoric pacient: ", size:14, style: :bold, :at => [0, 640]
draw_text "Medic: #{@pacient.var}", size:14, style: :bold, :at => [380, 680]
if pacient.var.include? "Bogdan"
	telefon = "0723 984 783"
  else
  	telefon = "0732 489 311"
  end
draw_text "Telefon: #{telefon} ", size:14, style: :bold, :at => [380, 660]
move_down 90
@pacient.rezultates.each do |rezultate|
	text "Diagnostic din data #{rezultate.created_at.day}/#{rezultate.created_at.month}/#{rezultate.created_at.year}",size:12, style: :bold, align: :left 
	move_down 10
	text "Rezultat examinare: ", size:10, style: :bold, align: :left 
	text "#{rezultate.exam}", size:10, align: :left 
	move_down 10
	text "Diagnostic: ", size:10, style: :bold, align: :left
	text "#{rezultate.diagn}", size:10, align: :left
	move_down 10
	if rezultate.image_url.present?
	text "Imagini atasate diagnosticului " #{rezultate.image_url(:thumb)}"
	image "#{Rails.root}/public#{rezultate.image_url.to_s}"	, :width => 200, :height => 200
    end
	move_down 10
	stroke_horizontal_rule	
	move_down 20
	
end

 def header
  text "something"
  end
end
  
  

end