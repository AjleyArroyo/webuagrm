class EstblecimientosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_estblecimiento, only: [:show, :edit, :update, :destroy]

  # GET /estblecimientos
  # GET /estblecimientos.json
  def index
    @estblecimientos = Estblecimiento.all
  end

  # GET /estblecimientos/1
  # GET /estblecimientos/1.json
  def show
  end

  # GET /estblecimientos/new
  def new
    @estblecimiento = Estblecimiento.new
  end

  # GET /estblecimientos/1/edit
  def edit
  end

  # POST /estblecimientos
  # POST /estblecimientos.json
  def create
    @estblecimiento = Estblecimiento.new(estblecimiento_params)

    respond_to do |format|
      if @estblecimiento.save
        format.html { redirect_to @estblecimiento, notice: 'Estblecimiento was successfully created.' }
        format.json { render :show, status: :created, location: @estblecimiento }
      else
        format.html { render :new }
        format.json { render json: @estblecimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estblecimientos/1
  # PATCH/PUT /estblecimientos/1.json
  def update
    respond_to do |format|
      if @estblecimiento.update(estblecimiento_params)
        format.html { redirect_to @estblecimiento, notice: 'Estblecimiento was successfully updated.' }
        format.json { render :show, status: :ok, location: @estblecimiento }
      else
        format.html { render :edit }
        format.json { render json: @estblecimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estblecimientos/1
  # DELETE /estblecimientos/1.json
  def destroy
    @estblecimiento.destroy
    respond_to do |format|
      format.html { redirect_to estblecimientos_url, notice: 'Estblecimiento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estblecimiento
      @estblecimiento = Estblecimiento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estblecimiento_params
      params.require(:estblecimiento).permit(:nombre, :numeracion, :alias, :informacion, :latitud, :longitud, :imagen, :idcategoria)
    end
end
