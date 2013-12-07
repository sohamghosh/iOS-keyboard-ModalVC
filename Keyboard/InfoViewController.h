#import <UIKit/UIKit.h>

@interface InfoViewController : UINavigationController  

@property (strong, nonatomic) UITextField *notes;

- (void) editPressed:(UIButton *) sender;

@end
