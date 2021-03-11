#No Ruby toda função devolve alguma coisa (tipo void )
#Linguagem interpretada

def daBoasVindas #def para funcao
    puts "Bem vindo ao jogo da advinhação \n \n"; # tô usando ';' só pra não ficar esquecendo quando for para outra linguagem. xD

    puts "Qual é o seu nome?"; #entrada
    
    nome = gets.strip; #saída >>> O '.strip' é usado para tirar os espaços em branco (tipo o enter)
    
    puts "Começaremos o jogo, " + nome + "\n";

    nome
end

def pedeDificuldade
    puts "Qual o nível de dificuldade que deseja? (De 1 à 5. 1 - Fácil  5 - Difícil)";
    dificuldade = gets.to_i;
end


def sorteiaNumeroSecreto(dificuldade)
    case dificuldade 
    when 1
        maximo = 30
    when 2
        maximo = 60
    when 3
        maximo = 100
    when 4
        maximo = 150
    else
        maximo = 200
    end

    puts "Escolhendo um número secreto entre 1 e #{maximo} \n";
    sorteado = rand(maximo) + 1; #Para número randomicos
    puts "Escolhido... que tal adivinhar o número secreto? \n \n ";
    sorteado #retorna o que esta na ultima linha (nem precisa do return)
end

def pedeUmNumero(chutes, tentativa, limiteDeTentativas)
    puts "Tentativa " + tentativa.to_s + " de " + limiteDeTentativas.to_s; # .to_s é um parse para Sring
    puts "Chutes até agora: #{chutes}"; # O '#{ }' serve para interpolar string. Tipo um tamplate string. (é mais usado)
    puts "Entre com o número: ";
    chute = gets.strip;
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

def joga(nome, dificuldade)
    

    numero_secreto = sorteiaNumeroSecreto dificuldade;

    pontosAteAgora = 1000;

    limiteDeTentativas = 5;

    chutes = [];

    for tentativa in 1..limiteDeTentativas
        
        chute = pedeUmNumero chutes, tentativa, limiteDeTentativas; #usar parenteses nos parametros é, geralmente, opcional
        chutes << chute; # o '<<' é o .push() do Ruby
        
        pontosAPerder = (chute - numero_secreto).abs/2.0; #Para usar o float tem que se usar o '.' depois do número. Tipo o 2.0 aí
        #O '.abs' retorna o número absoluto de um número
        
        pontosAteAgora -= pontosAPerder;
        
        if verificaSeAcertou(chute, numero_secreto)
            break
        end
    end  #O 'for' também tem 'end'... que doideira

    puts "Você ganhou #{pontosAteAgora} pontos"
end

def naoQuerJogar? #quando a função retorna um booleano é comum, em Ruby, que a função tenha um ponto de interrogação
    puts "Deseja jogar novamente? (S/N)"
    queroJogar = gets.strip
    naoQueroJogar = queroJogar.upcase == "N" #retorno booleano
end

nome = daBoasVindas; #chamada de funcao não precisa de '()'... hmmmm

dificuldade = pedeDificuldade;

loop do #loop eterno
    joga nome, dificuldade
    if naoQuerJogar?
        break
    end
end