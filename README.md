# android-window-scripts

Android Windows Scripts.

# Set Up

This is a one time setup after installing Java and setting its path, then install Android Studio (Bundled with SDK and other tools) and set its path (Most developers will skip this as they interact with the SDK through the IDE and not command prompts/scripts) The scripts need to know the path to your Android SDK just like when setting Java, Maven, git e.t.c the system has to provided the path when commands are envoked.

Step 1:
The Android Home Directory need to be defiend in the Path, below are the values:
- Variable: ANDROID_HOME
- Value: C:\Users\alkathirikhalid\AppData\Local\Android\Sdk (The location of your Android SDK)

Step 2:
Android executables:
- Path: %ANDROID_HOME%\platform-tools (Required)
- Path: %ANDROID_HOME%\tools\bin (optional)
- Path: %ANDROID_HOME%\tools (optional)

The scripts will look for default installation of the Android SDK but always relies on the path ...\platform-tools for successful execution.

# App

- <code>clearAppAche</code> : Clear your App Cache incase of an update required data or malfunction due to corrupted cache.
- <code>extractLogcatToFile</code> : Extraxts current logs to a file.

# Device

- <code>listDeviceFeatures</code> : Lists Android device features, to get a quick glance of software and hardware features available on a device such as bluetooth, camera, sensors e.t.c.
- <code>listDeviceLibraries</code> : Lists Android device Libraries, to get a quick glance of Android, Google and OEM (Manufaturer) libraries available in the device.
- <code>listDevicePermissions</code> : Lists Device permissions, to get a quick glance of provide permissions within the Device including of those installed 3rd party system apps.
- <code>rebootDevice</code> : Reboots your device in the event it hangs / not responding, this is especially helpful for devices with internal battery that can not be removed / force shut down.

# Storage

- <code>appInstallLocation</code> : Changes install location of Apps on Device.

# License

Copyright 2015 Al-Kathiri Khalid www.alkathirikhalid.com

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
