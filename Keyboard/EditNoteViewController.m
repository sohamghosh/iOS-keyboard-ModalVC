#import "EditNoteViewController.h"

@interface EditNoteViewController ()

@end

@implementation EditNoteViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.view.backgroundColor = [UIColor whiteColor];
    
    UITextField *notes = [[UITextField alloc] init];
    notes.frame = CGRectMake(20, 20, 280, 100);
    notes.keyboardType = UIKeyboardTypeDefault;
    notes.borderStyle = UITextBorderStyleBezel;
    
    // Important
    notes.delegate = self;
    
    [self.view addSubview:notes];
    
    UIButton *doneButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    doneButton.frame = CGRectMake(100, 150, 100, 60);
    [doneButton setTitle:@"Done" forState:UIControlStateNormal];
    
    [doneButton addTarget:self action:@selector(savePressed:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:doneButton];
}

- (void) savePressed:(UIButton *) sender
{
    //Do something
    
    [self dismissViewControllerAnimated:NO completion:nil];
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    // Do something
    
    // Make the keyboard go away
    [textField resignFirstResponder];
    
    return TRUE;
}


@end
