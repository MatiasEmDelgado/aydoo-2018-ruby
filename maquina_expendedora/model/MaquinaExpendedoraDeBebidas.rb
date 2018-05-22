require_relative '../model/HacedorCafeConLeche'
require_relative '../model/HacedorTeConLeche'
require_relative '../model/Azucarero'
require_relative '../model/Vaso'

class MaquinaExpendedoraDeBebidas

  attr_accessor :hacedor_cafe_con_leche, :hacedor_te_con_leche, :azucarero  

  def initialize
    @hacedor_cafe_con_leche = HacedorCafeConLeche.new
    @hacedor_te_con_leche = HacedorTeConLeche.new
    @azucarero = Azucarero.new
  end

  def hacer_cafe_con_leche_con_n_de_azucar(un_vaso, cantidad_azucar)
    azucarero.ponerAzucar(un_vaso, cantidad_azucar)
    hacedor_cafe_con_leche.prepararEnVaso(un_vaso)
  end

  def hacer_te_con_leche_con_n_de_azucar(un_vaso, cantidad_azucar)
    azucarero.ponerAzucar(un_vaso, cantidad_azucar)
    hacedor_te_con_leche.prepararEnVaso(un_vaso)
  end

end


