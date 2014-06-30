class RezultatesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_rezultate, only: [:show, :edit, :update, :destroy]

  # GET /rezultates
  # GET /rezultates.json
  def index
    @rezultates = Rezultate.all
  end

  # GET /rezultates/1
  # GET /rezultates/1.json
  def show
  end

  # GET /rezultates/new
  def new
    @pacient = Pacient.find(params[:pacient_id])
    @rezultate = @pacient.rezultates.build
  end

  # GET /rezultates/1/edit
  def edit
  end

  # POST /rezultates
  # POST /rezultates.json
  def create
    @rezultate = Rezultate.new(rezultate_params)

    respond_to do |format|
      if @rezultate.save
        format.html { redirect_to @rezultate, notice: 'Diagnosticul a fost salvat' }
        format.json { render action: 'show', status: :created, location: @rezultate }
      else
        format.html { render action: 'new' }
        format.json { render json: @rezultate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rezultates/1
  # PATCH/PUT /rezultates/1.json
  def update
    respond_to do |format|
      if @rezultate.update(rezultate_params)
        format.html { redirect_to @rezultate, notice: 'Diagnosticul a fost modificat.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @rezultate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rezultates/1
  # DELETE /rezultates/1.json
  def destroy
    @rezultate.destroy
    respond_to do |format|
      format.html { redirect_to rezultates_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rezultate
      @rezultate = Rezultate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rezultate_params
      params.require(:rezultate).permit(:exam, :diagn, :image, :var, :var1, :var2, :var3, :var4, :var5, :pacient_id)
    end
end
