<%@ Page language="C#" %>
<%@ Import Namespace="System.Drawing.Imaging" %>
<script runat="server">
	void Page_Load( object sender, System.EventArgs e ) {
		string secretText = Request.QueryString["h"];
		if ( secretText == null || secretText == "" )
			throw new Exception( "h is required" );

		string text = "";
		for ( int i = 0; i < text.Length; i++ ) {
			int c = secretText[i];
			text += c + 1;
		}
		CaptchaImage.CaptchaImage ci = new CaptchaImage.CaptchaImage( text );
		ci.Width = 200;
		ci.Height = 50;
		ci.GenerateImage();
		Response.ContentType = "image/jpeg";
		ci.Image.Save( Response.OutputStream, ImageFormat.Jpeg );
		ci.Dispose();
	}
</script>