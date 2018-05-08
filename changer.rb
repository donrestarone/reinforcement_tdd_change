# class Changer
	
# 	def self.make_change(value)
# 		quarter = 25
# 		dime = 10
# 		penny = 1
# 		nickle = 5
# 		made_change = []
# 		denomination = 0
# 		if value % 5 == 0
# 		#if value.divmod(5)[1] == 0
# 			if value % 25 == 0
# 				#p 'its stopping at a quarter'  
# 				denomination = value / quarter 
# 				denomination.times {made_change.push quarter}

# 			elsif value % 10 == 0
# 				#p 'its stopping at a dime'
# 				denomination = value / dime
# 				denomination.times {made_change.push dime}

# 			else 
# 				p 'error 1'
# 			end

# 		elsif value.divmod(5)[1] > 0
# 			if value.divmod(5)[1] % 2 == 0 
# 				made_change.push nickle
# 				2.times {made_change.push penny}
# 			else 
# 				'error '
# 			end
# 		else 
# 			p 'error 2'
# 		end
# 		return made_change
# 	end

# end

# p Changer.make_change(7)

# #p 68.0.divmod(25)
# p 7.divmod(5)

# #p 10 % 10

class Changer 
	
	def self.make_change(value)
		coins = [25, 10, 5, 1]
		hand = []
		coins.each do |coin|
			while value >= coin
				value -= coin 
				hand.push coin
			end
		end 
		return hand
	end
end 