class ParamsValidator

  def initialize
    @valid_directions = ['directo', 'inverso']
    @valid_solo = ['pares']
  end

  def validate_params(params)
    params[:solo].to_s == '' || params[:solo].to_s == 'pares'
  end
end