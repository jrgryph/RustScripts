setlocal EnableExtensions EnableDelayedExpansion
del seed.txt
set /a SEED=%random% * 32768 + %random%
echo %SEED% > seed.txt
REM Define range
set MIN=4500
set MAX=6000

REM Calculate range size
set /a RANGE=%MAX% - %MIN% + 1

REM Generate random number in range
set /a NUMBER=(%RANDOM% %% %RANGE%) + %MIN%

REM Write number to file
echo %NUMBER% > size.txt
