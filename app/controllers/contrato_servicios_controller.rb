class ContratoServiciosController < ApplicationController
  before_action :set_contrato_servicio, only: %i[ show edit update destroy ]

  # GET /contrato_servicios or /contrato_servicios.json
  def index
    @contrato_servicios = ContratoServicio.all
  end

  # GET /contrato_servicios/1 or /contrato_servicios/1.json
  def show
  end

  # GET /contrato_servicios/new
  def new
    @contrato_servicio = ContratoServicio.new
  end

  # GET /contrato_servicios/1/edit
  def edit
  end

  # POST /contrato_servicios or /contrato_servicios.json
  def create
    @contrato_servicio = ContratoServicio.new(contrato_servicio_params)

    respond_to do |format|
      if @contrato_servicio.save
        format.html { redirect_to contrato_servicio_url(@contrato_servicio), notice: "Contrato servicio was successfully created." }
        format.json { render :show, status: :created, location: @contrato_servicio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contrato_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contrato_servicios/1 or /contrato_servicios/1.json
  def update
    respond_to do |format|
      if @contrato_servicio.update(contrato_servicio_params)
        format.html { redirect_to contrato_servicio_url(@contrato_servicio), notice: "Contrato servicio was successfully updated." }
        format.json { render :show, status: :ok, location: @contrato_servicio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contrato_servicio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contrato_servicios/1 or /contrato_servicios/1.json
  def destroy
    @contrato_servicio.destroy

    respond_to do |format|
      format.html { redirect_to contrato_servicios_url, notice: "Contrato servicio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contrato_servicio
      @contrato_servicio = ContratoServicio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contrato_servicio_params
      params.require(:contrato_servicio).permit(:cliente_id, :servicio, :cantidad, :valor_individual, :fecha_contratacion)
    end
end
