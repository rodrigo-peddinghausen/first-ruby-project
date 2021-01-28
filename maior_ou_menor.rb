puts "Bem vindo ao jogo da advinhação \n \n"; # tô usando ';' só pra não ficar esquecendo quando for para outra linguagem. xD

puts "Qual é o seu nome?"; #entrada

nome = gets; #saída

puts "Começaremos o jogo, " + nome + "\n";

puts "Escolhendo um número secreto entre 0 e 200 \n";
numero_secreto = 122;

puts "Escolhido... que tal adivinhar o número secreto? \n \n "
puts "Tentativa 1";
puts "Entre com o número: ";
chute = gets;
puts "Será que você acertou? Você chutou " + chute;

puts chute.to_i == numero_secreto; # O .to_i é um parse para interger