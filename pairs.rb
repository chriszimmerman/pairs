require 'set'

devs = ['bh', 'pb', 'mph', 'mi']
pair_combos = []

devs.permutation.each {|perm|
	pair_combo = [].to_set
	
	while !perm.empty? do
		pair = perm.pop(2).to_set
		pair_combo.add(pair)
	end

	pair_combos.push(pair_combo)
}

pair_combos.uniq.each {|pc|
	p pc
}
