class CombosController < ApplicationController
  before_action :set_combo, only: [:show, :edit, :update, :destroy]

  def index
    @combos = Combo.all
  end

  def show
  end

  def new
    @combo = Combo.new
  end

  def create
    @combo = Combo.new(combo_params)

    if @combo.save
      redirect_to @combo, notice: 'Combo creado exitosamente.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @combo.update(combo_params)
      redirect_to @combo, notice: 'Combo actualizado exitosamente.'
    else
      render :edit
    end
  end

  def destroy
    @combo.destroy
    redirect_to combos_url, notice: 'Combo eliminado exitosamente.'
  end

  private

  def set_combo
    @combo = Combo.find(params[:id])
  end

  def combo_params
    params.require(:combo).permit(:nombre)
  end
end
