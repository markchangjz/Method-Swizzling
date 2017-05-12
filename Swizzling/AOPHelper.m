#import "AOPHelper.h"
#import "ViewController.h"
#import <objc/runtime.h>

// https://www.swiftcafe.io/2017/01/03/objc-aop/?utm_source=tuicool&utm_medium=referral

@implementation AOPHelper

IMP originalViewDidLoadIMP;

void replacedViewDidLoad() {
    originalViewDidLoadIMP();
    NSLog(@"Method Swizzle");
}

+ (void)setup {
    originalViewDidLoadIMP = class_getMethodImplementation([ViewController class], @selector(viewDidLoad));
    Method originalViewDidLoad = class_getInstanceMethod([ViewController class], @selector(viewDidLoad));
    method_setImplementation(originalViewDidLoad, (IMP) replacedViewDidLoad);
}

@end
