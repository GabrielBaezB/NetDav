class UsuariosController < ApplicationController
    before_action :set_usuario, only: [:show, :edit, :update, :destroy]

    def index
      @usuarios = Usuario.all
    end
    
    def show
      @usuario = Usuario.find(params[:id])
    end
    
    def new
      @usuario = Usuario.new
    end
    
    def create
        @usuario = Usuario.new(usuario_params)
        
        if @usuario.save
            redirect_to @usuario, notice: 'Usuario creado exitosamente.'
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @usuario.update(usuario_params)
            redirect_to @usuario, notice: 'Usuario actualizado exitosamente.'
        else
            render :edit
        end
    end

    def destroy
      @usuario.destroy
      redirect_to usuarios_url, notice: 'Usuario eliminado exitosamente.'
    end

    private

    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    def usuario_params
      params.require(:usuario).permit(:nombre)
    end
end
