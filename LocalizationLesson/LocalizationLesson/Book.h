//
//  Book.h
//  LocalizationLesson
//
//  Created by Daniil Novoselov on 23.12.15.
//  Copyright © 2015 Daniil Novoselov. All rights reserved.
//

#import <Foundation/Foundation.h>
@class UIImage;

@interface Book : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *author;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSNumber *editionCount;
@property (nonatomic, strong) NSNumber *rating;
@property (nonatomic, strong) NSDate *date;
@property (nonatomic, strong) UIImage *image;

-(instancetype)initWithTitle:(NSString *)title
                   andAuthor:(NSString *)author
                     andText:(NSString *)text
             andEditionCount:(NSNumber *)edition
                   andRating:(NSNumber *)rating
                     andDate:(NSDate *)date
                    andImage:(UIImage *)img;
@end
