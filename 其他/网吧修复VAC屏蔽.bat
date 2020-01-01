@echo off
color a
title CSGO网吧VAC＆VPN修复工具     -by 百度贴吧 狙击手Ricky
echo  ◤━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━◥
echo  ┃                                                                        ┃
echo  ┃    ███████  ███████    ███████  ███████    ┃
echo  ┃    ██            ██           ● ██            ██      ██    ┃
echo  ┃    ██            ███████    ██  ████  ██      ██    ┃
echo  ┃    ██                      ██ ● ██      ██  ██      ██    ┃
echo  ┃    ███████  ███████    ███████  ███████    ┃
echo  ┃                                                                        ┃
echo  ◣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━◢
echo                            ┏━━━━━━━━━━┓
echo           百度贴吧☆CSGO吧 ┃ 网吧解除VAC屏蔽工具┃ 狙击手Ricky 荣誉出品
echo                            ┗━━━━━━━━━━┛                   
sc config Netman start= AUTO
sc start Netman
sc config rasman start= AUTO
sc start rasman
sc config tapisrv start= AUTO
sc start tapisrv
sc config mpssvc start= AUTO
sc start mpssvc
netsh advfirewall set allprofiles state on
bcdedit.exe /set {current} nx alwayson
cls
echo  ◤━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━◥
echo  ┃                                                                        ┃
echo  ┃    ███████  ███████    ███████  ███████    ┃
echo  ┃    ██            ██           ● ██            ██      ██    ┃
echo  ┃    ██            ███████    ██  ████  ██      ██    ┃
echo  ┃    ██                      ██ ● ██      ██  ██      ██    ┃
echo  ┃    ███████  ███████    ███████  ███████    ┃
echo  ┃                                                                        ┃
echo  ◣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━◢
echo                            ┏━━━━━━━━━━┓
echo           百度贴吧☆CSGO吧 ┃ 网吧解除VAC屏蔽工具┃ 狙击手Ricky 荣誉出品
echo                            ┗━━━━━━━━━━┛   
echo.
echo 请输入你的Steam文件夹所在位置,然后按回车 
echo  (例: d:\program Files\steam  格式一定要正确，若出错请重启本软件!)
echo.
set /p steampath=
cd /d %steampath%\bin
echo.
echo == 操作中，请等待 ==
echo.
steamservice.exe /install
echo.
steamservice.exe /repair
echo.
echo.
echo ==    操作完成    ==
echo.
pause
