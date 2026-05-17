@echo off
REM Execute all notebooks in place using the local venv Python if available.
cd /d %~dp0
if exist venv\Scripts\python.exe (
    set PYTHON=venv\Scripts\python.exe
) else (
    set PYTHON=py -3.11
)
%PYTHON% -m nbconvert --execute --ExecutePreprocessor.timeout=600 --inplace notebooks\data_cleaning.ipynb
if errorlevel 1 (
    echo Failed to execute notebooks\data_cleaning.ipynb
    exit /b 1
)
%PYTHON% -m nbconvert --execute --ExecutePreprocessor.timeout=600 --inplace notebooks\main.ipynb
if errorlevel 1 (
    echo Failed to execute notebooks\main.ipynb
    exit /b 1
)
%PYTHON% -m nbconvert --execute --ExecutePreprocessor.timeout=600 --inplace notebooks\test_model.ipynb
if errorlevel 1 (
    echo Failed to execute notebooks\test_model.ipynb
    exit /b 1
)
echo All notebooks executed successfully.
