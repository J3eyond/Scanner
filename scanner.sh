#!/bin/bash

path=""
reporter_path=""
nuclei_template_path=""

echo "[*] Updating."
httpx -up
sudo nuclei -update
sudo nuclei -ut

echo "[*] Scanning."

sudo httpx -l $path/domains.txt -sc --probe -title | grep 'SUCCESS' | awk {'print $1'} | nuclei -t $nuclei_template_path  -as > $path/output/scanner_$(date +%F).txt  
sudo httpx -l $path/ip.txt -sc --probe -title | grep 'SUCCESS' | awk {'print $1'} | nuclei -t $nuclei_template_path -as >> $path/output/scanner_$(date +%F).txt


# diff
echo "------------------------scanner------------------------" >> $path/diff/diff_scanner_$(date +%F).txt
echo " " >> $path/diff/diff_scanner_$(date +%F).txt
echo " " >> $path/diff/diff_scanner_$(date +%F).txt

diff $path/output/scanner_$(date -d '7 days ago' +%F).txt $path/output/scanner_$(date +%F).txt >> $path/diff/diff_scanner_$(date +%F).txt
sleep 5


cp $path/diff/diff_scanner_$(date +%F).txt $reporter_path/reports/
sleep 3

python3 $reporter_path/reporter.py
sleep 3

echo "[*] Deleting report."
rm $reporter_path/reports/diff_scanner_$(date +%F).txt
echo "[+] Done."
