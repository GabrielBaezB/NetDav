class AccsController < ApplicationController
  before_action :set_acc, only: %i[ show edit update destroy ]

  # GET /accs or /accs.json
  def index
    @accs = Acc.all
  end

  # GET /accs/1 or /accs/1.json
  def show
  end

  # GET /accs/new
  def new
    @acc = Acc.new
  end

  # GET /accs/1/edit
  def edit
  end

  # POST /accs or /accs.json
  def create
    @acc = Acc.new(acc_params)

    respond_to do |format|
      if @acc.save
        format.html { redirect_to acc_url(@acc), notice: "Acc was successfully created." }
        format.json { render :show, status: :created, location: @acc }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @acc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accs/1 or /accs/1.json
  def update
    respond_to do |format|
      if @acc.update(acc_params)
        format.html { redirect_to acc_url(@acc), notice: "Acc was successfully updated." }
        format.json { render :show, status: :ok, location: @acc }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @acc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accs/1 or /accs/1.json
  def destroy
    @acc.destroy

    respond_to do |format|
      format.html { redirect_to accs_url, notice: "Acc was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acc
      @acc = Acc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def acc_params
      params.require(:acc).permit(:nombre_de_cuentas, :contrasena, :perfiles, :facturacion)
    end
end
