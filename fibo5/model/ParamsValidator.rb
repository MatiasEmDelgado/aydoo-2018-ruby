class ParamsValidator

  def initialize
    @valid_directions = ['directo', 'inverso', '', nil]
    @valid_solo = ['pares', '', nil]
  end

  def validate_params(params)
    validate_solo(params[:solo].to_s) && validate_direction(params[:sentido].to_s)
  end

  def validate_solo(solo)
    @valid_solo.include? solo
  end

 def validate_direction(direction)
   @valid_directions.include? direction
  end
end