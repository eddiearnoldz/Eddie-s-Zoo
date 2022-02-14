require 'food'

describe Food do
  let(:food) { described_class.new("chicken", 8) }
  it "has a name to identify what type of food it is" do
    expect(food.name).to eq "chicken"
  end
  it "has a nutritional value" do
    expect(food.nutrition_value). to eq 8
  end
  it "can sometimes be rotten" do
    allow(food).to receive(:rotten).and_return true
    expect(food.rotten).to eq true
  end

end