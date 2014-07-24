require 'set'

class Set
	def to_s
		print '[ '
		self.entries.each{|entry|
			print "#{entry.to_s} "
		}
		print ']'
	end
end

devs = ['bh', 'pb', 'mph', 'mi', 'cz']
pair_combos = []

devs.permutation.each {|perm|
	pair_combo = [].to_set
	
	while !perm.empty? do
		pair = perm.pop(2).to_set
		pair_combo.add(pair)
	end

	if pair_combos.select{|pc| pc.intersection(pair_combo).length > 1}.length == 0 then
		pair_combos.push(pair_combo)
	end
}

pair_combos.each {|pc|
	puts pc.to_s
}
