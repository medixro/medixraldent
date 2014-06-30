class NotificarisController < ApplicationController
 before_filter :authenticate_user!
 before_action :set_notificari, only: [:show, :edit, :update, :destroy]

  # GET /notificaris
  # GET /notificaris.json
  def index
    @notificaris = Notificari.all
  end

  # GET /notificaris/1
  # GET /notificaris/1.json
  def show
  end

  # GET /notificaris/new
  def new
    @notificari = Notificari.new
  end
def trimite
  @pacients = Pacient.all
  notificari = Notificari.find(params[:id])
   @pacients.each do |pacient|
    if pacient.nrtel.present? and pacient.nrtel.include? "07"
    ProgramariMailer.trimite(pacient,notificari).deliver
  end
  
   end
  redirect_to notificaris_url, notice: 'Notificari au fost trimise'
end
def trimiteneplata
  @pacients = Pacient.all
  notificari = Notificari.find(params[:id])
   @pacients.each do |pacient|
    if pacient.nrtel.present? and pacient.nrtel.include? "07"
    ProgramariMailer.trimiteneplata(pacient,notificari).deliver
  end
  
  
   end
  redirect_to notificaris_url, notice: 'Notificarile au fost trimise'
end
  # GET /notificaris/1/edit
  def edit
  end

  # POST /notificaris
  # POST /notificaris.json
  def create
    @notificari = Notificari.new(notificari_params)

    respond_to do |format|
      if @notificari.save
        format.html { redirect_to @notificari, notice: 'Notificarea a fost salvata' }
        format.json { render action: 'show', status: :created, location: @notificari }
      else
        format.html { render action: 'new' }
        format.json { render json: @notificari.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notificaris/1
  # PATCH/PUT /notificaris/1.json
  def update
    respond_to do |format|
      if @notificari.update(notificari_params)
        format.html { redirect_to @notificari, notice: 'Notificarea a fost modificata.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @notificari.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notificaris/1
  # DELETE /notificaris/1.json
  def destroy
    @notificari.destroy
    respond_to do |format|
      format.html { redirect_to notificaris_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notificari
      @notificari = Notificari.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notificari_params
      params.require(:notificari).permit(:text, :pacient_id, :var, :var1, :var2, :var3, :var4, :var5)
    end
end
