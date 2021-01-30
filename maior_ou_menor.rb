#No Ruby toda função devolve alguma coisa (tipo void )
#Linguagem interpretada


puts "Bem vindo ao jogo da advinhação \n \n"; # tô usando ';' só pra não ficar esquecendo quando for para outra linguagem. xD

puts "Qual é o seu nome?"; #entrada

nome = gets; #saída

puts "Começaremos o jogo, " + nome + "\n";

puts "Escolhendo um número secreto entre 0 e 200 \n";
numero_secreto = 122;
puts "Escolhido... que tal adivinhar o número secreto? \n \n "

limiteDeTentativas = 5;

for tentativa in 1..limiteDeTentativas
    puts "\n \n"
    puts "Tentativa " + tentativa.to_s + " de " + limiteDeTentativas.to_s # .to_s é um parse para Sring
    puts "Entre com o número: ";
    chute = gets;
    puts "Será que você acertou? Você chutou " + chute;

# O .to_i é um parse para interger
    acertou = chute.to_i == numero_secreto

    if acertou
        puts "acertou!"
        break
    else 
        maior = chute.to_i < numero_secreto
        if maior
            puts "O numero secreto é maior"
        else
            puts "O numero secreto é menor"
        end
    end
end  #O 'for' também tem 'end'... que doideira