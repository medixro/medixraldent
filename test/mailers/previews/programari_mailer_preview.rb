# Preview all emails at http://localhost:3000/rails/mailers/programari_mailer
class ProgramariMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/programari_mailer/notif
  def notif
    ProgramariMailer.notif
  end

end
