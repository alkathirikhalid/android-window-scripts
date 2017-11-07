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

rem This script current logs to a file.

echo Checking ADB Installation.
if exist "%HOMEPATH%\AppData\Local\Android\Sdk\platform-tools\adb.exe" goto okadb
echo Can't find ADB, please ensure it is in the default folder "User\AppData\Local\Android\Sdk\platform-tool\adb.exe".
echo Press any key to exit . . .
pause > nul
goto end

:okadb
adb devices
set /p location= Enter path and/or file name example D:\logcat.txt (or Press Enter to Save to current directory): 
if defined location ( goto okdefined) else (goto okdefault)

:okdefined
echo Saving to provided loaction.
adb logcat -d > %location%
goto okdone

:okdefault
echo Saving to current location.
adb logcat -d > logcat.txt"
goto okdone

:okdone
echo Press any key to exit . . .
pause > nul

:end