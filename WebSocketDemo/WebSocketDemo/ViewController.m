//
//  ViewController.m
//  WebSocketDemo
//
//  Created by lixiaoqiang on 2018/1/8.
//  Copyright © 2018年 lixiaoqiang. All rights reserved.
//

#import "ViewController.h"
#import "SocketIO-Swift.h"

#define URLStr @"ws://localhost:8080"
@interface ViewController ()
@property(nonatomic,strong)SocketIOClient *socket;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSURL* url = [[NSURL alloc] initWithString:URLStr];
    SocketManager* manager = [[SocketManager alloc] initWithSocketURL:url config:nil];
    SocketIOClient* socket = manager.defaultSocket;
    self.socket = socket;
    [socket on:@"connect" callback:^(NSArray* data, SocketAckEmitter* ack) {
        NSLog(@"socket connected");
    }];
    [socket connect];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
