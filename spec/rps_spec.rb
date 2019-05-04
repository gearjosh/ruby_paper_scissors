require('rspec')
require('pry')
require('rps')

describe('RPS#wins?') do
  it("returns true if rock is the object and scissors is the argument") do
    game = RPS.new
    expect(game.wins?('rock', 'scissors')).to(eq(true))
  end
  it("returns true if paper is the object and rock is the argument") do
    game = RPS.new
    expect(game.wins?('paper', 'rock')).to(eq(true))
  end
  it("returns true if scissors is the object and paper is the argument") do
    game = RPS.new
    expect(game.wins?('scissors', 'paper')).to(eq(true))
  end
  it("returns false if scissors is the object and rock is the argument") do
    game = RPS.new
    expect(game.wins?('scissors', 'rock')).to(eq(false))
  end
end

describe('RPS#draws?') do
  it("returns true if scissors is the object and scissors is the argument") do
    game = RPS.new
    expect(game.draws?('scissors', 'scissors')).to(eq(true))
  end
  it("returns false if scissors is the object and rock is the argument") do
    game = RPS.new
    expect(game.draws?('scissors', 'rock')).to(eq(false))
  end
end

describe('RPS#shoot') do
  it("adds one to score if scissors is the object and paper is the argument") do
    game = RPS.new
    expect(game.shoot('scissors', 'paper')).to eq [1, 0]
  end
  it("adds one to the opponent's score if rock is the object and paper is the argument") do
    game = RPS.new
    expect(game.shoot('rock', 'paper')).to eq [0, 1]
  end
  it("does nothing to score if rock is the object and rock is the argument") do
    game = RPS.new
    expect(game.shoot('rock', 'rock')).to eq [0, 0]
  end
end

# describe('RPS#XXXXX') do
#   it('does a thing') do
#     # code
#   end
# end
