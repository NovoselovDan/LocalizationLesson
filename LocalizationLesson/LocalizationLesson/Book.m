//
//  Book.m
//  LocalizationLesson
//
//  Created by Daniil Novoselov on 23.12.15.
//  Copyright © 2015 Daniil Novoselov. All rights reserved.
//

#import "Book.h"

@implementation Book

-(instancetype)initWithTitle:(NSString *)title andAuthor:(NSString *)author andText:(NSString *)text andEditionCount:(NSNumber *)edition andRating:(NSNumber *)rating andDate:(NSDate *)date andImage:(UIImage *)img {
    self = [super init];
    if (self) {
        _title = title;
        _author = author;
        _text = text;
        _editionCount = edition;
        _rating = rating;
        _date = date;
        _image = img;
    }
    return self;
}
@end
