class Person
  attr_writer :first_name, :last_name, :full_name
end

class Player < Person
  attr_accessor :health, :strength

  def initialize health=20, strength=5, alive = true
    @health = health
    @strength = strength
    @alive = true
  end

  def alive
    if health > 0
      @alive = true
    else
      @alive = false
    end
  end

  def take_damage attack_strength
    @health -= attack_strength
  end

  def attack otherplayer
    otherplayer.take_damage @strength
  end
end

class Knight < Player
  def initialize health=50, strength =7, alive=true
    super
  end
end


class Wizard < Player
  def initialize health=20, strength =75, alive=true
    super
  end
end


daryl = Player.new 100, 1
carmen = Player.new 100, 99

rocky = Player.new
apollo = Player.new


merlin = Wizard.new
p merlin.first_name