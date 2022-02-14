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
    it "increases the animal's health by 2 when we play for an hour" do
      expect { greg.play(lion, 60) }.to change{ lion.health }.by 2
    end
  end
end