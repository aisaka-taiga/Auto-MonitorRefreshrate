@echo off
::wmic PATH Win32_videocontroller get currentrefreshrate
IF EXIST hz_manager.bat echo F | XCOPY "hz_manager.bat" "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\hz_manager.bat" /f /s /h /e /d /y
IF EXIST ChangeScreenResolution.exe echo F | XCOPY "ChangeScreenResolution.exe" "%userprofile%\ChangeScreenResolution.exe" /f /s /h /e /d /y
::for /f %%i in ('wmic path Win32_VideoController get CurrentHorizontalResolution^,CurrentVerticalResolution /value ^| find "="') do set "%%i"
::echo your screen is %CurrentHorizontalResolution% * %CurrentVerticalResolution% pixels
%userprofile%\ChangeScreenResolution.exe /f=100 /d=0
exit
