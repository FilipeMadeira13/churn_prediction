@echo off
REM Execute all notebooks in place using Python 3.11.
REM Use the setup_env.bat script first to install dependencies.
cd /d %~dp0
py -3.11 -m nbconvert --execute --ExecutePreprocessor.timeout=600 --inplace notebooks\data_cleasing.ipynb
if errorlevel 1 (
    echo Failed to execute notebooks\data_cleasing.ipynb
    exit /b 1
)
py -3.11 -m nbconvert --execute --ExecutePreprocessor.timeout=600 --inplace notebooks\main.ipynb
if errorlevel 1 (
    echo Failed to execute notebooks\main.ipynb
    exit /b 1
)
py -3.11 -m nbconvert --execute --ExecutePreprocessor.timeout=600 --inplace notebooks\test_model.ipynb
if errorlevel 1 (
    echo Failed to execute notebooks\test_model.ipynb
    exit /b 1
)
echo All notebooks executed successfully.
