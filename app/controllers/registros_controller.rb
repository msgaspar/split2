class RegistrosController < ApplicationController

  def index
    @registros = Registro.all
  end

end
