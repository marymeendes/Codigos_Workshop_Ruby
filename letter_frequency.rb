#Questão URI 1255

#Realiza a contagem de frequências através de uma hash onde a letra é a chave e sua frequência é o valor
def letter_count(str)

	#converte para caixa baixa;
	str = str.downcase;

  	#Hash vazio
  	counts = {} 	#HASH, NÃO É UM ARRAY

 	#Loop entre os caracteres da string
  	str.each_char do |char|

    	#se o char é um espaço então pula a iteração
    	next if char == " "

    	#Se o caracter não existe, inserimos a chave char (caractere) com valor 0
    	counts[char] = 0 unless counts.include?(char)

    	#puts char; #Veja que char é um caractere mesmo!

    	#Se a chave existe, é acessado o valor da sua chave, e é incrementado
    	counts[char] += 1

  	end

  	#Retorna um hash de letras e frequencias
  	return counts

end

#Retorna as letras de maior frequência em ordem
def highest_letters_count(h)

	#Recebe o maior elemento->par(chave, valor), ou seja, o de maior valor, usando max_by
	#Definimos o par key, value e queremos o máximo value
	highest = h.max_by{|key, value| value};

	#p highest; #veja que highest é um Hash é um par (key, value)

	#ordena o hash pelas chaves
	h = h.sort;

	#String vazia com as letras mais frequentes
	most_frequent_letters = "";


	#Percorre cada item do hash
	h.each do |element|

		#Se o valor do elemento é igual ao maior
		#lembrando que elemento é um par (key, value), e value é o elemento de índice 1
		if (element[1] == highest[1])

			#Adiciona aa string cada letra
			most_frequent_letters << element[0];
		
		end

	end

	return most_frequent_letters;
	

end

#puts letter_count("Teste"); #Veja que não é um array normal e sim uma hash

#Número de casos
cases = STDIN.gets.chomp.to_i;

#Cria um array de strings vazio
string = Array.new;

#Guarda um array de strings
for x in (1..cases)

	#Adiciona ao array cada string até o "\n"
	string.push(STDIN.gets.chomp);
end

#Enquanto há casos
for x in (0..cases - 1)

	#Recebe hash das letras
	h = letter_count(string[x]);

	#printa o array de letras
	puts highest_letters_count(h).to_s;

	cases -= 1 ;

end
