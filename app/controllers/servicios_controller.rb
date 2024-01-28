class ServiciosController < ApplicationController
  before_action :set_servicio, only: [:show, :edit, :update, :destroy]

  def index
    @servicios = Servicio.all
  end

  def show
  end

  def new
    @servicio = Servicio.new
  end

  def create
    @servicio = Servicio.new(servicio_params)

    if @servicio.save
      redirect_to @servicio, notice: 'Servicio creado exitosamente.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @servicio.update(servicio_params)
      redirect_to @servicio, notice: 'Servicio actualizado exitosamente.'
    else
      render :edit
    end
  end

  def destroy
    @servicio.destroy
    redirect_to servicios_url, notice: 'Servicio eliminado exitosamente.'
  end

  private

  def set_servicio
    @servicio = Servicio.find(params[:id])
  end

  def servicio_params
    params.require(:servicio).permit(:nombre)
  end
end
