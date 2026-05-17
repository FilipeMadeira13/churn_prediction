@echo off
REM Install or reuse a local venv and install project dependencies.
cd /d %~dp0
if not exist venv ( 
    py -3.11 -m venv venv
    if errorlevel 1 (
        echo Failed to create virtual environment.
        exit /b 1
    )
)
call venv\Scripts\activate.bat
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
python -m pip install nbconvert ipykernel
if errorlevel 1 (
    echo Failed to install dependencies.
    exit /b 1
)
echo Dependencies installed successfully.
