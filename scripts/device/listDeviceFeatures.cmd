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

rem This script will list Android device features,
rem this is especially helpful to get a quick glance of software and hardware features available on a device such as bluetooth, camera, sensors...

echo Listing attached devices.
if exist "%HOMEPATH%\AppData\Local\Android\Sdk\platform-tools\adb.exe" goto okadb
echo Can't find ADB, please ensure it is in the default folder "User\AppData\Local\Android\Sdk\platform-tool\adb.exe".
echo Press any key to exit . . .
pause > nul
goto end

:okadb
adb devices
echo Listing Device Features.
adb shell pm list features
echo Press any key to exit . . .
pause > nul

:end