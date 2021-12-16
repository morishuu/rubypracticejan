def janken 

 puts "0(グー）1（チョキ）2（パー）3（戦わない）"

 my_jan = gets.to_i

 until (my_jan == 0 || my_jan == 1 || my_jan == 2 || my_jan == 3)
    puts "0(グー）1（チョキ）2（パー）3（戦わない）"
    my_jan = gets.to_i
 end

 if my_jan == 0
    puts "あなたはグーを出しました。"
 elsif my_jan == 1
    puts "あなたはチョキを出ました。"
 elsif my_jan == 2
    puts "あなたはパーを出しました。"
 elsif my_jan == 3
    puts "ゲームを終了します。"
    exit
 end

 pc_jan = %w["グー" "チョキ" "パー"] #0:グー 1:チョキ 2:パー
 ser_len = pc_jan.length
 n = rand(ser_len)

 puts n 

 if n == 0
    puts "コンピューターはグーを出しました。"
 elsif n == 1
    puts "コンピューターはチョキを出ました。"
 elsif n == 2
    puts "コンピューターはパーを出しました。"
 end

 if my_jan == n 
    puts "あいこです。じゃんけんをやり直してください。"
 return janken_game = true

 elsif (my_jan == 0 && n == 1) || (my_jan == 1 && n == 2)||(my_jan == 2 && n == 0)
    puts "あなたの勝ちです。"

    puts "あっちむいて...."
    puts "方向を指し示してください。0(上) 1(右) 2(下) 3(左) "

    my_ind = gets.to_i

    until (my_ind == 0 || my_ind == 1 || my_ind == 2 || my_ind == 3)
    puts "0(上) 1(右) 2(下) 3(左) "
    my_ind = gets.to_i
    end

    if    my_ind == 0
        puts "あなたは上を差しました。"
    elsif my_jan == 1
        puts "あなたは右を差しました。"
    elsif my_jan == 2
        puts "あなたは下を差しました。"
    elsif my_jan == 3
        puts "あなたは左を差しました。"
    end

 pc_ind = %w["上" "右" "下" "左"] #0:上 1:右 2:下 3:左
 ind_len = pc_ind.length
 indn = rand(ind_len)

 if indn == 0
    puts "コンピューターは上を向きました。"
 elsif indn == 1
    puts "コンピューターは右を向きました。"
 elsif indn == 2
    puts "コンピューターは下を向きました。"
 elsif indn== 3
    puts "コンピューターは左を向きました。"
 end

 if my_ind == indn 
    puts "あなたの勝ちです。"
    exit
 else 
    puts "じゃんけんに戻ってください。"
    return janken_game = true
 end

 else 
    puts "あなたの負けです。"

    puts "あっちむいて...."
    puts "どっちを向きますか？0(上) 1(右) 2(下) 3(左) "

    my_ind = gets.to_i

    until (my_ind == 0 || my_ind == 1 || my_ind == 2 || my_ind == 3)
        puts "0(上) 1(右) 2(下) 3(左) "
        my_ind = gets.to_i
    end

    if my_ind == 0
        puts "あなたは上を向きました。"
        elsif my_ind == 1
        puts "あなたは右を向きました。"
        elsif my_ind == 2
        puts "あなたは下を向きました。"
        elsif my_ind == 3
        puts "あなたは左を向きました。"
    end

    pc_ind = %w["上" "右" "下" "左"] #0:上 1:右 2:下 3:左
    ind_len = pc_ind.length
    indn = rand(ind_len)

    if indn == 0
    puts "コンピューターは上を差しました。"
    elsif indn == 1
    puts "コンピューターは右を差しました。"
    elsif indn == 2
    puts "コンピューターは下を差しました。"
    elsif indn== 3
    puts "コンピューターは左を差しました。"
    end

    if my_ind == indn 
    puts "あなたの負けです。"
    exit
    else 
    puts "じゃんけんに戻ってください。"
    return janken_game = true
    end

 end

end 

janken_game = true

puts "じゃんけん...."

while janken_game do
    janken_game = janken
end 
    