.class public Lcom/mauiit/htmlproquickguide/EfficientAdapter;
.super Landroid/widget/BaseAdapter;
.source "EfficientAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mauiit/htmlproquickguide/EfficientAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mBlankArrowIcon:Landroid/graphics/Bitmap;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mRightArrowIcon:Landroid/graphics/Bitmap;

.field private size:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mauiit/htmlproquickguide/EfficientAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020004

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mauiit/htmlproquickguide/EfficientAdapter;->mRightArrowIcon:Landroid/graphics/Bitmap;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f02

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mauiit/htmlproquickguide/EfficientAdapter;->mBlankArrowIcon:Landroid/graphics/Bitmap;

    .line 37
    sget-object v0, Lcom/mauiit/htmlproquickguide/SharedData;->myList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iput v0, p0, Lcom/mauiit/htmlproquickguide/EfficientAdapter;->size:I

    .line 39
    iput-object p1, p0, Lcom/mauiit/htmlproquickguide/EfficientAdapter;->context:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/mauiit/htmlproquickguide/EfficientAdapter;->size:I

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 133
    sget-object v0, Lcom/mauiit/htmlproquickguide/SharedData;->myList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 119
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 57
    if-nez p2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/mauiit/htmlproquickguide/EfficientAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030001

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 62
    new-instance v1, Lcom/mauiit/htmlproquickguide/EfficientAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/mauiit/htmlproquickguide/EfficientAdapter$ViewHolder;-><init>()V

    .line 63
    .local v1, holder:Lcom/mauiit/htmlproquickguide/EfficientAdapter$ViewHolder;
    const v2, 0x7f060001

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mauiit/htmlproquickguide/EfficientAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 64
    const v2, 0x7f060002

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/mauiit/htmlproquickguide/EfficientAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 65
    const/high16 v2, 0x7f06

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v1, Lcom/mauiit/htmlproquickguide/EfficientAdapter$ViewHolder;->myItemLay:Landroid/widget/RelativeLayout;

    .line 67
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    :goto_0
    sget-object v2, Lcom/mauiit/htmlproquickguide/SharedData;->myList:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mauiit/htmlproquickguide/ListItem;

    .line 79
    .local v0, current_item:Lcom/mauiit/htmlproquickguide/ListItem;
    iget v2, v0, Lcom/mauiit/htmlproquickguide/ListItem;->itemType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 81
    iget-object v2, v1, Lcom/mauiit/htmlproquickguide/EfficientAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/mauiit/htmlproquickguide/EfficientAdapter;->mBlankArrowIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 89
    iget-object v2, v1, Lcom/mauiit/htmlproquickguide/EfficientAdapter$ViewHolder;->myItemLay:Landroid/widget/RelativeLayout;

    const v3, 0x7f020001

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 97
    :goto_1
    iget-object v2, v1, Lcom/mauiit/htmlproquickguide/EfficientAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/mauiit/htmlproquickguide/ListItem;->itemText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    return-object p2

    .line 71
    .end local v0           #current_item:Lcom/mauiit/htmlproquickguide/ListItem;
    .end local v1           #holder:Lcom/mauiit/htmlproquickguide/EfficientAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mauiit/htmlproquickguide/EfficientAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/mauiit/htmlproquickguide/EfficientAdapter$ViewHolder;
    goto :goto_0

    .line 93
    .restart local v0       #current_item:Lcom/mauiit/htmlproquickguide/ListItem;
    :cond_1
    iget-object v2, v1, Lcom/mauiit/htmlproquickguide/EfficientAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/mauiit/htmlproquickguide/EfficientAdapter;->mRightArrowIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 94
    iget-object v2, v1, Lcom/mauiit/htmlproquickguide/EfficientAdapter$ViewHolder;->myItemLay:Landroid/widget/RelativeLayout;

    const v3, 0x7f020003

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1
.end method
