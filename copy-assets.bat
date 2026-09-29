@echo off
rem Copies images, PDFs, slides and videos from the PHP site (the parent "online" folder)
rem into this Jekyll site. Run once by double-clicking; OneDrive will download files as needed.
cd /d "%~dp0"
for %%D in (images pdf ppt videos) do (
  if exist "..\%%D" robocopy "..\%%D" "%%D" /E /XF *.bak* /NFL /NDL /NJH /NJS
)
echo Done. You can close this window.
pause
