class Arena  
	
  def self.duel(hero1, hero2)
	defend = [hero1, hero2].sample
	  if defend === hero1
    	attack(hero2, hero1)
	  elsif defend === hero2
		attack(hero1, hero2)
	  end
	end	

	def self.attack(defender, attacker)
	  critdamge = attacker.critd.sample
	  attacker.dmg = attacker.dmg + critd
	  
	  if defender.armor > attacker.dmg	
		puts "#{defender.name} has #{defender.armor = defender.armor - attacker.dmg} armor left"
		defender.armor = defender.armor
	  elsif defender.armor < attacker.dmg
	    if defender.hp === 0
          puts "#{defender.name} is dead"
		else
		  puts "#{defender.name} has #{defender.hp = (defender.armor + defender.hp) - attacker.dmg} hp left"
		end
	  elsif defender.hp < 0
		  puts "#{defender.name} is already dead"
	  end
	end

end

class Hero
	attr_accessor :hp, :armor
	attr_reader :critd, :name, :dmg
	
	def initialize
		@hp = hp
		@armor = armor
		@dmg = dmg
		@name = name
		@critd = critd
	end
 end


class Warrior < Hero
	def initialize
		@hp = 100
		@armor = 25
		@dmg = 25
		@name = 'Reaper'
		@critd = [125, 0, 0, 0]
	end
	
end

class Healer < Hero
	def initialize
		@hp = 60
		@armor = 0
		@dmg = 5
		@name = 'Mercy'
		@critd = [20, 0, 0, 0]
	end
end

class Mage < Hero
	def initialize
		@hp = 40
		@armor = 0
		@dmg = 100
		@name = 'Moira'
		@critd = [100, 0]
	end
end

class Tank < Hero
	def initialize
		@hp = 100
		@armor = 100
		@dmg = 0.5
		@name = 'Rein'
		@critd = [50, 0]
	end
end

