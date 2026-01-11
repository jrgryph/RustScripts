rem server
rem D:\steamcmd\steamcmd.exe +login anonymous +app_update 258550 validate +exit
rem pause

@echo off
set /p SEED=<seed.txt
set /p SIZE=<size.txt
RustDedicated.exe -server.ip IpHere -server.port 28015 -rcon.ip 127.0.0.1 -rcon.port 28016 -server.maxplayers 1 -server.hostname "server" -server.identity %SEED% -server.level "Procedural Map" -server.seed %SEED% -server.worldsize %SIZE% -ai.move false -ai.think false -heli.lifetimeminutes 0 -bradley.enabled False -server.radiation False -server.autouploadmap "False" -server.autouploadmapimages "False"
rem  -server.saveinterval 300 ^
rem  -server.globalchat true ^
rem  -server.description "Description Here" ^
rem  -server.headerimage "512x256px JPG/PNG headerimage link here" ^
rem  -server.url "Website Here"

rem  echo.
rem  echo Restarting server...
rem  timeout /t 5

rem goto loop
