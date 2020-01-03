#Q11 以下の配列から重複する部分だけを抽出した新しい配列を作成してください
favorite_sport = ["フットサル", "バスケット"]
selected_sport = ["野球", "ボルダリング", "サッカー", "フットサル"]
ary_sport = favorite_sport & selected_sport

p ary_sport
puts "=============================="

#Q12 以下の配列を用いた繰り返し処理において、「うに」が含まれていれば「好物です」と表示し、そうでなければ「まぁまぁ好きです」と表示するようにコードを書いてください
ary = ["いか", "たこ", "うに", "しゃけ", "うにぎり", "うに軍艦", "うに丼"]
#三項演算子使いやすい。
ary.each do |uni|
    ary2 = uni.include?("うに") ? "#{uni}: 好物です" : "#{uni}:まぁまぁ好きです"
    puts ary2
end 
puts "=============================="

#Q13. 以下の配列から奇数だけを選んだ新しい配列を作成してください
number = [1, 2, 3, 4, 5]
p number.select(&:odd?)
puts "=============================="

#Q14. 以下の配列からnilの要素を削除してください
ary = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]
ary2 = ary.compact
p ary2
puts "=============================="

#Q15. 以下の配列からadminの数を数えてください
ary = ["admin", "user", "user", "admin", "admin"]
p ary.count("admin")
puts "=============================="

#Q16. 以下の配列をもとに期待する出力結果になるようにコードを書いてください
ary = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]
ary2 = ary.flatten.uniq
puts "ユーザーの趣味一覧"
ary2.each.with_index(1) do |sport, i|
    puts "No#{i} #{sport}"
end
puts "=============================="

#Q17. 以下のハッシュから name の値を取り出してください
user = {name: "satou", age: 33}
p user[:name]
puts "=============================="

#Q18. 以下のハッシュから name の値を取り出して下さい
user　= {user: {name: "satou", age: 33}}
puts user[:user][:name]
puts "=============================="

#Q19. 以下の既存で存在する user_data に対して、 update_data の内容を反映させ user_data の内容を書き換えて下さい
user_data = {name: "神里", age: 31, address: "埼玉"}
update_data = {age: 32, address: "沖縄"}
p user_data.update(update_data)
puts "=============================="

#Q20. 以下の全てのハッシュの name と age の値を取り出し、「私の名前は〜です年齢は〜歳です」と表示してください
users = [
{name: "satou", age: 22},
{name: "yamada", age: 12},
{name: "takahashi", age: 32},
{name: "nakamura", age: 41},
]
users.each do |user|
    puts "「私の名前は#{user[:name]}です。年齢は#{user[:age]}歳です。」"
end