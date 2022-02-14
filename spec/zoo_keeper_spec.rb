require 'zoo_keeper'

describe ZooKeeper do
  let(:greg) { described_class.new("Greg") }
  let(:lion) { Animal.new("lion", 10) }
  let(:chicken) { Food.new("chicken", 8) }
  describe '#feed' do
    it "gives the animal some food" do
      expect { greg.feed(lion, chicken) }.to change{ lion.hunger }.by -8
    end
  end

  describe '#play' do
    it "increases the animal's health by 1 when we play for an hour" do
      expect { greg.play(lion, 1) }.to change{ lion.health }.by 1
    end
  end

  describe '#wash' do
    it "increases the animal's health by 2" do
      expect { greg.wash(lion) }.to change{ lion.health }.by 2
    end
  end

  describe '#bedtime' do
    it "puts the animal to sleep" do
      3.times { greg.play(lion, 1) }
      greg.bedtime(lion)
      expect(lion.asleep).to be true
    end
    it "can't put animal to sleep if it has too much energy" do
      expect(greg.bedtime(lion)).to eq "lion has too much energy!"
    end
  end
end