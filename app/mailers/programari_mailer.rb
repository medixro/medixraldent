class ProgramariMailer < ActionMailer::Base
    default from: "office@raldent.ro"
  def trimite(pacient,notificari)
    @pacient = pacient
    @notificari = notificari
  
    mail to: "android@dominet.ro" , subject: "#{@pacient.nrtel}"
end
def trimiteneplata(pacient,notificari)
    @pacient = pacient
    @notificari = notificari
  
    mail to: "android@dominet.ro" , subject: "#{@pacient.nrtel}"
    
  end
  def trimitedimi(pac,prg)
    @pacient = pac
    @programari = prg
    mail to: "android@dominet.ro", subject: "#{@pacient.nrtel}"
  end
  def fisa(pacient)
    @pacient = pacient
    pdf = PacientPdf.new(@pacient)
    attachments["Fisa medicala #{@pacient.prenume} #{@pacient.nume}.pdf"] = { :mime_type => 'application/pdf', :content => pdf.render }
    mail to: "#{@pacient.email}" , subject: "Fisa medicala #{@pacient.prenume} #{@pacient.nume}"
    
  end
end

