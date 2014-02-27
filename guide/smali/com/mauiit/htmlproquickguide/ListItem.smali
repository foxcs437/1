.class public Lcom/mauiit/htmlproquickguide/ListItem;
.super Ljava/lang/Object;
.source "ListItem.java"


# instance fields
.field public htmlFilename:Ljava/lang/String;

.field public imageFilename:Ljava/lang/String;

.field public itemText:Ljava/lang/String;

.field public itemType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "categoryText"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/mauiit/htmlproquickguide/ListItem;->itemType:I

    .line 23
    iput-object p1, p0, Lcom/mauiit/htmlproquickguide/ListItem;->itemText:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/mauiit/htmlproquickguide/ListItem;->htmlFilename:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/mauiit/htmlproquickguide/ListItem;->imageFilename:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "itemText"
    .parameter "htmlFilename"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/mauiit/htmlproquickguide/ListItem;->itemType:I

    .line 30
    iput-object p1, p0, Lcom/mauiit/htmlproquickguide/ListItem;->itemText:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/mauiit/htmlproquickguide/ListItem;->htmlFilename:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/mauiit/htmlproquickguide/ListItem;->imageFilename:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "itemText"
    .parameter "htmlFilename"
    .parameter "imageFilename"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/mauiit/htmlproquickguide/ListItem;->itemType:I

    .line 37
    iput-object p1, p0, Lcom/mauiit/htmlproquickguide/ListItem;->itemText:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/mauiit/htmlproquickguide/ListItem;->htmlFilename:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/mauiit/htmlproquickguide/ListItem;->imageFilename:Ljava/lang/String;

    .line 40
    return-void
.end method
