#!/usr/bin/env ruby
require('rps')
puts 'Welcome to'
puts 'ROCK PAPER SCISSORS'
puts 'Play to what score?'
play_to = gets.chomp
game = RPS.new
until (game.score >= play_to) | (game.bad_score >= play_to)
  puts 'WHICH DO YOU CHOOSE?'
  puts '[R]ock?'
  puts '[P]aper?'
  puts '[S]cissors?'
  choice = gets.chomp.chr.downcase
  if choice == 'r'
    choice = 'rock'
  elsif choice == 'p'
    choice = 'paper'
  elsif choice == 's'
    choice = 'scissors'
  else
    puts 'ya broke it!'
  end
  puts "You choose #{choice}."
  un_choice = ''
  rando = rand(1..3)
  if rando == 1
    un_choice = 'rock'
  elsif rando == 2
    un_choice = 'paper'
  elsif rando == 3
    un_choice = 'scissors'
  else 
    puts 'ya broke it'
    break
  end
  puts "I choose #{un_choice}."
  puts ''
  game.shoot(choice, un_choice)
  puts 'SCORE'
  puts '-----'
  puts "Human: #{game.score}"
  puts "CPU: #{game.bad_score}"
  puts ''
  puts 'The fight continues...'
end
if game.score >= play_to
  puts 'You win, cursed human!'
elsif game.bad_score >= play_to
  puts 'I win! I win! 101000100010010001011111!!!'
else
  puts 'You fudged this all up somehow... There is an error.'
end
puts 'SCORE'
puts '-----'
puts "Human: #{game.score}"
puts "CPU: #{game.bad_score}"
puts ''
puts ''
