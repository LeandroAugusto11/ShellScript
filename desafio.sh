#!/bin/bash 

#1 Criação de variavél que pega a Data de Hoje com o formato de DD/MM/AAAA, é imprimir na tela com uma mensagem 
DATE="A Data de hoje é: $(date +%F)" 
echo "$nome_leandro" 
echo "$DATE" 

#2 Criação de variavél que pega a Hora Atual com o formato de HH:MM, é imprimir na tela com uma mensagem 
HORA="A Hora é: $(hora +%r)" 
echo "$HORA" 

#3 Criação de variavél e teste Lógico que analisa se é verdadeiro o Diretório /tmp, é imprimir na tela com uma mensagem 
if [ -e "/tmp" ] 
then 
echo " O diretorio /tmp existe" 
else 
echo " O diretorio /tmp não existe" 
fi 

#4 Criação de variavél e teste Lógico que verificar se existe o Diretório /tmp/seu_nome, caso não exista, fazer a sua criação 
if [ -e "/tmp/leandro" ] 
then 
echo " O diretorio /tmp/leandro existe" 
else 
echo " O diretorio /tmp/leandro não exite agora o criaremos" 
mkdir /tmp/leandro 
echo "Pronto" 
fi 

#5  Criação de variavél e teste Lógico que verifica se existe o Arquivo seu_nome.txt dentro do Diretório /tmp/seu_nome, caso não exista, fazer a sua criação 
if [ -e /tmp/leandro/leandro.txt ] 
then 
echo "Arquivo /tmp/leandro/leandro.txt existe." 
else 
echo "Arquivo /tmp/leandro/leandro.txt não existe. Agóra será criado." 
touch /tmp/leandro/leandro.txt 
echo "Pronto" 
fi
______ ____ ____ _ __ _ |_ _ \ |_ _| |_ _|(_) | ] | | | |_) | .---. _ .--..--. \ \ / / __ _ .--. .--.| | .--. | | | __&apos;. / /__\\[ `.-. .-. | \ \ / / [ | [ `.-. |/ /&apos;`\&apos; |/ .&apos;`\ \| | _| |__) || \__., | | | | | | \ &apos; / | | | | | || \__/ || \__. ||_| |_______/ &apos;.__.&apos;[___||__||__] \_/ [___][___||__]&apos;.__.;__]&apos;.__.&apos; (_) 

usuario=$(who | awk &apos;{print $1}&apos;)
ano=$(date +"%Y")

read -p "Digite a sua idade: " idade;

echo "$usuario, você nasceu no ano de $(($ano - $idade))"
