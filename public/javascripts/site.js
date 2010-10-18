function siteInit( ) {
	// initialize the login form
	initLoginForm( "hbloginF" );

	// fix up the menu for IE6/7
	fixMenuIE( "menu" );

	// Set the CU name for the leaveConfirmation dialog
	window.cuName = "Excel Federal Credit Union";
}

function emailConfirm() {
	return confirm( "Please be advised that by sending us an email via this link that your email may not be secure. Do not submit any confidential information through this link (for example your social security, credit card or account number). If you have specific account inquiries that require you to send us confidential information, please use our secure email by logging onto NetBranch Online Banking using your account number and password, or call the credit union at 770-441-9235 or 1-888-441-9235 for further assistance. Thank you." );
}