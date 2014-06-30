class ProgramarisController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_programari, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction
  # GET /programaris
  # GET /programaris.json
  def index
    @programaris = Programari.search(params[:search]).order(sort_column1 + ' ' + sort_direction1 ).order(sort_column + ' ' + sort_direction )
     @programaris_by_date = @programaris.group_by(&:data)
     @date = params[:date] ? Date.parse(params[:date]) : Date.today
    
  end

  # GET /programaris/1
  # GET /programaris/1.json
  def show
  end

  # GET /programaris/new
  def new
    @pacient = Pacient.find(params[:pacient_id])
    @programari = @pacient.programaris.build
   
     
    
  end

  # GET /programaris/1/edit
  def edit
  end
  def ez
    @pacient = Pacient.all
  end
  # POST /programaris
  # POST /programaris.json
  def create
    @programari = Programari.new(programari_params)

    respond_to do |format|
      if @programari.save
        format.html { redirect_to @programari, notice: 'Programarea a fost salvata.' }
        format.json { render action: 'show', status: :created, location: @programari }
      else
        format.html { render action: 'new' }
        format.json { render json: @programari.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programaris/1
  # PATCH/PUT /programaris/1.json
  def update
    respond_to do |format|
      if @programari.update(programari_params)
        format.html { redirect_to @programari, notice: 'Programarea a fost modificata' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @programari.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programaris/1
  # DELETE /programaris/1.json
  def destroy
    @programari.destroy
    respond_to do |format|
      format.html { redirect_to programaris_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programari
      @programari = Programari.find(params[:id])
    end
     def sort_column
      Programari.column_names.include?(params[:sort]) ? params[:sort] : "ora"
    end
    def sort_direction
       %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
    end
    def sort_column1
      Programari.column_names.include?(params[:sort]) ? params[:sort] : "data"
    end
    def sort_direction1
       %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def programari_params
      params.require(:programari).permit(:data, :ora, :medicul, :tip, :var, :var1, :var2, :var3, :var4, :var5, :pacient_id)
    end
end
