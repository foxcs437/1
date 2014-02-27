.class public Lcom/mauiit/htmlproquickguide/WebDisplay;
.super Landroid/app/Activity;
.source "WebDisplay.java"


# instance fields
.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mauiit/htmlproquickguide/WebDisplay;->mWebView:Landroid/webkit/WebView;

    .line 9
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/mauiit/htmlproquickguide/WebDisplay;->setContentView(I)V

    .line 20
    sget-object v0, Lcom/mauiit/htmlproquickguide/SharedData;->CurrentItem:Lcom/mauiit/htmlproquickguide/ListItem;

    iget-object v0, v0, Lcom/mauiit/htmlproquickguide/ListItem;->itemText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mauiit/htmlproquickguide/WebDisplay;->setTitle(Ljava/lang/CharSequence;)V

    .line 22
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/mauiit/htmlproquickguide/WebDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/mauiit/htmlproquickguide/WebDisplay;->mWebView:Landroid/webkit/WebView;

    .line 23
    iget-object v0, p0, Lcom/mauiit/htmlproquickguide/WebDisplay;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 24
    iget-object v0, p0, Lcom/mauiit/htmlproquickguide/WebDisplay;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 27
    iget-object v0, p0, Lcom/mauiit/htmlproquickguide/WebDisplay;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file:///android_asset/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/mauiit/htmlproquickguide/SharedData;->CurrentItem:Lcom/mauiit/htmlproquickguide/ListItem;

    iget-object v2, v2, Lcom/mauiit/htmlproquickguide/ListItem;->htmlFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 28
    return-void
.end method
