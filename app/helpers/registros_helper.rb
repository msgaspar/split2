module RegistrosHelper

  def mostrar_data(registro)
    l(registro.data, format: "%d %b %Y")
  end

end
