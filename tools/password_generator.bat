@Echo Off
SetLocal EnableExtensions EnableDelayedExpansion

Set "i=-1" 
For %%_ In (A B C D F G H I J K L M N P Q R S T U V W X Y Z 0 1 2 3 4 5 6 7 8 9) Do (
    Set /A i += 1
    Set "$.!i!=%%_"
)

Set /P "length=Enter the password length (between 8 and 32): "

If %length% GEQ 8 If %length% LEQ 32 (
    Echo You have selected a password length of %length% characters.
) Else (
    Echo Invalid input. Please enter a number between 8 and 32.
    GoTo :LengthInput
)

Set "strAN="
For /L %%_ In (1 1 %length%) Do (
    Set /A randIndex=!random! %% i
    Set "char=!$.!randIndex!!"
    Set "strAN=!strAN!!char!"
)

Echo Your generated password: %strAN%

set /p saveFile="Save password to file? (Y/N): "
if /I "%saveFile%"=="Y" (
    echo %strAN% > generated_password.txt
    echo Password saved to generated_password.txt
)

pause
start "" toolbox.bat
exit
