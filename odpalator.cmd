@echo off
call coding UTF-8
call config
shutdown /a

set par1=%~1
set par2=%~2
set par3=%~3
set par4=%~4
set par5=%~5
set par6=%~6

title Serwer %NazwaSerwera%
if Motyw==ciemny set color=0a
if Motyw==jasny set color=f0
if Motyw==ciemny set colors=0
if Motyw==jasny set colors=f
if %1==0 goto menu
if %1==1 goto start
if %1==2 goto settings
if %1==3 goto info
goto menu

:menu
cls
call colortext %colors%^6 "%NazwaSerwera%" 0
echo  Minecraft Serwer
echo.
echo 1 - Uruchom z zapisanych ustawień odpalatora
echo 2 - Zmień ustawienia odpalatora
echo 3 - Instrukcja
echo 4 - Zamknij
choice /n /c:1234 /M ":"
if %errorlevel%== 1 goto start
if %errorlevel%== 2 goto settings
if %errorlevel%== 3 goto info
if %errorlevel%== 4 exit



:start
cls

rem shutdown
if %par1:~0,9%==shutdown@ set AwaryjneWylaczenie=%par1:~9%
if %par2:~0,9%==shutdown@ set AwaryjneWylaczenie=%par2:~9%
if %par3:~0,9%==shutdown@ set AwaryjneWylaczenie=%par3:~9%
if %par4:~0,9%==shutdown@ set AwaryjneWylaczenie=%par4:~9%
if %par5:~0,9%==shutdown@ set AwaryjneWylaczenie=%par5:~9%
if %par6:~0,9%==shutdown@ set AwaryjneWylaczenie=%par6:~9%
rem copy
if %par1:~0,5%==copy@ set KopiaZapasowa=%par1:~5%
if %par2:~0,5%==copy@ set KopiaZapasowa=%par2:~5%
if %par3:~0,5%==copy@ set KopiaZapasowa=%par3:~5%
if %par4:~0,5%==copy@ set KopiaZapasowa=%par4:~5%
if %par5:~0,5%==copy@ set KopiaZapasowa=%par5:~5%
if %par6:~0,5%==copy@ set KopiaZapasowa=%par6:~5%
rem ram
if %par1:~0,4%==RAM@ set RAM=%par1:~4%
if %par2:~0,4%==RAM@ set RAM=%par2:~4%
if %par3:~0,4%==RAM@ set RAM=%par3:~4%
if %par4:~0,4%==RAM@ set RAM=%par4:~4%
if %par5:~0,4%==RAM@ set RAM=%par5:~4%
if %par6:~0,4%==RAM@ set RAM=%par6:~4%
rem source
if %par1:~0,7%==source@ set Silnik=%par1:~7%
if %par2:~0,7%==source@ set Silnik=%par2:~7%
if %par3:~0,7%==source@ set Silnik=%par3:~7%
if %par4:~0,7%==source@ set Silnik=%par4:~7%
if %par5:~0,7%==source@ set Silnik=%par5:~7%
if %par6:~0,7%==source@ set Silnik=%par6:~7%
rem theme
if %par1:~0,6%==theme@ set Motyw=%par1:~6%
if %par2:~0,6%==theme@ set Motyw=%par2:~6%
if %par3:~0,6%==theme@ set Motyw=%par3:~6%
if %par4:~0,6%==theme@ set Motyw=%par4:~6%
if %par5:~0,6%==theme@ set Motyw=%par5:~6%
if %par6:~0,6%==theme@ set Motyw=%par6:~6%
rem name
if %par1:~0,5%==name@ set NazwaSerwera=%par1:~5%
if %par2:~0,5%==name@ set NazwaSerwera=%par2:~5%
if %par3:~0,5%==name@ set NazwaSerwera=%par3:~5%
if %par4:~0,5%==name@ set NazwaSerwera=%par4:~5%
if %par5:~0,5%==name@ set NazwaSerwera=%par5:~5%
if %par6:~0,5%==name@ set NazwaSerwera=%par6:~5%

call colortext %colors%^6 "%NazwaSerwera% %Silnik%" 1
echo.
call colortext %colors%^3 "Nazwa serwera" 0
call colortext %colors%^5 " =" 0
call colortext %colors%^6 " %NazwaSerwera%" 1

call colortext %colors%^3 "Motyw" 0
call colortext %colors%^5 " =" 0
call colortext %colors%^6 " %Motyw%" 1

call colortext %colors%^3 "RAM" 0
call colortext %colors%^5 " =" 0
call colortext %colors%^6 " %RAM% GB" 1

call colortext %colors%^3 "Silnik" 0
call colortext %colors%^5 " =" 0
call colortext %colors%^6 " %Silnik%" 1

call colortext %colors%^3 "Awaryjne wyłączenie" 0
call colortext %colors%^5 " =" 0
call colortext %colors%^6 " %AwaryjneWylaczenie%" 1
echo.

java -Xmx%RAM%G -jar %Silnik%.jar
cd ..
cd ..
if NOT %KopiaZapasowa%== brak echo Trwa kopiowanie serwera, nie zamykaj okna i systemu.
if NOT %KopiaZapasowa%== brak xcopy Serwer\*.* %KopiaZapasowa%\%NazwaSerwera%_KZ_%date% /s /d /y /i
if NOT %AwaryjneWylaczenie%== brak shutdown /s /t %AwaryjneWylaczenie% /c "Komputer zostanie wyłączony w ciągu %AwaryjneWylaczenie% sekund od zaqmknięcia serwera w celach uniknięcia przepięć podczas wyładowań atmosferycznych. Aby zapobiec wyłączeniu użyj polecenia shutdown /a lub uruchom ponownie serwer."
exit



:settings
cls
echo Aktualnie ustawienia:

call colortext %colors%^3 "Nazwa serwera" 0
call colortext %colors%^5 " =" 0
call colortext %colors%^6 " %NazwaSerwera%" 1

call colortext %colors%^3 "Motyw" 0
call colortext %colors%^5 " =" 0
call colortext %colors%^6 " %Motyw%" 1

call colortext %colors%^3 "RAM" 0
call colortext %colors%^5 " =" 0
call colortext %colors%^6 " %RAM% GB" 1

call colortext %colors%^3 "Silnik" 0
call colortext %colors%^5 " =" 0
call colortext %colors%^6 " %Silnik%" 1

call colortext %colors%^3 "Awaryjne wyłączenie" 0
call colortext %colors%^5 " =" 0
call colortext %colors%^6 " %AwaryjneWylaczenie%" 1
echo.
echo 1 - Zmień ustawienia
echo 2 - Ustaw ustawienia fabryczne
echo 3 - cofnij
choice /n /c:123 /M ":"
if %errorlevel%== 1 goto resettings
if %errorlevel%== 2 goto przywracanie
if %errorlevel%== 3 goto menu



:resettings
cls
echo Uzupełnij ustawienia.
echo.
set /p NazwaSerwera=Nazwa serwera (bez spacji):
set /p Motyw=Motyw (ciemny lub jasny):
set /p RAM=Przydział pamięci ram (w gigabajtach):
set /p KopiaZapasowa=Lokalizacja (bez / na końcu):
set /p Silnik=Silnik serwera (bez rozszerzenia):
set /p AwaryjneWylaczenie=Awaryjne wyłączenie (w sekundach lub brak):
timeout 1 /nobreak >nul
echo rem %date%>config.cmd
echo set NazwaSerwera=%NazwaSerwera%>>config.cmd
echo set Motyw=%Motyw%>>config.cmd
echo set RAM=%RAM% >>config.cmd
echo set KopiaZapasowa=%KopiaZapasowa%>>config.cmd
echo set Silnik=%Silnik%>>config.cmd
echo set AwaryjneWylaczenie=%AwaryjneWylaczenie%>>config.cmd
goto settings



:przywracanie
cls
echo rem %date%>config.cmd
echo set NazwaSerwera=SerwerMC>>config.cmd
echo set Motyw=ciemny>>config.cmd
echo set RAM=12>>config.cmd
echo set Silnik=Spigot>>config.cmd
echo set KopiaZapasowa=c:\kopie>>config.cmd
echo set AwaryjneWylaczenie=120>>config.cmd
call config
echo Ustawienia przywrócone.
timeout 1 /nobreak >nul
goto settings



:info
cls
echo Aby poprawnie używać odpalatora użyj polecenia call odpalator [argument 1] [argument 2] [argument 3] [argument 4] [argument 5] [argument 6]
echo Argument 1 odpowiada za wybór w menu.
echo.
echo Opcje dla argumentu 1:
echo 0 - brak wyboru		1 - start serwera
echo 2 - zmiana ustawień	3 - wyświetlenie instrukcji
echo.
echo.
echo Resztę argumentów uzupełnia się wpisując [opcja argumentu]@[wartość].
echo Aby pozstawić pusty argument zastąp go samym znakiem "@".
echo Jeśli jakiś argument zostanie pozostawiony pusty - ustawienie zostanie wczytane z zapisanych ustawień.
echo.
echo Opcje dla argumentów 2 - 6
echo shutdown - awaryjne wyłączenie komputera po zakończeniu pracy serwera
echo copy - kopia zapasowa	RAM - przydział pamięci ram
echo name - nazwa serwera	theme - motyw konsoli
echo source - silnik serwera
echo.
echo.
echo Przykłady użycia:
echo Przykład 1: call odpalator 1 shutdown@60 RAM@1 copy@f:\ source@spigot-1.16.3 theme@ciemny
echo Przykład 2: call odpalator 0 RAM@1 theme@ciemny shutdown@60 @ @
pause>nul
goto menu