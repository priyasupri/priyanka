echo "enter the file name"
read FILE
if [ -f $FILE ]; then
	    cp $FILE $FILE.bak
	        echo "file successfully backed up"
	else
		    echo "file does not exists"
		        exit 1
		fi

		exit 0
