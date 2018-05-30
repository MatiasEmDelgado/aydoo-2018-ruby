require 'rspec'
require_relative '../model/ParamsValidator'

describe 'validator' do

  let(:validator) { ParamsValidator.new }  
   
  it 'El parametro solo con valor pares deberia ser valido' do
  	params = {solo:'pares'}
    expect(validator.validate_solo(params[:solo].to_s)).to be_truthy
  end  
  
  it 'El parametro sentido con valor inverso deberia ser valido' do
   params = {sentido:'inverso'}
   expect(validator.validate_direction(params[:sentido].to_s)).to be_truthy
  end

  it 'El parametro n con valor 5 deberia ser valido' do
   params = {numero:5}
   expect(validator.validate_n(params[:numero])).to be_truthy
  end

  it 'El parametro n con valor hola deberia ser invalido' do
   params = {numero:'hola'}
   expect(validator.validate_n(params[:numero].to_i)).to be_falsey
  end

  it 'El parametro n con valor 6 deberia ser valido en caso de sumatoria' do
   params = {numero:'6'}
   expect(validator.validate_params_for_sum(params)).to be_truthy
  end

  it 'El parametro n con valor 6, y el parametro solo con valor pares deberia ser valido en caso de sumatoria' do
   params = {numero:'6', solo:'pares'}
   expect(validator.validate_params_for_sum(params)).to be_truthy
  end

  it 'El parametro n con valor 6, y el parametro solo con valor pwareees deberia ser invalido en caso de sumatoria' do
   params = {numero:'6', solo:'pwareees'}
   expect(validator.validate_params_for_sum(params)).to be_falsey
  end

end