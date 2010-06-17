#import "Three20/TTThumbView.h"
#import "Three20/TTDefaultStyleSheet.h"

@implementation TTThumbView

- (id)initWithFrame:(CGRect)frame {
	if (self = [super initWithFrame:frame]) {
    self.backgroundColor = TTSTYLEVAR(thumbnailBackgroundColor);
    self.opaque = YES;
    self.clipsToBounds = YES;
    
    [self setStylesWithSelector:@"thumbView:"];
	}
	return self;
}

- (void)dealloc {
	[super dealloc];
}

///////////////////////////////////////////////////////////////////////////////////////////////////

- (NSString*)thumbURL {
  return [self imageForState:UIControlStateNormal];
}

- (void)setThumbURL:(NSString*)url {
  [self setImage:url forState:UIControlStateNormal];
}

@end
