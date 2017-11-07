@echo off
rem Copyright 2015 Al-Kathiri Khalid www.alkathirikhalid.com
rem Licensed under the Apache License, Version 2.0 (the "License");
rem you may not use this file except in compliance with the License.
rem You may obtain a copy of the License at
rem
rem		http://www.apache.org/licenses/LICENSE-2.0
rem
rem Unless required by applicable law or agreed to in writing,
rem software distributed under the License is distributed on an "AS IS" BASIS,
rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
rem See the License for the specific language governing permissions and
rem limitations under the License.

rem This script changes install location of Apps on Device, this is only intended for debugging.

echo Checking ADB Installation.
if exist "%HOMEPATH%\AppData\Local\Android\Sdk\platform-tools\adb.exe" goto okadb
echo Can't find ADB, please ensure it is in the default folder "User\AppData\Local\Android\Sdk\platform-tool\adb.exe".
echo Press any key to exit . . .
pause > nul
goto end

:okadb
adb devices
echo 0 : Let system decide the best location
echo 1 : Install on internal device storage
echo 2 : Install on external media
echo Getting Device Installation Location...
adb shell pm get-install-location
set /p location= Specify Install location as either 0, 1, 2 or Press Enter to Exit: 
if defined location ( goto okdefined) else (goto end)

:okdefined
echo Setting Install Location:
adb shell pm set-install-location %location%
adb shell pm get-install-location
echo Press any key to exit . . .
pause > nul

:end