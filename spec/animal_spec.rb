require 'animal'

describe Animal do
  let(:animal) { Animal.new("lion", 10) }
    it "has a species name" do
      expect(animal.name).to eq "lion"
    end
    it "has a an initial hunger level of 10" do
    expect(animal.hunger).to eq 10
    end
    it "has a starting health level of 10" do
      expect(animal.health).to eq 10
    end

  describe '#eat'
  let(:animal) { described_class.new("lion", 10) }
  let(:meat) { Food.new("meat", 6) }
    context "when the food is not rotten" do
      it "reduces the hunger level by 5 when fed meat" do
        expect { animal.eat(meat) }.to change{ animal.hunger }.by -6
      end
    end
    context "when the food is rotten" do
      it "reduces the animals health if the food is rotten" do
        allow(meat).to receive(:rotten).and_return true
        expect { animal.eat(meat) }.to change{ animal.health }. by -2
      end
      it "reduces the hunger by half the normal amount" do
        allow(meat).to receive(:rotten).and_return true
        expect { animal.eat(meat) }.to change{ animal.hunger }. by -3
      end
    end
  describe '#played' do
    it "increase the animal's health by 1 per hour of fun" do
      expect { animal.played(60) }.to change{ animal.health }.by 1
    end
  end




end