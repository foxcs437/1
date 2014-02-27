.class public Lcom/mauiit/htmlproquickguide/ListMain;
.super Landroid/app/ListActivity;
.source "ListMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 39
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/mauiit/htmlproquickguide/ListMain;->setContentView(I)V

    .line 24
    new-instance v0, Lcom/mauiit/htmlproquickguide/EfficientAdapter;

    invoke-direct {v0, p0}, Lcom/mauiit/htmlproquickguide/EfficientAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/mauiit/htmlproquickguide/ListMain;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 28
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 45
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 48
    sget-object v1, Lcom/mauiit/htmlproquickguide/SharedData;->myList:Ljava/util/Vector;

    invoke-virtual {v1, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mauiit/htmlproquickguide/ListItem;

    iget v1, v1, Lcom/mauiit/htmlproquickguide/ListItem;->itemType:I

    if-nez v1, :cond_0

    .line 51
    sget-object v1, Lcom/mauiit/htmlproquickguide/SharedData;->myList:Ljava/util/Vector;

    invoke-virtual {v1, p3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mauiit/htmlproquickguide/ListItem;

    sput-object v1, Lcom/mauiit/htmlproquickguide/SharedData;->CurrentItem:Lcom/mauiit/htmlproquickguide/ListItem;

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mauiit/htmlproquickguide/WebDisplay;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/mauiit/htmlproquickguide/ListMain;->startActivity(Landroid/content/Intent;)V

    .line 57
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
