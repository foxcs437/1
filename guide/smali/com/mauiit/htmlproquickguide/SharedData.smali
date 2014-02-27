.class public Lcom/mauiit/htmlproquickguide/SharedData;
.super Ljava/lang/Object;
.source "SharedData.java"


# static fields
.field public static CurrentItem:Lcom/mauiit/htmlproquickguide/ListItem;

.field public static loaded:Z

.field public static myList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/mauiit/htmlproquickguide/ListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/mauiit/htmlproquickguide/SharedData;->myList:Ljava/util/Vector;

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mauiit/htmlproquickguide/SharedData;->loaded:Z

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
