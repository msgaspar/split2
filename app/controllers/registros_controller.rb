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
    @registro.update(registro_params)
    redirect_to registros_path
  end

  def new
    @registro = Registro.new
  end

  def create
    @registro = Registro.new(registro_params)
    @registro.save
    redirect_to @registro
  end

private

  def registro_params
    params.require(:registro).permit(:nome, :valor, :data)
  end

end
