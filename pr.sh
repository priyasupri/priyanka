echo Enter students marks
read r
if [$r -gt 0]
then
	echo A grade
else
	if[$r -gt 90]
	then
		echo B  grade
	else
		if[$r -gt 80]
		then
			echo c grade
		else
			echo fail
		fi
	fi
fi

:wq

				
					
