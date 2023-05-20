@echo off

echo *** Re-flash the HackRF with PortaPack firmware ***
echo.
echo Connect your HackRF One to a USB port on your computer.
echo.
echo If using a PortaPack, put the PortaPack in HackRF mode by selecting
echo the "HackRF" option from the main menu.
echo.
pause

echo.
"utils/hackrf_update.exe" portapack-h1_h2-mayhem.bin
echo.
echo If your device never boot after flashing, please refer to https://github.com/eried/portapack-mayhem/wiki/Won't-boot
echo.
pause
