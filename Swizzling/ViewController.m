#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"viewDidLoad");

    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(10, 10, 100, 50);
    [button setTitle:@"Mark" forState:UIControlStateNormal];
    button.tintColor = [UIColor darkGrayColor];
    [self.view addSubview:button];
}

@end
