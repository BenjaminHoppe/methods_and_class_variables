class Zombie

  @@horde = []
  @@plauge_level = 10
  @@max_speed = 5
  @@max_strength = 8
  @@default_speed = 1
  @@default_strength = 3

  def self.all
    return @@hordex
  end

  def self.new_day

  end

  def self.some_die_off

  end

  def self.spawn
    @@plauge_level(rand)
    @@max_speed(rand)
    @@max_strength(rand)
    @@horde << @@plauge_level
  end

  def self.increase_plauge_level

  end

  def initialize(speed, strength)
    @zombie_speed = zombie_speed
    @zombie_strength = zombie_strength

      if zombie_speed > @@max_speed
        @zombie_speed = @@default_strength
      end

      if @strength > @@max_strength
        @strength = @@default_strength
      end
  end

  def encounter

  end

  def outrun_zombie?

  end

  def survive_attack?

  end



  end
