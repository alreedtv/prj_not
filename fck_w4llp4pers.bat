@echo off
@echo  ��⠭��騪 SUPERSANEK_WALLPAPERHACK ��� ��� ����饭..
powershell write-host -BackgroundColor White -ForegroundColor Black ��⠭�������� ।���� ��㯯���� ����⨪... ��������, ��������.
dir /b C:\Windows\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~3*.mum >find-gpedit.txt
dir /b C:\Windows\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~3*.mum >>find-gpedit.txt
for /f %%i in ('findstr /i . find-gpedit.txt 2^>nul') do dism /online /norestart /add-package:"C:\Windows\servicing\Packages\%%i"
@echo ������� ��㯯���� ����⨪ ��⠭�����..
mkdir C:\PRJ_Notification
curl -o C:\PRJ_Notification\WLPP_Update.bat "https://raw.githubusercontent.com/alreedtv/prj_not/main/WLLPP_Update.bat" 
curl -o C:\PRJ_Notification\wallpaper.png "https://raw.githubusercontent.com/alreedtv/prj_not/main/wallpaper.png"
@echo ���� wallpaper.png ����㦥�.
schtasks /create /ru "����������� ���" /rp FsO28821 /sc daily /tn ScheduledWLPPR_UPD /tr "C:\PRJ_Notification\WLLPP_Update.bat" /st 22:25 /np /rl HIGHEST
powershell write-host -BackgroundColor White -ForegroundColor Black ��⠭������ ���������� ���������� �����.
powershell write-host -BackgroundColor Yellow -ForegroundColor Black ���ᨡ�, �� ��ࠫ� ReedTech! �ᥣ� ���ண�!
@pause
exit