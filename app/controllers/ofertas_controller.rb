# app/controllers/ofertas_controller.rb
class OfertasController < ApplicationController
  before_action :set_combo, only: [:new, :create, :destroy]

  def new
    @oferta = @combo.ofertas.build
  end

  def create
    @oferta = @combo.ofertas.build(oferta_params)

    if @oferta.save
      redirect_to @combo, notice: 'Oferta creada exitosamente.'
    else
      render :new
    end
  end

  def destroy
    @oferta = Oferta.find(params[:id])
    @oferta.destroy
    redirect_to @combo, notice: 'Oferta eliminada exitosamente.'
  end

  private

  def set_combo
    @combo = Combo.find(params[:combo_id])
  end

  def oferta_params
    params.require(:oferta).permit(:servicio_id)
  end
end
