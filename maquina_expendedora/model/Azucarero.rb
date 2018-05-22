require_relative '../model/Vaso'

class Azucarero
  def ponerAzucar(un_vaso, cantidad_azucar)
    un_vaso.set_azucar(cantidad_azucar)
  end
end
