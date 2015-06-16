$Special_char = ['@','_','#','$','&','%']

def combination(list)
	(1..list.length).flat_map{|n| list.repeated_permutation(n).map(&:join)}
end
