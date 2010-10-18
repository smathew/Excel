<%@ Language="JScript" %>
<%
var co = Server.CreateObject( "Captcha.CaptchaObject" );
var s = String( Request.QueryString( "s" ) );
var ci = Server.CreateObject( "Captcha.CaptchaImage" );
ci.Text = co.Decrypt( s );
ci.Width = 200;
ci.Height = 50;
Response.ContentType = "image/jpeg";
ci.WriteImage();
%>