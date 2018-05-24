//
//  ViewController.m
//  VLCExample
//
//  Created by zhangyi35 on 2018/5/11.
//  Copyright © 2018年 yidage. All rights reserved.
//

#import "ViewController.h"
#import <MobileVLCKit/MobileVLCKit.h>

@interface ViewController ()<VLCMediaPlayerDelegate>{
    
}
@property(nonatomic, strong)VLCMediaPlayer *player;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIView *videoView = [[UIView alloc] initWithFrame:CGRectMake(0, 50, self.view.bounds.size.width, 200)];
    [self.view addSubview:videoView];
    VLCMediaPlayer *player = [[VLCMediaPlayer alloc] initWithOptions:nil];
    self.player = player;
    self.player.drawable = videoView;
    //http://live.hkstv.hk.lxdns.com/live/hks/playlist.m3u8
    //https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4
//    self.player.media = [VLCMedia mediaWithPath:[[NSBundle mainBundle] pathForResource:@"test" ofType:@"mov"]];
    self.player.media = [VLCMedia mediaWithURL:[NSURL URLWithString:@"https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4"]];
//    self.player.media = [VLCMedia mediaWithURL:[NSURL URLWithString:@"http://live.hkstv.hk.lxdns.com/live/hks/playlist.m3u8"]];
    
//    player.audio.volume;
//    player.audio.muted = YES;
    [self.player play];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
