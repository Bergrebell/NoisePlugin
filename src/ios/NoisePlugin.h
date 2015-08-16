//
//  ViewController.h
//  MicBlow
//
//  Created by Roman Küpper on 8/13/15.
//  Copyright (c) 2015 Roman Küpper. All rights reserved.
//

#import <Cordova/CDVPlugin.h>
#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <CoreAudio/CoreAudioTypes.h>



@interface NoisePlugin : CDVPlugin {

	AVAudioRecorder *recorder;
    NSTimer *leveltimer;

}


- (void)getCarrierName:(CDVInvokedUrlCommand*)command;
- (void)getCountryCode:(CDVInvokedUrlCommand*)command;


// was ich brauche: 
// - (void)getCarrierName:(CDVInvokedUrlCommand*)command;



@end
