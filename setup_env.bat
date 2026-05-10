@echo off
REM Install project dependencies using Python 3.11 via the py launcher.
REM If you do not have Python 3.11, install it or adjust the command to a compatible interpreter.
py -3.11 -m pip install --user -r requirements.txt nbconvert ipykernel
if errorlevel 1 (
    echo Failed to install dependencies.
    exit /b 1
)
echo Dependencies installed successfully.
