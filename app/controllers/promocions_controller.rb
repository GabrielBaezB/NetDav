class PromocionsController < ApplicationController
  before_action :set_promocion, only: %i[ show edit update destroy ]

  # GET /promocions or /promocions.json
  def index
    @promocions = Promocion.all
  end

  # GET /promocions/1 or /promocions/1.json
  def show
  end

  # GET /promocions/new
  def new
    @promocion = Promocion.new
  end

  # GET /promocions/1/edit
  def edit
  end

  # POST /promocions or /promocions.json
  def create
    @promocion = Promocion.new(promocion_params)

    respond_to do |format|
      if @promocion.save
        format.html { redirect_to promocion_url(@promocion), notice: "Promocion was successfully created." }
        format.json { render :show, status: :created, location: @promocion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @promocion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promocions/1 or /promocions/1.json
  def update
    respond_to do |format|
      if @promocion.update(promocion_params)
        format.html { redirect_to promocion_url(@promocion), notice: "Promocion was successfully updated." }
        format.json { render :show, status: :ok, location: @promocion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @promocion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promocions/1 or /promocions/1.json
  def destroy
    @promocion.destroy

    respond_to do |format|
      format.html { redirect_to promocions_url, notice: "Promocion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promocion
      @promocion = Promocion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def promocion_params
      params.require(:promocion).permit(:nombre, :estado, :fecha_vigencia)
    end
end
