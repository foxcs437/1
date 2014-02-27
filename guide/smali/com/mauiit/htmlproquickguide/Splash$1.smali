.class Lcom/mauiit/htmlproquickguide/Splash$1;
.super Ljava/lang/Thread;
.source "Splash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mauiit/htmlproquickguide/Splash;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mauiit/htmlproquickguide/Splash;

.field wait:I


# direct methods
.method constructor <init>(Lcom/mauiit/htmlproquickguide/Splash;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mauiit/htmlproquickguide/Splash$1;->this$0:Lcom/mauiit/htmlproquickguide/Splash;

    .line 30
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/mauiit/htmlproquickguide/Splash$1;->wait:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 37
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 39
    :goto_0
    iget v1, p0, Lcom/mauiit/htmlproquickguide/Splash$1;->wait:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x1388

    if-lt v1, v2, :cond_0

    .line 51
    iget-object v1, p0, Lcom/mauiit/htmlproquickguide/Splash$1;->this$0:Lcom/mauiit/htmlproquickguide/Splash;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/mauiit/htmlproquickguide/Splash$1;->this$0:Lcom/mauiit/htmlproquickguide/Splash;

    const-class v4, Lcom/mauiit/htmlproquickguide/ListMain;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/mauiit/htmlproquickguide/Splash;->startActivity(Landroid/content/Intent;)V

    .line 52
    iget-object v1, p0, Lcom/mauiit/htmlproquickguide/Splash$1;->this$0:Lcom/mauiit/htmlproquickguide/Splash;

    invoke-virtual {v1}, Lcom/mauiit/htmlproquickguide/Splash;->finish()V

    .line 54
    :goto_1
    return-void

    .line 41
    :cond_0
    const-wide/16 v1, 0x64

    :try_start_1
    invoke-static {v1, v2}, Lcom/mauiit/htmlproquickguide/Splash$1;->sleep(J)V

    .line 42
    iget v1, p0, Lcom/mauiit/htmlproquickguide/Splash$1;->wait:I

    add-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/mauiit/htmlproquickguide/Splash$1;->wait:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 47
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "EXc="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    iget-object v1, p0, Lcom/mauiit/htmlproquickguide/Splash$1;->this$0:Lcom/mauiit/htmlproquickguide/Splash;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/mauiit/htmlproquickguide/Splash$1;->this$0:Lcom/mauiit/htmlproquickguide/Splash;

    const-class v4, Lcom/mauiit/htmlproquickguide/ListMain;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/mauiit/htmlproquickguide/Splash;->startActivity(Landroid/content/Intent;)V

    .line 52
    iget-object v1, p0, Lcom/mauiit/htmlproquickguide/Splash$1;->this$0:Lcom/mauiit/htmlproquickguide/Splash;

    invoke-virtual {v1}, Lcom/mauiit/htmlproquickguide/Splash;->finish()V

    goto :goto_1

    .line 50
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    .line 51
    iget-object v2, p0, Lcom/mauiit/htmlproquickguide/Splash$1;->this$0:Lcom/mauiit/htmlproquickguide/Splash;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/mauiit/htmlproquickguide/Splash$1;->this$0:Lcom/mauiit/htmlproquickguide/Splash;

    const-class v5, Lcom/mauiit/htmlproquickguide/ListMain;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/mauiit/htmlproquickguide/Splash;->startActivity(Landroid/content/Intent;)V

    .line 52
    iget-object v2, p0, Lcom/mauiit/htmlproquickguide/Splash$1;->this$0:Lcom/mauiit/htmlproquickguide/Splash;

    invoke-virtual {v2}, Lcom/mauiit/htmlproquickguide/Splash;->finish()V

    .line 53
    throw v1
.end method
