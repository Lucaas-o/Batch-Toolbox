@echo off
set /a length=12
set "chars=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()"
set "password="
for /l %%i in (1,1,%length%) do (
    set /a rand=!random!%%72
    set "password=!password!!chars:~!rand!,1!"
)
echo Generated Password: %password%
pause
exit
