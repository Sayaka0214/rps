class Jankengame
    
    def initialize 
        @game_result = ""
    end   
    
    puts "じゃんけん"
    def janken
        puts "0(グー)1(チョキ)2(パー)3(戦わない)"
        player_hand = gets.to_i
        program_hand = rand(3)
        jankens = ["グー", "チョキ", "パー"]
        puts "ホイ！"
        puts "---------------"
        puts "あなた：#{jankens[player_hand]}"
        puts "相手  ：#{jankens[program_hand]}"

        win = (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
        draw = player_hand == program_hand
        # lose = !(win && draw)
        
        if draw
            puts "---------------"
            puts "あいこで"
            @game_result = "draw"
        elsif win
            puts "▶︎あなたの勝ち"
            puts "---------------"
            @game_result = "win"
        else 
            puts "▶︎あなたの負け"
            puts "---------------"
            @game_result = "lose"
        end  
    
    if @game_result == "draw"
        janken
    elsif @game_result == "win"
        puts "あっち向いて"
        puts "0(上) 1(下) 2(右) 3(左)"
        player_finger = gets.to_i
        program_face = rand(4)
        directions = ["上", "下", "右", "左"]
        puts "ホイ"
        puts "---------------"
        if player_finger == program_face
            puts "あなた：#{directions[player_finger]}"
            puts "相手  ：#{directions[program_face]}"
            puts "▶︎あなたの勝ち"
            puts "---------------"
        else
            puts "あなた：#{directions[player_finger]}"
            puts "相手  ：#{directions[program_face]}"
            puts "▶︎残念！"
            puts "---------------"
        end        
    elsif @game_result == "lose"
        puts "相手　　：あっち向いて"
        puts "あなた  ：0(上) 1(下) 2(右) 3(左)"
        player_face= gets.to_i
        program_finger = 1
        directions = ["上", "下", "右", "左"]
        puts "ホイ"
        puts "---------------"
        if player_face == program_finger
            puts "あなた：#{directions[player_face]}"
            puts "相手  ：#{directions[program_finger]}"
            puts "▶︎あなたの負け"
            puts "---------------"
        else
            puts "あなた：#{directions[player_face]}"
            puts "相手  ：#{directions[program_finger]}"
            puts "▶︎勝敗つかず"
            puts "---------------"
        end    
    end
    end

end
jankengame = Jankengame.new
jankengame.janken