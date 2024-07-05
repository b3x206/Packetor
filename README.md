# Packetor
Packet Capture Application written in Flutter

## Building
### Desktop / Web
It won't work on desktop / web as intended, but it does build fine. <br>
This application is required to be run at mobile platforms, but for checking the layout, this will do. <br>
Just press F5 and run on desktop / web platform. It will work, sort of, but will be a hollow app without any functions. <br>

### IOS
I am poor so I do not have an apple device (or the ability to buy anything other than a potato with cables) that can run the recent MacOS. So IOS support is removed.

### Android
#### Step 0 :
Remove your will to live, because that's how android building works. <br>
Also the ""very good"" android emulator won't work and will segfault if you are unfortunate enough to have a Windows 10 PC with broken tpm, amd ryzen and 7238457239578932 gazillions of SDK's installed to your device. Because apparently virtualization is hard and [so are build systems. <sup>just replace the microservices with another process/call to an external library that does 732935 things and exits silently with segfault and the title is "Gradle/Android Emulator"</sup>](https://www.reddit.com/r/ProgrammerHumor/comments/72fwhc/modern_application_architecture/)
#### Step 1 :
If the generated [proto files contained here](./lib/model/) are **erroring out;** <br>
**[!!]** Again, *you should* **ONLY DO THIS IF THE PROTO FILES ARE ERRORING OUT :**
- Ensure that `protobuf` is installed on your system, if not, install using your package manager.
- Windows :
- - ```(scoop bucket add extras) -and (scoop install protobuf)```
- Linux using APT :
- - ```apt install protobuf # or whatever the package is called idk```
- Ensure that the dart addon is installed for the protobuf, if not install using
- - ```dart pub global activate protoc_plugin```
- After all of these, run the [script contained here for your respective OS, I recommend that you use 'pwsh' regardless because 'bash' script is outdated](./scripts)
- If the script works, new protobuf library wrappers will be generated (i suppose that's what the script does) and you will have the files checked out. (with git)
#### Step 2 :
Ensure your `JAVA_HOME` java version matches [what gradle 7.6 wants.](https://docs.gradle.org/8.8-rc-1/userguide/compatibility.html) <br>
If not, **install the appopriate java version** that the gradle supports with your package manager (or scavenge the interwebs for non-oracle JDK if you are on Michealsoft Bindows), because you can't have enough JDK's on your computer and the poor indie corporation with a widespread operating system, google, can't support the most recent LTS JDK. <br>
* Billions must install all versions of Java that oracle gatekeeps behind a "we will confiscate your liver if you use it in an enterprise setting" license.
#### Step 3 :
Build the android project using **Ctrl+Shift+B** or **remote debug** or if you are lucky enough to have a device that can **run Android Emulator** (either a Mac or Linux device with 129471241 dependencies installed) run it there (and maybe enjoy some grilling on your computer while it tries to work). It should work, after I suffered to fix the './android' directory and it's gradle.
#### Note : 
Android building may not work or be broken currently. I will fix the issues.

## Key Features
1. Http packet capture
2. Https packet capture
3. Network request session save
    1. powered by Android Jetpack # Room
4. tcpdump
5. Network request save
    1. Save as url
    2. Save as curl request
    3. Save as charles request format
    4. Save as postman request format
    5. Save as standard HTTP text format (refer to postman)
6. Support batch save
7. Code generation
    1. Generate C language code
    2. Generate curl request
    3. Generate C# request code
    4. Generate Go request code
    5. Generate Java request code, support Okhttp, Retrofit
    6. Generate JavaScript request code, support ajax, xhr
    7. Generate NodeJS request code
    8. Generate Objective-C request code
    9. Generate PHP request code
    10. Generate Python request code
    11. Generate Ruby request code
    12. Generate Shell request code, support wget, Httpie, cURL
    13. Generate Swift request code
    14. Generate Kotlin request code
    15. Generate batch/shell scripting code
8. Overview, refer to Charles
9. Request, refer to Charles
10. Response, refer to Charles
11. Summary, refer to Charles
12. Chart, refer to Charles
13. Notes, refer to Charles
14. Fully refer to Charles' functions, Charles is the all-powerful mobile terminal
15. Who is Charles? idk really but he seems great. (perhaps a lib / terminal emulator)
16. Implement the request collection function.
17. Implement the request resend function.

## 站在巨人的肩膀上 or standing on the shoulders of giants
- [(巨人 || Giant) 1](http://example.com/?where)
- [(巨人 || Giant) 2](http://example.com/?is%20the%20giants%3Fwho%20knows)
- [(巨人 || Giant) 3](https://bit.ly/mrbreast)

## Data Structure
This is the data structure used on the app. <br>
Probably related with the saving functionality.
```json
[
  {
    "type": null,
    "ipAndPort": null,
    "remoteIP": 0,
    "localIP": 0,
    "remotePort": 0,
    "remoteHost": null,
    "localPort": 0,
    "bytesSent": 0,
    "packetSent": 0,
    "receivedByteNum": 0,
    "receivedPacketNum": 0,
    "lastRefreshTime": 0,
    "isHttpsSession": false,
    "requestUrl": null,
    "path": null,
    "method": null,
    "connectionStartTime": 1546621089025,
    "vpnStartTime": 0,
    "isHttp": false
  },
  {
    "type": null,
    "ipAndPort": null,
    "remoteIP": 0,
    "localIP": 0,
    "remotePort": 0,
    "remoteHost": null,
    "localPort": 0,
    "bytesSent": 0,
    "packetSent": 0,
    "receivedByteNum": 0,
    "receivedPacketNum": 0,
    "lastRefreshTime": 0,
    "isHttpsSession": false,
    "requestUrl": null,
    "path": null,
    "method": null,
    "connectionStartTime": 1546621089025,
    "vpnStartTime": 0,
    "isHttp": false
  }
]
```

## TODO List
1. Use mmap to record requests in real time and save them to a file, and then read the data from the file for display?
2. Fix the data confusion problem ...

