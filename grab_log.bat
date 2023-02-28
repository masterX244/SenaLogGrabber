@echo off
set /p ip=Enter IP address of the Impulse Helmet: 
echo %ip%
echo START
wget -q --timeout=1 --post-file prepare.dat --no-check-certificate -o - -O - https://%ip%/cgi-bin/query.cgi
echo "PREPARED"
wget -q --timeout=1 --post-file line1.dat --no-check-certificate -o - -O - https://%ip%/cgi-bin/query.cgi
echo 1
wget -q --timeout=1 --post-file exec.dat --no-check-certificate -o - -O - https://%ip%/cgi-bin/query.cgi
echo exec
wget -q --timeout=1 --no-check-certificate -o - -O - https://%ip%/cgi-bin/get_log.sh