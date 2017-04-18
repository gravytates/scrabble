require('rspec')
require('scrabble')

describe('String#scrabble') do
  it('take "a" and return a scrabble score of 1') do
    expect('a'.scrabble()).to(eq(1))
  end

  it('take "au" and return a scrabble score of 2') do
    expect('AU'.scrabble()).to(eq(2))
  end
end
