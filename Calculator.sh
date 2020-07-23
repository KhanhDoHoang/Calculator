#!/bin/bash
#Assignment: Lab 9
#Name: Do Hoang
#Student number: 040961749
#Lab section: 310
#A script file for calculating
#mycalc.sh
#2020-03-24

let temp=0

add (){
	let num1=${numbers[0]}
	let num2=${numbers[2]}
	let temp=($num1 + $num2);
	return temp;
}
subtract (){
	let num1=${numbers[0]}
	let num2=${numbers[2]}
	let temp=($num1 - $num2);
	return temp;
}

echo -n "my calc "
read number

numbers=( $number ) #read the whole string

case "${numbers[1]}" in
"+")
	add ${numbers[0]} ${numbers[2]}
	sum=$temp	#read the previous return in function add
	echo "${numbers[0]} plus ${numbers[2]} equals $sum"
	;;
"-")
	subtract ${numbers[0]} ${numbers[2]}
	subtraction=$temp	#read the previous return in function add
	echo "${numbers[0]} subtract ${numbers[2]} equals $subtraction"
	;;
*);;
esac

sleep 3
clear

choice=n
while [ "$choice" != "C" ] && [ "$choice" != "c" ]
do
	echo "Menu 1"
	echo "C) Calculation"
	echo "X) Exit"
	read choice
	
	if [ "$choice" == "X" ] || [ "$choice" == "x" ]
	then 
		exit 0
	fi
done

sleep 2
clear

echo -n "Enter an integer or X to exit "
read secchoice

if [ "$secchoice" == "X" ] && [ "$secchoice" == "x" ]
then 
	exit 0
fi

clear

echo "Menu 3"
echo "+) Add"
echo "-) Subtract"
read thirdchoice

if [ "$thirdchoice" == "X" ] && [ "$thirdchoice" == "x" ]
then 
	exit 0
fi

#Delete whole array then create new one
unset numbers
numbers=( $secchoice ) #Assign $secchoice to new array
numbers+=("pace") #Assign random word for position array[1]==>dont need

clear

case "$thirdchoice" in
"+")
	read -p "Enter integer " fourthchoice
	let num2=fourthchoice #Assign to a number
	numbers+=( $num2 ) #Assign $num2 to new array as array[3]
	add ${numbers[0]} ${numbers[2]}
	sum=$temp #read the previous return in function add
	echo "${numbers[0]} plus ${numbers[2]} equals $sum"
	;;
"-")
	read -p "Enter integer " fourthchoice
	let num2=fourthchoice
	numbers+=( $num2 )
	add ${numbers[0]} ${numbers[2]}
	subtraction=$temp #read the previous return in function add
	echo "${numbers[0]} plus ${numbers[2]} equals $subtraction"
	;;
*);;
esac

sleep 3
