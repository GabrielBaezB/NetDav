class ContratoComboPaquetesController < ApplicationController
  before_action :set_contrato_combo_paquete, only: %i[ show edit update destroy ]

  # GET /contrato_combo_paquetes or /contrato_combo_paquetes.json
  def index
    @contrato_combo_paquetes = ContratoComboPaquete.all
  end

  # GET /contrato_combo_paquetes/1 or /contrato_combo_paquetes/1.json
  def show
  end

  # GET /contrato_combo_paquetes/new
  def new
    @contrato_combo_paquete = ContratoComboPaquete.new
  end

  # GET /contrato_combo_paquetes/1/edit
  def edit
  end

  # POST /contrato_combo_paquetes or /contrato_combo_paquetes.json
  def create
    @contrato_combo_paquete = ContratoComboPaquete.new(contrato_combo_paquete_params)

    respond_to do |format|
      if @contrato_combo_paquete.save
        format.html { redirect_to contrato_combo_paquete_url(@contrato_combo_paquete), notice: "Contrato combo paquete was successfully created." }
        format.json { render :show, status: :created, location: @contrato_combo_paquete }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contrato_combo_paquete.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contrato_combo_paquetes/1 or /contrato_combo_paquetes/1.json
  def update
    respond_to do |format|
      if @contrato_combo_paquete.update(contrato_combo_paquete_params)
        format.html { redirect_to contrato_combo_paquete_url(@contrato_combo_paquete), notice: "Contrato combo paquete was successfully updated." }
        format.json { render :show, status: :ok, location: @contrato_combo_paquete }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contrato_combo_paquete.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contrato_combo_paquetes/1 or /contrato_combo_paquetes/1.json
  def destroy
    @contrato_combo_paquete.destroy

    respond_to do |format|
      format.html { redirect_to contrato_combo_paquetes_url, notice: "Contrato combo paquete was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contrato_combo_paquete
      @contrato_combo_paquete = ContratoComboPaquete.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contrato_combo_paquete_params
      params.require(:contrato_combo_paquete).permit(:cliente_id, :combo_paquete, :cantidad, :valor, :fecha_contratacion)
    end
end
