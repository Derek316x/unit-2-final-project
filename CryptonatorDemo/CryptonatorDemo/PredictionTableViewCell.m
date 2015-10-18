//
//  PredictionTableViewCell.m
//  CryptonatorDemo
//
//  Created by Z on 10/11/15.
//  Copyright © 2015 dereknetto. All rights reserved.
//

#import "PredictionTableViewCell.h"
#import "NSDate+BTCDate.h"

@implementation PredictionTableViewCell

- (void)awakeFromNib {
    // Initialization code
    //update user date input
}

-(NSTimeInterval)timeToTargetDate:(NSDate*)targetDate{
    NSDate *currentDate = [NSDate date];
    NSTimeInterval timeToTargetDate = [targetDate timeIntervalSinceDate:currentDate];
    return timeToTargetDate;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+ (NSString *)reuseIdentifier {
    return @"PredictionIdentifier";
}

@end
