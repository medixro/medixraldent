class PacientsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_pacient, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction
  # GET /pacients
  # GET /pacients.json
  def index
    @pacients = Pacient.search(params[:search]).order(sort_column + ' ' + sort_direction ).paginate(:per_page => 10, :page => params[:page])
  end

  # GET /pacients/1
  # GET /pacients/1.json
  def show
      @pacient = Pacient.find(params[:id])
  respond_to do |format|
          format.html
          format.pdf do
          pdf = PacientPdf.new(@pacient)
          send_data pdf.render, filename: "Fisa #{@pacient.prenume} #{@pacient.nume}",
                                type: "application/pdf",
                                disposition: "inline"

    end
  end
  end
def trimite
  @pacient = Pacient.find(params[:id])
  ProgramariMailer.fisa(@pacient).deliver
  redirect_to pacients_url, notice: 'Fisa a fost trimisa'
end
  # GET /pacients/new
  def new
    @pacient = Pacient.new
  end

  # GET /pacients/1/edit
  def edit
  end

  # POST /pacients
  # POST /pacients.json
  def create
    @pacient = Pacient.new(pacient_params)

    respond_to do |format|
      if @pacient.save
        format.html { redirect_to @pacient, notice: 'Pacient salvat cu succes' }
        format.json { render :show, status: :created, location: @pacient }
      else
        format.html { render :new }
        format.json { render json: @pacient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pacients/1
  # PATCH/PUT /pacients/1.json
  def update
    respond_to do |format|
      if @pacient.update(pacient_params)
        format.html { redirect_to @pacient, notice: 'Date pacient modificate cu succes.' }
        format.json { render :show, status: :ok, location: @pacient }
      else
        format.html { render :edit }
        format.json { render json: @pacient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pacients/1
  # DELETE /pacients/1.json
  def destroy
    @pacient.destroy
    respond_to do |format|
      format.html { redirect_to pacients_url, notice: 'Pacient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pacient
      @pacient = Pacient.find(params[:id])
    end
    def sort_column
      Pacient.column_names.include?(params[:sort]) ? params[:sort] : "nume"
    end
    def sort_direction
       %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def pacient_params
      params.require(:pacient).permit(:nume, :prenume, :adresa, :nrtel, :email, :var, :var1, :var2, :var3, :var4, :var5)
    end
end
