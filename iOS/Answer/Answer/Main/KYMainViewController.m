//
//  KYMainViewController.m
//  Answer
//
//  Created by HSEDU on 2018/1/23.
//  Copyright © 2018年 HSEDU. All rights reserved.
//

#import "KYMainViewController.h"
#import "KYTopicTableViewCell.h"

@interface KYMainViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong)UITableView *topicListTableView;
@end

@implementation KYMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    self.topicListTableView = [UITableView new];
    [self.view addSubview:self.topicListTableView];
    [self.topicListTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    self.topicListTableView.delegate = self;
    self.topicListTableView.dataSource = self;
    // Do any additional setup after loading the view.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    KYTopicTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"KYTopicTableViewCell"];
    if (cell == nil) {
        cell = [[KYTopicTableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:@"KYTopicTableViewCell"];
    }
    cell.textLabel.text = @"fdasf";
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
