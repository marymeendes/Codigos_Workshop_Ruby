#Calcula média

#função que calcula a média
def avg(grades, numofgrades, weights)

	sum = 0;
	total = 0;

	for i in 0 .. numofgrades do

		sum += grades[i] * weights[i];
		total += weights[i];

	end

	return sum/total;	

end

#Cria um array de pesos
wgth = [2, 3, 4, 1];

#Cria e recebe um array de 5 posições em string
grades = STDIN.gets.split;

#Converte o array de strings para float
for i in (0 .. 3) do

	grades[i] = grades[i].to_f;

end


#Guarda a média
average = avg(grades, 3, wgth);

#Exibe a média
puts("Media: #{"%0.1f" % average}");

#Checa a aprovação
if (average >= 7.0)
	puts("Aluno aprovado.");

elsif (average < 5.0)
	puts("Aluno reprovado.");

else
	puts("Aluno em exame.");

	#Recebe uma string sem a quebra de linha e converte para float
	exam = (STDIN.gets.chomp).to_f;

	puts("Nota do exame:#{" %0.1f" % exam}");

	#recalcula média
	average = (average + exam)/2;

	#Verificação final
	if (average >= 5.0)
		puts("Aluno aprovado.");
	else
		puts("Aluno reprovado.");
	end

	#exibe média
	puts("Media final:#{" %0.1f" % average}");
end
