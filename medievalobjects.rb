class Person
  attr_writer :first_name, :last_name, :full_name
end

class Player < Person
  def initialize health=20, strength=5, alive=false
    @health = health
    @strength = strength
    @alive = true if health > 0
  end

  def health
    @health
  end

  def strength
    @strength
  end

  def take_damage attack_strength
    @health -= attack_strength
  end

  def attack otherplayer
    otherplayer.take_damage @strength
  end
end

class Knight < Player
  def initialize health=50, strength =7, alive=false
    super
  end
end

class Wizard < Player
  def initialize health=20, strength =75, alive=false
    super
  end
end


rocky = Player.new
apollo = Player.new

merlin = Wizard.new
p merlin.attack rocky