@setlocal enableextensions enabledelayedexpansion
@echo off
set file=%~1
set key=%~2
for /f "usebackq delims=" %%a in ("!file!") do (
    set ln=%%a
    for /f "tokens=1* delims=:" %%b in ("!ln!") do (
        set currkey=%%b
        set currval=%%c
        if "x!key: =!!"=="x!currkey: =!" (
            if "x!currval:~0,1!x"=="x x" ( echo:!currval:~1! ) else ( echo:!currval! )
        )
    )
)
endlocal
