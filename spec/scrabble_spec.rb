require('rspec')
require('scrabble')

describe('String#scrabble') do
  it('take "a" and return a scrabble score of 1') do
    expect('a'.scrabble()).to(eq(1))
  end

  it('take "au" and return a scrabble score of 2') do
    expect('au'.scrabble()).to(eq(2))
  end

  it('take "dg" and return a scrabble score of 4') do
    expect('dg'.scrabble()).to(eq(4))
  end
end
