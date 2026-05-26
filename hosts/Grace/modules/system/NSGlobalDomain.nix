{ ... }: 
{
	system.defaults.NSGlobalDomain = {
		AppleEnableMouseSwipeNavigateWithScrolls = false;
		AppleEnableSwipeNavigateWithScrolls = false;
		AppleFontSmoothing = 2;
		AppleICUForce24HourTime = true;
		AppleInterfaceStyle = "Dark";
		AppleInterfaceStyleSwitchesAutomatically = false;
		AppleKeyboardUIMode = 2;
		AppleMeasurementUnits = "Centimeters";
		AppleMetricUnits = 1;

		ApplePressAndHoldEnabled = true;	#Disable if no need, I need for Spanish class.
		AppleScrollerPagingBehavior = false;
		AppleShowAllExtensions = true;
		AppleShowAllFiles = true;
		AppleShowScrollBars = "WhenScrolling";

		AppleSpacesSwitchOnActivate = false; #Change to true for normal experience
		AppleTemperatureUnit = "Celcius";
		AppleWindowTabbingMode = "manual";
		InitialKeyRepeat = 15;
		KeyRepeat = 3;
		NSAutomaticCapitalizationEnabled = false;
		NSAutomaticDashSubstitutionEnabled = true;
		NSAutomaticInlinePredictionEnabled = false;
		NSAutomaticPeriodSubstitutionEnabled = false;
		NSAutomaticQuoteSubstitutionEnabled = false;
		NSAutomaticSpellingCorrectionEnabled = false;
		NSAutomaticWindowAnimationsEnabled = false;

		NSDocumentSaveNewDocumentsToCloud = false; #Set to true if you use icloud
		NSNavPanelExpandedStateForSaveMode = true;
		NSNavPanelExpandedStateForSaveMode2 = true;
		NSScrollAnimationEnabled = true;

		NSStatusItemSelectionPadding = 6; # Change these for changing top bar (hidden for custom bar anyways)
		NSStatusItemSpacing = 12; #THIS VALUE SHOULD ALWAYS BE DOUBLE THE VALUE ABOVE
		NSTableViewDefaultSizeMode = 2;

		NSTextShowsControlCharacters = false; #Experimental, this is the one that shows \n and stuff when enabled
		NSUseAnimatedFocusRing = false;
		NSWindowResizeTime = 0.0001;
		NSWindowShouldDragOnGesture = true;
		PMPrintingExpandedStateForPrint = true;
		PMPrintingExpandedStateForPrint2 = true;
		_HIHideMenuBar = true;
		"com.apple.keyboard.fnState" = false;
		"com.apple.sound.beep.feedback" = 0;
		"com.apple.sound.beep.volume" = 0;
		"com.apple.springing.delay" = 0.1;
		"com.apple.springing.enabled" = true;
		"com.apple.swipescrolldirection" = false;
		"com.apple.trackpad.enableSecondaryClick" = true;
		"com.apple.trackpad.forceClick" = true;
		"com.apple.trackpad.scaling" = 1;

	};
}
