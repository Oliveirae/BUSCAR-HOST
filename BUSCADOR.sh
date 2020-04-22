#!bin/bash
#Criado: 21/04/2020
#by: ∅LÏVEÏRÆ
#Instalação Concluída
clear
while :
do
#menu
clear
echo -e "\e[1;33m"
echo "+----------------------------------+"
echo "   + BUSCADOR DE HOST HTTP & SSL +  "
echo "+----------------------------------+"
echo -e "\e[1;32mV=1.0\e[1;36m Por ∅LÏVEÏRÆ"
echo ""
echo -e "\e[1;31m[1]\e[1;32m BUSCAR HOST & SSL"
echo -e "\e[1;31m[2]\e[1;32m MOSTRAR STATUS DA HOST"
echo -e "\e[1;31m[3]\e[1;32m GUARDAR HOSTS ENCONTRADAS"
echo -e "\e[1;31m[4]\e[1;32m VER MANUAL DE USUARIO"
echo -e "\e[1;31m[5]\e[1;32m VER CREDITOS AO CRIADOR"
echo -e "\e[1;31m[0]\e[1;32m SAIR"
echo ""
echo -e "\e[1;31mO que você deseja fazer?"
echo -n "Digite o numero da opção:"
read opcion
#listo menu
echo -e "\e[0m"
case $opcion in
1)echo ""
echo -n "HOST: ";
read HOST;
bash .scan.sh $HOST
echo ""
echo -e "\e[0m";
echo -e "\e[1;31mPressione ENTER para voltar ao menu inicial...!\e[0m";
read foo
;;
2)echo ""
echo "Checando o status da HOST...";
echo ""
bash .status.sh
echo ""
echo -e "\e[1;31mPresione ENTER para continuar...\e[0m"
read foo
;;
3)echo ""
echo -e "\e[1;33mCole os hosts para obter o status:\e[0m";
echo -e "\e[1;31mClique em CTRL + C para salvar e sair\e[0m";
echo -e "\e[1;36mHOST: \e[0m";
cat>lista-host.txt
;;
4)clear
echo ""
cat manual.txt
read foo;
;;
5)clear
echo ""
echo -e "\e[1;33mCREDITOS AO CRIADOR\e[0m"
echo ""
echo -e "\e[1;31m© 2018-2020 ∅LÏVEÏRÆ "
echo -e "\e[1;32m"
echo "TELEGRAM: https://t.me/OliveiraWS "
echo "BOT SOBRE SSH: https://t.me/oliveirae_bot "
echo ""
echo -e "\e[1;31mMENSAGEM DE ∅LÏVEÏRÆ\e[0m"
echo ""
echo -e "\e[1;36mQue a luz do Sol da sabedoria, ilumine a nossa vã ignorância\e[0m"
echo ""
echo ""
echo -e "\e[1;31mClique em ENTER para voltar ao menu inicial...\e"
read foo;
;;
0)clear
exit 0;;
#error
*)clear
echo "comando invalido...";
;;
esac
done
