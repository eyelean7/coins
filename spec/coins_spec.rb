require ("rspec")
require ("coins")
require ("pry")

describe('Fixnum#coins') do
  it('when input is 1, return 1 penny') do
    expect(1.coins()).to(eq('1 penny'))
  end
  it('when input is 2, return 2 pennies') do
    expect(2.coins()).to(eq('2 pennies'))
  end

  it('when input is 5, return 1 nickel') do
    expect(5.coins()).to(eq('1 nickel'))
  end
  it('when input is 6, return 1 nickel 1 penny') do
    expect(6.coins()).to(eq('1 nickel 1 penny'))
  end

  it('when input is 56') do
    expect(56.coins()).to(eq('2 quarters 1 nickel 1 penny'))
  end

  # it('when input is 25, return 1 quarter') do
  #   expect(25.coins()).to(eq('1 quarter'))
  # end
end
