class Player
  def hand
    puts "数字を入力してください。"
    puts "0 : グー\n1 : チョキ\n2 : パー"
    hand = gets.chomp
    while true
      unless hand == "0" || hand == "1" || hand == "2"
        puts "0〜2の数字を入力してください。"
        hand = gets.chomp
      else
        return hand.to_i
      end
    end
  end
end
class Enemy
  def hand
    enemy_hand = rand(3)
  end
end
class Janken
  def pon(player_hand, enemy_hand)
    jankens = ["グー", "チョキ", "パー"]
    if (player_hand - enemy_hand + 3) % 3 == 0
      puts "相手の手は#{jankens[enemy_hand]}です。あいこです。"
      return true
    elsif (player_hand - enemy_hand + 3) % 3 == 2
      puts "相手の手は#{jankens[enemy_hand]}です。あなたの勝ちです。"
    elsif (player_hand - enemy_hand + 3) % 3 == 1
      puts "相手の手は#{jankens[enemy_hand]}です。あなたの負けです。"
    else
      puts "0〜2の数字を入力してください。"
      return true
    end
  end
end
class GameStart
  def self.jankenpon
    player = Player.new
    enemy = Enemy.new
    janken = Janken.new
    next_game = true
    while next_game
      next_game = janken.pon(player.hand, enemy.hand)
    end
  end
end
GameStart.jankenpon
