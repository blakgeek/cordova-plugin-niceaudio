#import <Cordova/CDV.h>
#import <AVFoundation/AVFoundation.h>

@interface CDVNiceAudio : CDVPlugin {

}

@end

@implementation CDVNiceAudio

- (void)pluginInitialize {
    // set audio category
    NSError *setCategoryError = nil;
    BOOL success = [[AVAudioSession sharedInstance] setCategory: AVAudioSessionCategoryAmbient withOptions:AVAudioSessionCategoryOptionDuckOthers error: &setCategoryError];

    if (!success) {
        /* handle the error in setCategoryError */
        NSLog(@"AVAudioSession EROR");
    }
}

@end
