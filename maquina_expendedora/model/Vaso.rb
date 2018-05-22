class Vaso

  attr_accessor :cantidad_de_azucar, :contenido  

  def initialize
    @cantidad_de_azucar = 0
    @contenido = 'VACIO'
  end

  def cantidad_de_azucar
    @cantidad_de_azucar
  end

  def tiene_cafe?
    @contenido == 'CAFE' || @contenido == 'CAFE_CON_LECHE'
  end

  def tiene_azucar?
    @cantidad_de_azucar > 0
  end

  def tiene_te?
    @contenido == 'TE' || @contenido == 'TE_CON_LECHE'
  end
  
  def set_azucar(cantidad)
    @cantidad_de_azucar = cantidad
  end

  def set_cafe
    @contenido = 'CAFE'
  end

  def set_te
    @contenido = 'TE'
  end

  def set_leche
    if @contenido == 'CAFE'
      @contenido = 'CAFE_CON_LECHE'
    elsif @contenido == 'TE'
      @contenido = 'TE_CON_LECHE'
    else
      @contenido = 'LECHE'
    end
  end
end
