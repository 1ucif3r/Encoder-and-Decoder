#!/bin/bash

logo()
{                        
    echo ""
    echo -e "\e[91m\e[5m┏━╸┏┓╻┏━╸┏━┓╺┳┓┏━╸┏━┓   \e[25m\e[93m╻ ╻   \e[5m\e[92m╺┳┓┏━╸┏━╸┏━┓╺┳┓┏━╸┏━┓"
    echo -e "\e[91m\e[5m┣╸ ┃┗┫┃  ┃ ┃ ┃┃┣╸ ┣┳┛   \e[25m\e[93m┏╋┛    \e[5m\e[92m┃┃┣╸ ┃  ┃ ┃ ┃┃┣╸ ┣┳┛"
    echo -e "\e[91m\e[5m┗━╸╹ ╹┗━╸┗━┛╺┻┛┗━╸╹┗╸   \e[25m\e[93m╹ ╹   \e[5m\e[92m╺┻┛┗━╸┗━╸┗━┛╺┻┛┗━╸╹┗╸"
    echo -e "\e[25m\e[93m        A SIMPLE BASE64 ENCODER AND DECODER"
}

menu()
{
    echo ""
    echo -e "\e[93m[01] Encode BAS64"
    echo -e "\e[93m[02] Decode BAS64"
    echo -e "\e[93m[00] Exit "
    echo ""
}
close()
{
    clear
    exit
}

logo
menu
read -p "Choose process: " choose

if [[ $choose == "01" || $choose == "1" ]];
then
clear
logo
echo ""
read -p "Enter text to encode: " text
echo ""
echo $text | base64
elif [[ $choose == "02" || $choose == "2" ]];
then
clear
logo
echo ""
read -p "Enter hash to encode: " hashes
echo ""
echo $hashes | base64 --decode
fi
