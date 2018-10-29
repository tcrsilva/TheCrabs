class PrediosController < ApplicationController
  before_action :set_predio, only: [:show, :edit, :update, :destroy]

  # GET /predios
  # GET /predios.json
  def index
    @predios = Predio.all
  end

  # GET /predios/1
  # GET /predios/1.json
  def show
  end

  # GET /predios/new
  def new
    @predio = Predio.new
  end

  # GET /predios/1/edit
  def edit
  end

  # POST /predios
  # POST /predios.json
  def create
    @predio = Predio.new(predio_params)

    respond_to do |format|
      if @predio.save
        format.html { redirect_to @predio, notice: 'Predio foi criado com sucesso.' }
        format.json { render :show, status: :created, location: @predio }
      else
        format.html { render :new }
        format.json { render json: @predio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /predios/1
  # PATCH/PUT /predios/1.json
  def update
    respond_to do |format|
      if @predio.update(predio_params)
        format.html { redirect_to @predio, notice: 'Predio foi alterado com sucesso.' }
        format.json { render :show, status: :ok, location: @predio }
      else
        format.html { render :edit }
        format.json { render json: @predio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /predios/1
  # DELETE /predios/1.json
  def destroy
    @predio.destroy
    respond_to do |format|
      format.html { redirect_to predios_url, notice: 'Predio foi deletado com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_predio
      @predio = Predio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def predio_params
      params.require(:predio).permit(:nm_predio, :cd_numero, :cd_bloco, :cd_cep, :ds_endereco, :ds_municipio, :ds_regioesSociais, :cd_telefone)
    end
end
