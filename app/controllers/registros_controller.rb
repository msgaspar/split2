class RegistrosController < ApplicationController

  def index
    @registros = Registro.all
  end

  def show
    @registro = Registro.find(params[:id])
  end
  
  def edit
    @registro = Registro.find(params[:id])
  end

  def update
    @registro = Registro.find(params[:id])
    registro_params = params.require(:registro).permit(:nome, :valor, :data)
    @registro.update(registro_params)
    redirect_to registros_path
  end

end
