require 'foodie'

RSpec.describe Foodie do
  before(:all) do
    @vaquita = Alimentos.new("Carne de vaca")
  end
  it "Existe un nombre para el alimento" do
    @vaquita = Alimentos.new("Carne de vaca")
  end
  it "Existe un metodo para obtener el nombre del Alimento" do
  expect(@vaquita.nombre).to eq("Carne de vaca")
end
it "Se ha podido introducir la cantidad de gases" do
    @vaquita.gases = 50.0
  end
  it "Se puede obtener la cantidad de gases" do
  expect(@vaquita.gases).to eq(50.0)
end
it "Se ha podido introducir la cantidad de terreno usado" do
    @vaquita.terreno = 164.0
  end
  it "Se puede obtener la cantidad de terreno usado" do
      expect(@vaquita.terreno).to eq(164.0)
    end
  it "Existe un metodo para obtener el alimento formateado" do
  @vaquita.prot = 21.1
  @vaquita.carbo = 0.0
  @vaquita.lip = 3.1
  expect(@vaquita.to_s).to eq("(Carne de vaca,21.1,0.0,3.1,50.0,164.0)")
end
it "Existe un metodo para obtener el valor energetico de un alimento" do
    expect(@vaquita.val_en).to eq(112.3)
end
end
