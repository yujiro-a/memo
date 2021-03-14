require "csv"

while true do
  puts "1(新規でメモを作成) 2(既存のメモを編集する)"
  num = gets.chomp
  
  if num == "1" 
    puts "拡張子を除いたファイル名を入力してください。"
    text = gets.chomp
    puts "メモしたい内容を記入してください。"
    puts "完了したらCtrl + Dを押します。"
  
    CSV.open("#{text}.csv","w") do |memo|
      while memo_text = gets
        memo << [memo_text.chomp]
      end
      exit
    end
    
  elsif num == "2"
    puts "拡張子を除いたファイル名を入力してください。"
    text = gets.chomp
    puts "メモしたい内容を記入してください。"
    puts "完了したらCtrl + Dを押します。"
    CSV.open("#{text}.csv","a") do |memo|
      while memo_text = gets
        memo << [memo_text.chomp]
      end
      exit
    end
  else
    puts "[ERROR]\n入力された数字が間違っています。\n「１」か「２」を入力してください。\n "
  end
end