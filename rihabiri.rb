def game_resister(games)
  game = {}
  puts "名前を入力してください"
  game[:names] = gets.chomp
  puts "値段を入力してください"
  game[:price] = gets.to_i
  games << game
end
games = {}
while true do
  puts "番号を入力してください"
  puts "(i)ゲーム入力"
  puts "(2)ゲームの感想入力"
  puts "（終了)"
  inputs = gets.to_i
  if inputs == 1
    game_resister(games)
  elsif inputs == 2
    game_reviewer
  else inputs == 3
    exit
end
end