require 'rj_inject' 

describe 'inject' do
  let(:array){[1,2,3,4]}

  context 'existing inject method should' do

    it 'explicit memo and block with addition' do
      result = array.inject(0) { |memo, n| memo + n }
      expect(result).to eq 10
    end
 end
end