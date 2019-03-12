clear

function guessgame
{
    local number=$1
    while true; 
    do
		echo "Guess the number of files in the directory" 
		echo "(Key in the value and press Enter)."

        local input
        read input

        if [ $input -lt $number ]; then
            echo "Your estimate is too low."
        elif [ $input -gt $number ]; then
            echo "Your estimate is too high."
        elif [ $input -eq $number ]; then
            echo "Congratulations! $number is the correct count!"
            break
        else
        	echo "You have entered an invalid value. Please try again."    
            break
    fi
    done
}

guessgame $( ls -l | wc -l )
