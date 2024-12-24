@echo off
@echo  Установщик SUPERSANEK_WALLPAPERHACK для ОПС запущен.
powershell write-host -BackgroundColor White -ForegroundColor Black Устанавливаем редактор групповых политик... Пожалуйста, подождите.
dir /b C:\Windows\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~3*.mum >find-gpedit.txt
dir /b C:\Windows\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~3*.mum >>find-gpedit.txt
for /f %%i in ('findstr /i . find-gpedit.txt 2^>nul') do dism /online /norestart /add-package:"C:\Windows\servicing\Packages\%%i"
@echo Редактор групповых политик установлен.
mkdir C:\PRJ_Notification
curl -o C:\PRJ_Notification\wallpaper.png "https://raw.githubusercontent.com/alreedtv/prj_not/main/wallpaper.png"
@echo Файл wallpaper.png загружен
schtasks /create /ru "Администратор ОПС" /rp FsO28821 /sc daily /tn ScheduledWLPPR_UPD /tr "winget update --all" /st 22:25 /np /rl HIGHEST
powershell write-host -BackgroundColor White -ForegroundColor Black Установлено ежедневное обновление обоев.


