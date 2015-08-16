//
//  ViewController.m
//  MicBlow
//
//  Created by Roman Küpper on 8/13/15.
//  Copyright (c) 2015 Roman Küpper. All rights reserved.
//

#import "NoisePlugin.h"

@interface NoisePlugin ()

@end

@implementation NoisePlugin

-(void)getCarrierName:(CDVInvokedUrlCommand*)command

{
  CTTelephonyNetworkInfo *netinfo = [[CTTelephonyNetworkInfo alloc] init];
  CTCarrier *carrier = [netinfo subscriberCellularProvider];
  CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK 
messageAsString:[carrier carrierName]];
  [self.commandDelegate sendPluginResult:result callbackId:[command callbackId]];
}

-(void)getCountryCode:(CDVInvokedUrlCommand*)command

{
  CTTelephonyNetworkInfo *netinfo = [[CTTelephonyNetworkInfo alloc] init];
  CTCarrier *carrier = [netinfo subscriberCellularProvider];
  CDVPluginResult* result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK
messageAsString:[carrier isoCountryCode]];
  [self.commandDelegate sendPluginResult:result callbackId:[command callbackId]];
}

@end
