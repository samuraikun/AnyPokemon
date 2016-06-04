module AnyPokemon
  VERSION = {
    v1: '赤青緑',
    v2: '金銀',
    v3: 'ルビー・サファイア',
    v4: 'ダイヤモンド・パール・プラチナ',
    v5: 'ブラック・ホワイト'
  }

  class Pokemon
    attr_accessor :sex, :types, :move, :feature, :level, :life, :power_point

    def initialize(sex, types, move=[], feature, level, life)
      @sex = sex
      @types = types
      @move = move
      @feature = feature
      @level = level
      @life = life
    end

    def show_attack
      @move
    end

    def attack(move)
      @move if @move.include?(move)
    end
  end

  class Attack_Status_v1
    SUPER_EFFECTIVE  = 1  # こうかはばつぐんだ！
    NORMAL_EFFECTIVE = 0  # ふつう
    NOT_EFFECTIVE    = -1 # こうかはいまひとつのようだ
  end
end

Types = [
  NORMAL = 'normal',
  FIRE = 'fire',
  GRASS = 'GRASS',
  WATER = 'water',
  ELECTRIC = 'electric',
  FLYING = 'flying',
  BUG = 'bug',
  DARK = 'dark',
  DRAGON = 'dragon',
  FIGHTING = 'fighting',
  GHOST = 'ghost',
  Ground = 'ground',
  ICE = 'ice',
  ROCK = 'rock',
  POISON = 'poison',
  PHYCHIC = 'phychic',
  STEEL = 'steel'
]

def battle_start(enemy_type:, name:, **enemy)
  p "#{enemy_type}の#{name}が現れた。"
  action = ['たたかう', 'にげる', 'どうぐ', 'ポケモン']

  p 'アクションを決めてください。'
  action.each do |i|
    print i + ' '
  end

end

hitokage = AnyPokemon::Pokemon.new('♂', 'electric', ['でんこうせっか', '電気ショック', 'しっぽをふる', '10万ボルト'], 'Cool', 17, 57)
p hitokage.attack('10万ボルト')

battle_start(enemy_type: '闇エンジニア', name: 'キム')
