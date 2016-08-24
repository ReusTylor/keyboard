//
//  ViewController.m
//  1234
//
//  Created by 创新创业中心 on 16/8/11.
//  Copyright © 2016年 UESTCACM QKTeam. All rights reserved.
//

#import "ViewController.h"




@implementation ViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.textView=[[UITextView alloc]initWithFrame:self.view.frame];
    self.textView.backgroundColor=[UIColor blueColor];
    self.textView.text=@"请输入文字";
    [self.view addSubview:self.textView];
}

//- (void)didReceiveMemoryWarning
//{
//    [super didReceiveMemoryWarning];
//
//}

- (void)viewWillAppear:(BOOL)animated
{
    
    [[NSNotificationCenter defaultCenter]addObserver:self
                                            selector:@selector(handleKeyboardDidShow:)
                                                name:UIKeyboardDidShowNotification
                                              object:nil];
    
    [[NSNotificationCenter defaultCenter]addObserver:self
                                            selector:@selector(handleKeyboardDidHidden)
                                                name:UIKeyboardDidHideNotification
                                              object:nil];
    [super viewWillAppear:YES];
}


- (void)handleKeyboardDidShow:(NSNotification*)paramNotification
{
    
    NSValue *keyboardRectAsObject=[[paramNotification userInfo]objectForKey:UIKeyboardFrameEndUserInfoKey];
    
    CGRect keyboardRect;
    [keyboardRectAsObject getValue:&keyboardRect];
    
    self.textView.contentInset=UIEdgeInsetsMake(0, 0,keyboardRect.size.height+40, 0);
}




- (void)handleKeyboardDidHidden
{
//    self.textView.contentInset=UIEdgeInsetsZero;
    self.textView.contentInset=UIEdgeInsetsMake(0, 0, 0, 0);
}


- (void)viewDidDisappear:(BOOL)animated
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
//-(void)viewDidLoad{
//    [super viewDidLoad];
//    
//    UITextView *aaa=[[UITextView alloc]initWithFrame:CGRectMake(0,60, 400, 200)];
//    aaa.backgroundColor=[UIColor blueColor];
//    aaa.delegate=self;
//    [aaa becomeFirstResponder];
//    [self.view addSubview:aaa];

    
//    
//    UITextField *bbb =[[UITextField alloc]initWithFrame:CGRectMake(0, 280, 400, 200)];
//    bbb.backgroundColor=[UIColor redColor];
//    [bbb addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
//    [self.view addSubview:bbb];

//}

//- (void) textFieldDidChange:(id) sender {
//    
//    UITextField *_field = (UITextField *)sender;
//    
//    NSLog(@"%@",[_field text]);

//}

//-(void)textViewDidBeginEditing:(UITextView *)textView
//{
//   CGRect curFrame=self.view.frame;
//}
//- (void)textViewDidChange:(UITextView *)aaa
//{
////    if (aaa.markedTextRange == nil) {
////        NSLog(@"text:%@", aaa.text);
////        
////        if ([aaa.text isEqualToString:@"Li"])
////        {
////            aaa.text =@"int";
////        }
////    }
//    aaa.frame=CGRectMake(0, 0, 80, 80);
//}
//
//-(void)textViewDidEndEditing:(UITextView *)textView{
//    aaa.frame=CGRectMake(0, 60, 400, 200);
//}
//

    
    
    
    
    
    
    
    
//    UIScrollView *scrollView = [[UIScrollView alloc] init];
//         scrollView.frame = CGRectMake(0, 0, 250, 250); // frame中的size指UIScrollView的可视范围
//         scrollView.backgroundColor = [UIColor grayColor];
//         [self.view addSubview:scrollView];
//        UIImageView *imageView = [[UIImageView alloc] init];
//        imageView.image = [UIImage imageNamed:@"big.jpg"];
//         CGFloat imgW = imageView.image.size.width; // 图片的宽度
//        CGFloat imgH = imageView.image.size.height; // 图片的高度
//         imageView.frame = CGRectMake(0, 0, imgW, imgH);
//         [scrollView addSubview:imageView];
//    
//    scrollView.contentSize = imageView.image.size;
//    
//        // 隐藏水平滚动条
//         scrollView.showsHorizontalScrollIndicator = YES   ;
//         scrollView.showsVerticalScrollIndicator = YES;
//    
//         // 用来记录scrollview滚动的位置
//     //    scrollView.contentOffset = ;
//    
//         // 去掉弹簧效果
//     //    scrollView.bounces = NO;
//    
//         // 增加额外的滚动区域（逆时针，上、左、下、右）
//     // top  left  bottom  right
//         scrollView.contentInset = UIEdgeInsetsMake(20, 20, 20, 20);
//    
//         _scrollView = scrollView;
//}
//- (IBAction)down:(UIButton *)sender {
//         [UIView animateWithDuration:1.0 animations:^{
//                 //三个步骤
//                 CGPoint offset = _scrollView.contentOffset;
//                 offset.y += 150;
//                 _scrollView.contentOffset = offset;
//        
//                 //_scrollView.contentOffset = CGPointMake(0, 0);
//             }];
//}



//释放创建的对象


    
    
    
    
    
    
    
    
//    UITextView *aaa=[[UITextView alloc]initWithFrame:CGRectMake(10, 10, 400, 1000)];
//    aaa.scrollEnabled = YES;    aaa.backgroundColor=[UIColor blueColor];
//    [self.view addSubview:aaa];
//        const char *words[4]={"about","above","apple","A \"Macbook pro\""};
//        int wordCount = 4;
//        int j;
//        for (j=0; j< wordCount; j++)
//        {
//            NSLog(@"%s is %lu characters long", words[j], strlen(words[j])); //%s 输出字符串
//        }
        
    


//
//BOOL areIntsDifferent(int thing1,int thing2){
//    if (thing1==thing2) {
//        return NO;
//        
//    }
//    else{
//        return YES;
//    }
//}
//
//NSString *boolString(BOOL yesNO){
//    if (yesNO==NO) {
//        return (@"no");
//    }
//    else {
//        return (@"yes");
//    }
//}
//int main(int argc, const char * argv[]){
//    BOOL aretheydifferent;
//    int v_thing1=5;
//    int v_thing2=5;
//    aretheydifferent=areIntsDifferent(v_thing1, v_thing2);
//    NSLog(@"Are %d and %d different ? %@",v_thing1,v_thing2,boolString(aretheydifferent));
//    return 0;
//}

// int main(int argc, const char * argv[])
//{
//         const char *words[4]={"about","above","apple","A \"Macbook pro\""};
//         int wordCount = 4;
//         int j;
//         for (j=0; j< wordCount; j++)
//             {
//                    NSLog(@"%s is %lu characters long", words[j], strlen(words[j])); //%s 输出字符串
//                 }
//         return  (0);
// }



@end
