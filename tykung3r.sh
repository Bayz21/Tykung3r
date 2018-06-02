#!/bin/bash
# Coded By Bayz21
function ceker() {
    target=$web/$1.$eks;
    cekurl=$(timeout 10 curl -s --write-out %{http_code} -A "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36" --output /dev/null $target);
    if [[ $cekurl =~ '200' ]] ; then
            echo "[FOUND] => $target";
			echo "$target" >> hasil_tykung.txt
else
            echo "[Not Found] $target";
fi
}
cat << "Bayz21"

██████╗  █████╗ ██╗   ██╗███████╗██████╗  ██╗
██╔══██╗██╔══██╗╚██╗ ██╔╝╚══███╔╝╚════██╗███║
██████╔╝███████║ ╚████╔╝   ███╔╝  █████╔╝╚██║
██╔══██╗██╔══██║  ╚██╔╝   ███╔╝  ██╔═══╝  ██║
██████╔╝██║  ██║   ██║   ███████╗███████╗ ██║
╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝╚══════╝ ╚═╝
---------------------------------------------
---------- The TyKung3r Shells V.1-----------
---------------------------------------------

Bayz21
echo -n "Masukan Webnya : " ;
read web
echo -n "Masukan list Shell : ";
read list
echo -n "Masukan Ektensi Shell : ";
read eks
echo "Scanning....";
for target in $(cat $list); do
    ceker $target;
done
nex=3
echo "1.Tykung Shell Lain";
echo "2.Buka Hasil Tykung";
echo -n "What do you want ? => ";
while [ $nex -eq 3 ]; do
read nex
if [ $nex -eq 1 ]; then
	bash tykung3r.sh
else
	if [ $nex -eq 2 ]; then
		cat hasil_tykung.txt
fi
fi
done
