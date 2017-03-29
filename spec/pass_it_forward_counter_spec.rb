require_relative ".././lib/pass_it_forward_counter"
RSpec.describe PassItForwardCounter do
  describe '.new' do
    it 'creates counter instance' do
      expect(PassItForwardCounter.new()).to be_kind_of PassItForwardCounter
    end
  end
  describe '#counter' do
    it 'return default counter' do
      expect(PassItForwardCounter.new().counter).to eq 0
    end

    it 'return correct passed counter' do
      expect(PassItForwardCounter.new(counter: 100).counter).to eq 100  
    end
  end

  describe '#target' do
    it 'return default counter' do 
      expect(PassItForwardCounter.new().target).to eq 1000
    end

    it 'return correct passed target' do
      expect(PassItForwardCounter.new(target: 121).target).to eq 121
    end
  end
  
  describe '#result' do
    it 'return default increment' do
      obj = PassItForwardCounter.new()
      expect(obj.result).not_to eq 0 
    end
  end
end