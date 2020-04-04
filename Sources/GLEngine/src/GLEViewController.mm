//
//  GLEViewController.m
//  GLEngine
//
//  Created by Nicolas Degen on 04.04.20.
//

#import "GLEngine/GLEViewController.h"

#include "Renderer/Renderer.h"

@interface GLEViewController ()

@property Renderer renderer;

@end

@implementation GLEViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  [self renderer].draw();
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
