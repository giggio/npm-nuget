@echo off
for /f "delims=" %%A in ('dir "%~dp0..\..\node.js.*" /b') do set "nodePath=%%A"
"%~dp0..\..\%nodePath%\node.exe" "%~dp0node_modules\npm\bin\npm-cli.js" %*
