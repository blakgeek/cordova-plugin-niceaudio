#import <Cordova/CDV.h>
#import <AVFoundation/AVFoundation.h>

@interface CDVNiceAudio : CDVPlugin {

}

@end

@implementation CDVNiceAudio

- (void)pluginInitialize {
    // make sure audio doesn't take over should probably add a flag to control this
    [[AVAudioSession sharedInstance] setCategory:AVAudioSessionCategoryAmbient error:nil];
    //[[AVAudioSession sharedInstance] setActive:YES error:nil];
}

@end
