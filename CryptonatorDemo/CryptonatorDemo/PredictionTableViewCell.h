//
//  PredictionTableViewCell.h
//  CryptonatorDemo
//
//  Created by Z on 10/11/15.
//  Copyright © 2015 dereknetto. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BitcoinPrediction.h"

@interface PredictionTableViewCell : UITableViewCell
@property (nonatomic) BitcoinPrediction *prediction;
@property (weak, nonatomic) IBOutlet UILabel *journalEntryLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceAtInstantOfPredictionLabel;
@property (weak, nonatomic) IBOutlet UILabel *targetDateLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeToTargetDateLabel;
@property (weak, nonatomic) IBOutlet UIImageView *predictionArrowImage;

@property (nonatomic, weak) IBOutlet UILabel *userDateInput;

+ (NSString *)reuseIdentifier;

@end
