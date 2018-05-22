require_relative '../model/Lechero'
require_relative '../model/Cafetero'
require_relative '../model/Vaso'

class HacedorCafeConLeche
  
  attr_accessor :lechero, :cafetero

  def initialize
    @lechero = Lechero.new
    @cafetero = Cafetero.new
  end

  def prepararEnVaso(un_vaso)
    cafetero.poner_cafe(un_vaso)
    lechero.poner_leche(un_vaso)
  end

end
