require 'rspec'
require_relative '../model/ParamsValidator'

describe 'validator' do

  let(:validator) { ParamsValidator.new }  
   
  it 'El parametro solo con valor pares deberia ser valido' do
  	params = {solo:'pares'}
    expect(validator.validate_params(params)).to be_truthy
  end  
  
  it 'El parametro sentido con valor inverso deberia ser valido' do
   params = {sentido:'inverso'}
   expect(validator.validate_params(params)).to be_truthy
  end
end