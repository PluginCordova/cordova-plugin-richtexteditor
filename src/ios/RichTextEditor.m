
#import "RichTextEditor.h"
#import "EditorViewController.h"

@interface RichTextEditor ()

@end

@implementation RichTextEditor

- (void) edit:(CDVInvokedUrlCommand*)command{
    
    NSDictionary* options = [command.arguments objectAtIndex:0];
    
    NSString *html = [options objectForKey:@"html"];
    
    EditorViewController *editor = [EditorViewController alloc] initWithHtml:html];
    
    editor.editDoneBlock = ^(NSDictionary *result){

        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:result];
    
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    };

    [[self getTopPresentedViewController] presentViewController:editor animated:YES completion:nil];
}

-(UIViewController *)getTopPresentedViewController {
    UIViewController *presentingViewController = self.viewController;
    while(presentingViewController.presentedViewController != nil)
    {
        presentingViewController = presentingViewController.
        presentedViewController;
    }
    return presentingViewController;
}

@end

