require "./factorial"
require 'rspec'

describe Factorial do
  it 'should return 1 for the factorial input 0' do
    factorial = Factorial.new(0)
    result = factorial.calculate

    expect(result).to eq(1)
  end

  it 'should return 1 for the factorial input 1' do
    factorial = Factorial.new(1)
    result = factorial.calculate

    expect(result).to eq(1)
  end

  it 'should return 2 for the factorial input 2' do
    factorial = Factorial.new(2)
    result = factorial.calculate

    expect(result).to eq(2)
  end

  it 'should return 6 for the factorial input 3' do
    factorial = Factorial.new(3)
    result = factorial.calculate

    expect(result).to eq(6)
  end

  it 'should raise an expection for a negative input' do
    expect { Factorial.new(-3) }.to raise_error(ArgumentError)
  end
end
