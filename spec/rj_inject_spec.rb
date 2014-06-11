require 'rj_inject'

describe 'inject' do
	let(:array){[1,2,3,4]}

	context 'excisting inject method should' do

		it 'explicit memo and block with addition' do
			result = array.inject(0){|memo,element| memo + element}
			expect(result).to eq 10
		end
	end

	context 'custom inject method should' do

		it 'explicit memo and block with addition' do
			result = array.rj_inject(0){|memo,element| memo + element}
			expect(result).to eq 10
		end
	end
end