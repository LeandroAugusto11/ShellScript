#!/bin/bash 

cat << "EOF"
dddddddd                 
BBBBBBBBBBBBBBBBB                                                    VVVVVVVV           VVVVVVVV iiii                               d::::::d                 
B::::::::::::::::B                                                   V::::::V           V::::::Vi::::i                              d::::::d                 
B::::::BBBBBB:::::B                                                  V::::::V           V::::::V iiii                               d::::::d                 
BB:::::B     B:::::B                                                 V::::::V           V::::::V                                    d:::::d                  
  B::::B     B:::::B    eeeeeeeeeeee       mmmmmmm    mmmmmmm         V:::::V           V:::::Viiiiiiinnnn  nnnnnnnn        ddddddddd:::::d    ooooooooooo   
  B::::B     B:::::B  ee::::::::::::ee   mm:::::::m  m:::::::mm        V:::::V         V:::::V i:::::in:::nn::::::::nn    dd::::::::::::::d  oo:::::::::::oo 
  B::::BBBBBB:::::B  e::::::eeeee:::::eem::::::::::mm::::::::::m        V:::::V       V:::::V   i::::in::::::::::::::nn  d::::::::::::::::d o:::::::::::::::o
  B:::::::::::::BB  e::::::e     e:::::em::::::::::::::::::::::m         V:::::V     V:::::V    i::::inn:::::::::::::::nd:::::::ddddd:::::d o:::::ooooo:::::o
  B::::BBBBBB:::::B e:::::::eeeee::::::em:::::mmm::::::mmm:::::m          V:::::V   V:::::V     i::::i  n:::::nnnn:::::nd::::::d    d:::::d o::::o     o::::o
  B::::B     B:::::Be:::::::::::::::::e m::::m   m::::m   m::::m           V:::::V V:::::V      i::::i  n::::n    n::::nd:::::d     d:::::d o::::o     o::::o
  B::::B     B:::::Be::::::eeeeeeeeeee  m::::m   m::::m   m::::m            V:::::V:::::V       i::::i  n::::n    n::::nd:::::d     d:::::d o::::o     o::::o
  B::::B     B:::::Be:::::::e           m::::m   m::::m   m::::m             V:::::::::V        i::::i  n::::n    n::::nd:::::d     d:::::d o::::o     o::::o
BB:::::BBBBBB::::::Be::::::::e          m::::m   m::::m   m::::m              V:::::::V        i::::::i n::::n    n::::nd::::::ddddd::::::ddo:::::ooooo:::::o
B:::::::::::::::::B  e::::::::eeeeeeee  m::::m   m::::m   m::::m               V:::::V         i::::::i n::::n    n::::n d:::::::::::::::::do:::::::::::::::o
B::::::::::::::::B    ee:::::::::::::e  m::::m   m::::m   m::::m                V:::V          i::::::i n::::n    n::::n  d:::::::::ddd::::d oo:::::::::::oo 
BBBBBBBBBBBBBBBBB       eeeeeeeeeeeeee  mmmmmm   mmmmmm   mmmmmm                 VVV           iiiiiiii nnnnnn    nnnnnn   ddddddddd   ddddd   ooooooooooo   
                                                                                                                                                             
                                                                                                                                                             
                                                                                                                                                       
EOF

#1 Criação de variavél que pega a Data de Hoje com o formato de DD/MM/AAAA, é imprimir na tela com uma mensagem 
DATE="A Data de hoje é: $(date +%F)" 
echo "$nome_leandro" 
echo "$DATE" 

#2 Criação de variavél que pega a Hora Atual com o formato de HH:MM, é imprimir na tela com uma mensagem 
HORA="A Hora é: $(date +%H:%M)"
echo $HORA

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


ANO=$(date +"%Y")

read -p "Digite a sua idade: " IDADE;

echo "$usuario, você nasceu no ano de $(($ANO - $IDADE))"
