def compara(s1, s2)

	maiorSubstring = 0
	l = s2.length - 1

	for x in 0..l do
		for y in 1..l do
			if (s1.index(s2[x,y])) != nil then
				if maiorSubstring < (y - (x-1)) then
					maiorSubstring = (x == 0)? (y-x):(y - (x-1))
				end
			end
		end
	end

	return maiorSubstring

end

casos = Array.new

#while (entrada = STDIN.gets) != "\n"
while (entrada = STDIN.gets) != nil
	casos.push(entrada.chomp)
end

i = 0

while i < casos.length do 
	puts compara(casos[i], casos[i+1])
	i += 2;
end
