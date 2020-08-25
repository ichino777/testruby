games = []
def game_resister(games)
  game = {}
  puts "名前を入力してください"
  game[:name] = gets.chomp
  puts "値段を入力してください"
  game[:price] = gets.to_i
  games << game
end
def game_reviewer(games)
  games.each_with_index do |game,index|
  puts "#{index+1}:#{game[:names]}"
  imputs = gets.to_i
  puts gamesresist(games[imputs-1])
end
end
def gamesresist(game)
  puts "名前#{game[:name]}"
  puts "値段#{game[:price]}"
end
while true do
  puts "番号を入力してください"
  puts "(i)ゲーム入力"
  puts "(2)ゲームの感想入力"
  puts "（終了)"
  inputs = gets.to_i
  if inputs == 1
    game_resister(games)
  elsif inputs == 2
    game_reviewer(games)
  else inputs == 3
    exit
end
end