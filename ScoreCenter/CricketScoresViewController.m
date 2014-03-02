//
//  CricketScoresViewController.m
//  ScoreCenter
//
//  Created by Aniruddha Talur on 3/1/14.
//  Copyright (c) 2014 Aniruddha Talur. All rights reserved.
//

#import "CricketScoresViewController.h"

@interface CricketScoresViewController ()

@property (weak, nonatomic) IBOutlet UILabel *scoreCount;
@property (weak, nonatomic) IBOutlet UILabel *wicketCount;

@property (nonatomic) int incScore;
@property (nonatomic) int incWick;

@end

@implementation CricketScoresViewController

- (void) viewDidLoad
{
    self.view.backgroundColor = [UIColor colorWithPatternImage:
                                 [UIImage imageNamed:@"ball.png"]];
}

- (IBAction)add1run:(UIButton *)sender
{
    self.incScore++;
}
- (IBAction)add2runs:(UIButton *)sender
{
    self.incScore = self.incScore+2;
}
- (IBAction)add3uns:(UIButton *)sender
{
    self.incScore = self.incScore+3;
}
- (IBAction)add3runs:(UIButton *)sender
{
    self.incScore = self.incScore+3;
}
- (IBAction)add4runs:(UIButton *)sender
{
    self.incScore = self.incScore+4;
}
- (IBAction)addWicket:(UIButton *)sender
{
    self.incWick++;
}
- (IBAction)add5runs:(UIButton *)sender
{
    self.incScore = self.incScore+5;
}
- (IBAction)add6runs:(UIButton *)sender
{
    self.incScore = self.incScore+6;
}
- (IBAction)team1:(UITextField *)sender
{
    
}
- (IBAction)team2:(UITextField *)sender {
}


- (void) setIncScore:(int)incScore
{
    _incScore = incScore;
    self.scoreCount.text = [NSString stringWithFormat:@"Score: %d", self.incScore];
}

- (void) setIncWick:(int)incWick
{
    _incWick = incWick;
    self.wicketCount.text = [NSString stringWithFormat:@"Wickets: %d", self.incWick];
}

@end
