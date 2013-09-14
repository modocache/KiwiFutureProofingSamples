//
//  AppDelegateSpec.m
//  XCTester
//
//  Created by Brian Ivan Gesiak on 9/13/13.
//  Copyright 2013 modocache. All rights reserved.
//

#import <Kiwi/Kiwi.h>
#import "AppDelegate.h"

SPEC_BEGIN(AppDelegateSpec)

describe(@"AppDelegate", ^{
    __block AppDelegate *appDelegate = nil;
    beforeEach(^{
        appDelegate = [AppDelegate new];
    });

    describe(@"-application:didFinishLaunchingWithOptions:", ^{
        it(@"sets the app window's background color white", ^{
            [appDelegate application:nil didFinishLaunchingWithOptions:nil];

            [[appDelegate.window.backgroundColor should]
                equal:[UIColor whiteColor]];
        });
    });
});

SPEC_END

