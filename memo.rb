require "csv"



puts "1（新規でメモ作成）　2（既存のメモを編集）"

memo_type = gets.chomp.to_s

until (memo_type == "1" || memo_type== "2")

puts "1（新規でメモ作成）　2（既存のメモを編集）"

memo_type = gets.chomp.to_s

end


if memo_type == "1"
puts "拡張子を除いたファイルのタイトルを入力してください。"

file_title = gets.chomp.to_s

puts "内容を記入"
puts "終了時はCtrl+Dを入力"

input = $stdin.read

 CSV.open("#{file_title}.csv",'w') do |csv|
 csv << [input]
puts "入力完"
puts "入力内容　#{input}"

end


elsif memo_type == "2"

puts "読み込むファイルを、拡張子を除いて入力してください。"

file_title = gets.chomp.to_s


puts "追記する内容を記入"
puts "終了時はCtrl+Dを入力"

input = $stdin.read

CSV.open("#{file_title}.csv",'a') do |csv|
 csv << [input]

puts "入力完"
puts "追記内容　#{input}"

end

end