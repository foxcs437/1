.class public Lcom/mauiit/htmlproquickguide/Splash;
.super Landroid/app/Activity;
.source "Splash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mauiit/htmlproquickguide/Splash$LoadData;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v2, 0x7f030003

    invoke-virtual {p0, v2}, Lcom/mauiit/htmlproquickguide/Splash;->setContentView(I)V

    .line 27
    const/16 v0, 0x1388

    .line 30
    .local v0, splashScreenDisplayTime:I
    new-instance v1, Lcom/mauiit/htmlproquickguide/Splash$1;

    invoke-direct {v1, p0}, Lcom/mauiit/htmlproquickguide/Splash$1;-><init>(Lcom/mauiit/htmlproquickguide/Splash;)V

    .line 57
    .local v1, splashScreenThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 59
    new-instance v2, Lcom/mauiit/htmlproquickguide/Splash$LoadData;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mauiit/htmlproquickguide/Splash$LoadData;-><init>(Lcom/mauiit/htmlproquickguide/Splash;Lcom/mauiit/htmlproquickguide/Splash$LoadData;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/mauiit/htmlproquickguide/Splash;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f04

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/mauiit/htmlproquickguide/Splash$LoadData;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 60
    return-void
.end method
