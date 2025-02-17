@echo off
IF NOT EXIST Titanfall2.exe (
    echo "Installer executed in the wrong folder, make sure you are running this in your Titanfall2 install folder!"
    pause
    exit
)
curl -LO https://github.com/R2Northstar/Northstar/releases/download/v1.11.1/Northstar.release.v1.11.1.zip
tar -xf Northstar.release.v1.11.1.zip
del discord_game_sdk.dll
rmdir /s /q "R2Northstar/plugins/DiscordRPC.dll"
rmdir /s /q "R2Northstar/mods/Northstar.Client"
rmdir /s /q "R2Northstar/mods/Northstar.Custom"
rmdir /s /q "R2Northstar/mods/Northstar.CustomServers"
cd R2Northstar/mods
curl -LO https://github.com/ChiDev74323/TF2-Auto-Matchmaking-Mod/releases/download/v1.0.3/TimeIsUnending.AutoMatchmaking.1.0.3.zip
tar -xf TimeIsUnending.AutoMatchmaking.1.0.3.zip
del TimeIsUnending.AutoMatchmaking.1.0.3.zip
cd ../../..
echo -multiple -norestrictservercommands +ns_has_agreed_to_send_token 2 > ns_startup_args.txt
del Northstar.release.v1.11.1.zip
pause
