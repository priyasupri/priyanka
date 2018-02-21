
echo Input d
read a
echo Input c
read b
echo operater
read o
case $o  in
	+)
	       	echo `expr $a + $b` 
		;;

	-)

	echo `expr $a - $b`

       
	;;


/)
	echo `expr $a / $b`
	;;
	
%)
	echo `expr $a % $b`
	;;
	
*)
	echo invalid operator
	;;

esac



