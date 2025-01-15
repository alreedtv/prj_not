@echo off
title Clean Up Desktop
pushd "%USERPROFILE%\Desktop"
forfiles /C "cmd /C if @isdir==FALSE (if /I not @ext==\"lnk\" del /F /Q @relpath) else rd /S /Q @relpath"
pause
popd
exit /B
