setlocal EnableExtensions EnableDelayedExpansion
del seedsmall.txt
del sizesmall.txt
cd server
del /s /q *
set /a SEED=%random% * 32768 + %random%
cd ..
echo %SEED% > seedsmall.txt

REM Define range
set MIN=1000
set MAX=4499

REM Calculate range size
set /a RANGE=%MAX% - %MIN% + 1

REM Generate random number in range
set /a NUMBER=(%RANDOM% %% %RANGE%) + %MIN%

REM Write number to file
echo %NUMBER% > sizesmall.txt

