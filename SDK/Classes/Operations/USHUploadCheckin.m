/*****************************************************************************
 ** Copyright (c) 2012 Ushahidi Inc
 ** All rights reserved
 ** Contact: team@ushahidi.com
 ** Website: http://www.ushahidi.com
 **
 ** GNU Lesser General Public License Usage
 ** This file may be used under the terms of the GNU Lesser
 ** General Public License version 3 as published by the Free Software
 ** Foundation and appearing in the file LICENSE.LGPL included in the
 ** packaging of this file. Please review the following information to
 ** ensure the GNU Lesser General Public License version 3 requirements
 ** will be met: http://www.gnu.org/licenses/lgpl.html.
 **
 **
 ** If you have questions regarding the use of this file, please contact
 ** Ushahidi developers at team@ushahidi.com.
 **
 *****************************************************************************/

#import "USHUploadCheckin.h"
#import "USHCheckin.h"
#import "Ushahidi.h"

@interface USHUploadCheckin ()

@end

@implementation USHUploadCheckin

@synthesize checkin = _checkin;

- (id) initWithDelegate:(NSObject<USHUploadDelegate>*)delegate
               callback:(NSObject<UshahidiDelegate>*)callback
                    map:(USHMap *)map
                checkin:(USHCheckin*)checkin {
    if ((self = [super initWithDelegate:delegate
                                callback:callback
                                    map:map
                                    api:@"api?task=checkins&action=add"])) {
        self.checkin = checkin;
    }
    return self;
}

- (void)dealloc {
    [_checkin release];
    [super dealloc];
}

@end
