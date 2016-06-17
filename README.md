# Go mobile Sample app for iOS

We have a 2fa authentication app that runs on iphones, ipods and ipads iOS 8+ with armv7, armv7s and arm64 architectures support. However we are experimenting some issues while using a gomobile framework.

## Sample app

This is a sample app written in Swift that includes an [umbrella framework](https://developer.apple.com/library/mac/documentation/MacOSX/Conceptual/BPFrameworks/Concepts/FrameworkAnatomy.html#//apple_ref/doc/uid/20002253-97623-BAJJHAJC) named FrameworkGOMobileSample.framework

The umbrella framework includes a gomobile framework.

The purpose of this sample app is to describe the blockers we are experimenting when using the gomobile framework inside the umbrella framework.

## Known issues
* Unable to run on certain devices. Error received:

`App installation failed`
`A signed resource has been added, modified, or deleted.`

The possible reason this is happening is because the umbrella framework has 'Code Sign On Copy' disabled (Build Phases > Copy Files > FrameworkGOMobileSample.framework)

When you try to compile the project with `Code Sign On Copy` enabled on a device you will get:

error: bitcode_strip {...}/iOSGOMobileSampleApp/FrameworkGOMobileSample.framework/Frameworks/Sample.framework/Versions/A/Sample: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/bitcode_strip exited with 1

This issue has been reproduced in iPod touch and iPhone 6s. And we would like to enable Code Sign on Copy for our embedded framework.

* When `Build Active Architecture Only` is set to NO , simulators will stop working and you will get this error:
`'iOSSample' is unavailable: cannot find Swift declaration for this class` because the flag `ONLY_ACTIVE_ARCH` under Build Settings is set to NO

The fix for this is to change the Valid Architectures to 'arm64' only

## Requirements
1. Create the universal framework: https://github.com/AdrianaPineda/FrameworkGOMobileSample
2. After creating the universal framework, add `FrameworkGOMobileSample.framework` in the root of the Sample App project
3. Run the app