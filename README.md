# iOSGOMobileSampleApp

## Requirements
1. After creating the universal framework, add `FrameworkGOMobileSample.framework` in the Sample App project root
2. Run the app

## Known issues
* Bitcode is not supported because the framework included `FrameworkGOMobileSample.framework` does not support it. The project has bitcode disabled. (Build Settings > Enable Bitcode > No).

When trying to compile the project with bitcode enabled in a real device you will get:
ld: '{...}/iOSGOMobileSampleApp/FrameworkGOMobileSample.framework/FrameworkGOMobileSample' does not contain bitcode. You must rebuild it with bitcode enabled (Xcode setting ENABLE_BITCODE), obtain an updated library from the vendor, or disable bitcode for this target. for architecture armv7

* Code Sign On Copy is disabled. Under Build Phases > Copy Files > FrameworkGOMobileSample.framework

When you try to compile the project with `Code Sign On Copy` enabled in a real device you will get:

error: bitcode_strip {...}/iOSGOMobileSampleApp/FrameworkGOMobileSample.framework/Frameworks/Sample.framework/Versions/A/Sample: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/bitcode_strip exited with 1
