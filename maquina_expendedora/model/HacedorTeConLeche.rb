require_relative '../model/Lechero'
require_relative '../model/Tetero'
require_relative '../model/Vaso'

class HacedorTeConLeche
  
  attr_accessor :lechero, :tetero
  
  def initialize
    @lechero = Lechero.new
    @tetero = Tetero.new
  end

  def prepararEnVaso(un_vaso)
    tetero.poner_te(un_vaso)
    lechero.poner_leche(un_vaso)
  end
end
