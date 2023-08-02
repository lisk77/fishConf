functions -e fish_right_prompt; function fish_prompt

	set -l _time (date +"%T")
	set -l last_status $status
	set -l dir (pwd)
	set -l hst (hostname)
	
	set_color 5daeed
	echo -n $_time
	set_color 0080ff
	echo -n " "
	echo -n $USER
	set_color 499698
	echo -n "@"
	set_color 93a2a0
	echo -n $hst
	echo -n " "
	set_color 499698
	echo -n "|"
	echo -n " "
	
	set_color 97c475
	echo -n $dir
	set_color 5daeed
	echo -n " λ "

	set_color normal
end
