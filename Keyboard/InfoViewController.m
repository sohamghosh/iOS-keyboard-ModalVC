#import "InfoViewController.h"
#import "EditNoteViewController.h"

@interface InfoViewController ()

@end

@implementation InfoViewController 


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
//    UIBarButtonItem *editButton = [[UIBarButtonItem alloc]
//                                   initWithBarButtonSystemItem:UIBarButtonSystemItemEdit
//                                   target:self
//                                   action:@selector(editPressed:)];
//    
//    self.navigationItem.rightBarButtonItem = editButton;
    
    
    UIButton *editButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    editButton.frame = CGRectMake(100, 100, 100, 50);
    [editButton setTitle:@"Edit Notes" forState:UIControlStateNormal];
    
    [editButton addTarget:self action:@selector(editPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:editButton];
}

- (void) editPressed:(UIButton *) sender
{
    EditNoteViewController *editVC = [[EditNoteViewController alloc] init];

    // editVC.xyz = abc
    
    [self presentViewController:editVC animated:NO completion:nil];
}

@end
