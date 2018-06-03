require File.expand_path(File.dirname(__FILE__) + '/../src/libs/eratos')

describe Eratos do
  describe '#all_prime_numbers' do
    context '引数が2つ以上もしくは引数が0より小さい場合' do
      specify { expect( Eratos.all_prime_numbers([10, 20])).to eq"0以上の引数を1つ指定してください"}
      specify { expect( Eratos.all_prime_numbers([-1])).to eq"0以上の引数を1つ指定してください"}
    end
  end
end
