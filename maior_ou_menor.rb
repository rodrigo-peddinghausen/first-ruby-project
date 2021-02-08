#No Ruby toda função devolve alguma coisa (tipo void )
#Linguagem interpretada

def daBoasVindas #def para funcao
    puts "Bem vindo ao jogo da advinhação \n \n"; # tô usando ';' só pra não ficar esquecendo quando for para outra linguagem. xD

    puts "Qual é o seu nome?"; #entrada
    
    nome = gets; #saída
    
    puts "Começaremos o jogo, " + nome + "\n";
end

def sorteiaNumeroSecreto
    puts "Escolhendo um número secreto entre 0 e 200 \n";
    sorteado = 122;
    puts "Escolhido... que tal adivinhar o número secreto? \n \n ";
    sorteado #retorna o que esta na ultima linha (nem precisa do return)
end

def pedeUmNumero(tentativa, limiteDeTentativas)
    puts "Tentativa " + tentativa.to_s + " de " + limiteDeTentativas.to_s; # .to_s é um parse para Sring
    puts "Entre com o número: ";
    chute = gets;
    puts "Será que você acertou? Você chutou " + chute;
    chute.to_i; # O .to_i é um parse para interger
end

def verificaSeAcertou(chute, numero_secreto)
    acertou = chute == numero_secreto;
    if acertou
        puts "Acertou!";
    else 
        maior = chute < numero_secreto;
        if maior
            puts "O numero secreto é maior";
        else
            puts "O numero secreto é menor";
        end
    end
    acertou
end

daBoasVindas; #chamada de funcao não precisa de '()'... hmmmm

numero_secreto = sorteiaNumeroSecreto;

limiteDeTentativas = 5;

for tentativa in 1..limiteDeTentativas
    
    chute = pedeUmNumero tentativa, limiteDeTentativas; #usar parenteses nos parametros é, geralmente, opcional
  
    if verificaSeAcertou(chute, numero_secreto)
        break
    end
end  #O 'for' também tem 'end'... que doideira