
# feature "feeding time at the zoo"  do
#   scenario "the zookeeper feeds a lion some good food" do
#     greg = ZooKeeper.new
#     lion = Animal.new("lion")
#     let(:steak) { Food.new("steak", 6) }
#     allow(steak).to receive(:rotten).and_return false
#     expect { greg.feed(lion, steak) }.to change{ lion.hunger }.by -6
#   end
# end