#import "UIButton+TintColor.h"
#import <objc/runtime.h>

@implementation UIButton (TintColor)

- (void)swizzled_setTintColor:(UIColor *)color {
    NSLog(@"We're calling setTintColor now!");

    [self swizzled_setTintColor:color]; // 會呼叫原本的方法
}

+ (void)load {
    Method original_setTintColor = class_getInstanceMethod(self, @selector(setTintColor:));
    Method swizzled_setTintColor = class_getInstanceMethod(self, @selector(swizzled_setTintColor:));
    method_exchangeImplementations(original_setTintColor, swizzled_setTintColor);
}

@end
