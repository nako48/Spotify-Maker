#!/bin/bash
RED='\033[0;31m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
ORANGE='\033[0;33m' 
PUR='\033[0;35m'
GRN="\e[32m"
WHI="\e[37m"
NC='\033[0m'
echo ""
printf "$RED           ####################################    $GRN\n"
printf "$RED           ####################################    $GRN\n"
printf "$RED           #######                      #######    $GRN\n"
printf "$RED           #######                      #######    $GRN\n"
printf "$RED           ####### www.tatsumi-crew.net #######        \n"
printf "$RED           ###############      ###############        \n"
printf "$RED           ###############      ###############        \n"
printf "$RED           ###############      ###############        \n"
printf "$WHI           ###############      ###############        \n"
printf "$WHI           #######    ####      ####    #######        \n"
printf "$WHI           #######    ####      ####    #######        \n"
printf "$WHI           #######    ##############    #######        \n"
printf "$WHI           #######                      #######        \n"
printf "$WHI           ####################################        \n"
printf "$WHI           ####################################        \n"
printf "$NC           ------------------------------------        \n"  
printf "$NC           Spotify Create Account - NakoCoder's        \n"  
printf "$NC           ------------------------------------        \n"  
cat <<EOF
EOF
register(){
	rand1=$(echo $((RANDOM%9999)))
	curl=$(curl -s "https://spclient.wg.spotify.com:443/signup/public/v1/account/" --data "iagree=true&birth_day=12&platform=Android-ARM&creation_point=client_mobile&password=$2&key=142b583129b2df829de3656f9eb484e6&birth_year=2000&email=$1_$rand1@nakocoders.org&gender=male&app_version=849800892&birth_month=12&password_repeat=$2")
	status=$(echo $curl | grep -Po '(?<=status":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
	if [[ $status =~ "1" ]]; then
		printf "Pendaftaran Berhasil => $1_$rand1@nakocoders.org|$2\n"
		echo "Pendaftaran Berhasil => $1_$rand1@nakocoders.org|$2" >> hasil-reg.tmpek
	else
		printf "Gagal Pendaftaran => $1_$rand1@nakocoders.org|$2\n"
	fi
}
read -p "Jumlah : " limit
read -p "Masukan Username Tanpa (@gmail.com) : " username
read -p "Masukan Password : " password
for (( i = 0; i < $limit; i++ )); do
	register $username $password
done