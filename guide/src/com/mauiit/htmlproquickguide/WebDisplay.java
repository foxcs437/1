package com.mauiit.htmlproquickguide;

import android.app.Activity;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;

public class WebDisplay
  extends Activity
{
  private WebView mWebView = null;
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903044);
    setTitle(SharedData.CurrentItem.itemText);
    this.mWebView = ((WebView)findViewById(2131099652));
    this.mWebView.getSettings().setJavaScriptEnabled(true);
    this.mWebView.getSettings().setDatabaseEnabled(false);
    this.mWebView.loadUrl("file:///android_asset/" + SharedData.CurrentItem.htmlFilename + ".html");
  }
}


/* Location:           C:\Users\fox\Desktop\AndroidDES\dex2jar-0.0.9.15\1_dex2jar.jar
 * Qualified Name:     com.mauiit.htmlproquickguide.WebDisplay
 * JD-Core Version:    0.7.0.1
 */