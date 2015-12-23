//
//  ViewController.m
//  LocalizationLesson
//
//  Created by Daniil Novoselov on 23.12.15.
//  Copyright © 2015 Daniil Novoselov. All rights reserved.
//

#import "ViewController.h"
#import "Book.h"

@interface ViewController ()
@property (strong, nonatomic) Book *currentBook;


@property (weak, nonatomic) IBOutlet UIImageView *coverImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *authorLabel;
@property (weak, nonatomic) IBOutlet UILabel *editionLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _currentBook = [[Book alloc] initWithTitle:NSLocalizedString(@"bookTitle", nil)
                                     andAuthor:NSLocalizedString(@"bookAuthor", nil)
                                       andText:NSLocalizedString(@"bookDescription", nil)
                               andEditionCount:@10000
                                     andRating:@5.5
                                       andDate:[NSDate date]
                                      andImage:[UIImage imageNamed:@"cover.jpg"]];
    
    [self setupView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupView {
    NSNumberFormatter *formatter = [NSNumberFormatter new];

    [_coverImageView setImage:_currentBook.image];
    _titleLabel.text = NSLocalizedString(_currentBook.title, nil);
    _authorLabel.text = _currentBook.author;
    _editionLabel.text = [formatter stringFromNumber:_currentBook.editionCount];
    _dateLabel.text = [[NSDateFormatter new] stringFromDate:_currentBook.date];
    _descriptionLabel.text = _currentBook.text;
}

@end
