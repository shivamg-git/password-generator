def filter(list)
	list.select{|pass| (6..16).include?pass.length }
end

def combination(list)
	(1..list.length).flat_map{|n| list.repeated_permutation(n).map(&:join)}
end
####### Driver ########################
print "Enter keywords space seprated:"
list 			= gets.chomp.split(' ')
combi_all 		= combination(list)
filtered_pass 	= filter(combi_all)

file = File.open("pass.txt","w")
filtered_pass.each do |pass|
	file.write(pass+"\n")
end
file.close
`notepad pass.txt`























# (3..5).flat_map{|n| ('a'..'f').to_a.combination(n).map(&:join)}
