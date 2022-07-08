@echo off
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
copy %~dp0\hosts C:\Windows\System32\drivers\etc\
ipconfig /flushdns
echo "Finished! Please restart the game."
pause
