@echo off
setlocal
cd /d "%~dp0"
if not exist ".venv\Scripts\python.exe" (
  echo Creating a local Python environment...
  py -3 -m venv .venv
  if errorlevel 1 (
    echo Could not create the environment. Install Python 3.10+ and try again.
    pause
    exit /b 1
  )
)
call ".venv\Scripts\python.exe" -m pip install --disable-pip-version-check -r requirements.txt
if errorlevel 1 echo WARNING: pyserial could not be installed. Simulation will still work, but real UART mode needs pyserial.
echo.
echo Starting SENTINEL. Keep this window open while using the dashboard.
echo Open http://127.0.0.1:5000 in your browser.
echo.
".venv\Scripts\python.exe" app.py
pause
