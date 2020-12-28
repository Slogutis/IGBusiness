%hook IGUser
-(bool)hasBusinessTools {
    return 1;
} 
%end

%hook IGUser
-(bool)allowProducerControls {
    return 1;
} 
%end

%hook IGUser
-(bool)allowViewingInsights {
    return 1;
} 
%end

%hook IGUser
-(bool)useReplyMessagingFormat {
    return 1;
} 
%end

%hook IGUser
-(bool)isBusiness {
    return 1;
} 
%end

%hook IGUser
-(void)setIsBusiness:(bool)arg1 {
    arg1 = 1;
    return %orig;
} 
%end

%hook IGUser
-(bool)isPotentialBusiness {
    return 1;
} 
%end

%hook IGUser
-(void)setIsPotentialBusiness:(bool)arg1 {
    arg1 = 1;
    return %orig;
} 
%end

%hook IGUser
-(bool)showBusinessConversionIcon {
    return %orig;
} 
%end

%hook IGUser
-(void)setIsFBPayEnabled:(bool)arg1 {
    arg1 = 1;
    return %orig;
} 
%end

%hook IGUser
-(bool)isEligibleForDiverseOwnedBusinessInfo {
    return 1;
} 
%end

%hook IGUser
-(void)setIsEligibleForDiverseOwnedBusinessInfo:(bool)arg1 {
    arg1 = 1;
    return %orig;
} 
%end


/* How to Hook with Logos
Hooks are written with syntax similar to that of an Objective-C @implementation.
You don't need to #include <substrate.h>, it will be done automatically, as will
the generation of a class list and an automatic constructor.

%hook ClassName

// Hooking a class method
+ (id)sharedInstance {
	return %orig;
}

// Hooking an instance method with an argument.
- (void)messageName:(int)argument {
	%log; // Write a message about this call, including its class, name and arguments, to the system log.

	%orig; // Call through to the original function with its original arguments.
	%orig(nil); // Call through to the original function with a custom argument.

	// If you use %orig(), you MUST supply all arguments (except for self and _cmd, the automatically generated ones.)
}

// Hooking an instance method with no arguments.
- (id)noArguments {
	%log;
	id awesome = %orig;
	[awesome doSomethingElse];

	return awesome;
}

// Always make sure you clean up after yourself; Not doing so could have grave consequences!
%end
*/
