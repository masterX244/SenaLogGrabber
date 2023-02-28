@echo off
set /p ip=Enter IP address of the Impulse Helmet: 
echo %ip%
echo START
REM wget -q --timeout=1 --post-file prepare.dat --no-check-certificate -o - -O - https://%ip%/cgi-bin/query.cgi
REM echo "PREPARED"
REM wget --timeout=1 --tries=1 --post-file line1.dat --no-check-certificate -o - -O - 
curl --max-time 10 --insecure https://%ip%/cgi-bin/query.cgi --data-binary @line1.dat 
echo 1
curl --max-time 10 --insecure https://%ip%/cgi-bin/query.cgi --data-binary @exec.dat 
echo exec
curl --max-time 10 --insecure https://%ip%/cgi-bin/get_log.sh