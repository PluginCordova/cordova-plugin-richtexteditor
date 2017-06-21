
#import "EditorViewController.h"

@interface EditorViewController ()
{
    NSString *_html;
}
@end

@implementation EditorViewController

-(instancetype)initWithHtml:(NSString *)html{
    self = [self init];
    if (self) {
        _html = html;
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"编辑文字";
    
    self.alwaysShowToolbar = YES;
    
    // Set the HTML contents of the editor
    [self setHTML:_html];
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
