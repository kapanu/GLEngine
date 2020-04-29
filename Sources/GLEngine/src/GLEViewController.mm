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

@property GLKView* glkView;

@end

@implementation GLEViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  _glkView = [[GLKView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
  
  [self setView:_glkView];
}


- (void)update {
}

- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect {
  // make sure we own the context
  if ([EAGLContext currentContext] != _glkView.context) {
    [EAGLContext setCurrentContext: _glkView.context];
  }
  [self renderer].draw();
}

@end
