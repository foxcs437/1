.class public Lcom/mauiit/htmlproquickguide/DataHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "DataHandler.java"


# instance fields
.field private htmlFilename:Ljava/lang/String;

.field private imageFilename:Ljava/lang/String;

.field private in_htmlfilename:Z

.field private in_imagefilename:Z

.field private in_innertag:Z

.field private in_myentry:Z

.field private in_name:Z

.field private in_outertag:Z

.field private itemName:Ljava/lang/String;

.field private sectionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 14
    iput-boolean v0, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->in_outertag:Z

    .line 15
    iput-boolean v0, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->in_innertag:Z

    .line 16
    iput-boolean v0, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->in_myentry:Z

    .line 17
    iput-boolean v0, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->in_name:Z

    .line 18
    iput-boolean v0, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->in_htmlfilename:Z

    .line 19
    iput-boolean v0, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->in_imagefilename:Z

    .line 7
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 121
    iget-boolean v1, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->in_myentry:Z

    if-eqz v1, :cond_0

    .line 123
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 124
    .local v0, tempString:Ljava/lang/String;
    const-string v1, "[\\n\\t]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 127
    iget-boolean v1, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->in_name:Z

    if-eqz v1, :cond_1

    .line 129
    iput-object v0, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->itemName:Ljava/lang/String;

    .line 141
    .end local v0           #tempString:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 131
    .restart local v0       #tempString:Ljava/lang/String;
    :cond_1
    iget-boolean v1, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->in_htmlfilename:Z

    if-eqz v1, :cond_2

    .line 133
    iput-object v0, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->htmlFilename:Ljava/lang/String;

    goto :goto_0

    .line 135
    :cond_2
    iget-boolean v1, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->in_imagefilename:Z

    if-eqz v1, :cond_0

    .line 137
    iput-object v0, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->imageFilename:Ljava/lang/String;

    goto :goto_0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 38
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 88
    const-string v0, "entries"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p0, v5}, Lcom/mauiit/htmlproquickguide/DataHandler;->setIn_outertag(Z)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const-string v0, "section"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {p0, v5}, Lcom/mauiit/htmlproquickguide/DataHandler;->setIn_innertag(Z)V

    goto :goto_0

    .line 96
    :cond_2
    const-string v0, "entry"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    sget-object v0, Lcom/mauiit/htmlproquickguide/SharedData;->myList:Ljava/util/Vector;

    new-instance v1, Lcom/mauiit/htmlproquickguide/ListItem;

    iget-object v2, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->itemName:Ljava/lang/String;

    iget-object v3, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->htmlFilename:Ljava/lang/String;

    iget-object v4, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->imageFilename:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/mauiit/htmlproquickguide/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 99
    iput-boolean v5, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->in_myentry:Z

    goto :goto_0

    .line 101
    :cond_3
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    iput-boolean v5, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->in_name:Z

    goto :goto_0

    .line 105
    :cond_4
    const-string v0, "htmlfilename"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 107
    iput-boolean v5, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->in_htmlfilename:Z

    goto :goto_0

    .line 109
    :cond_5
    const-string v0, "imagefilename"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iput-boolean v5, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->in_imagefilename:Z

    goto :goto_0
.end method

.method public isIn_innertag()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->in_innertag:Z

    return v0
.end method

.method public isIn_outertag()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->in_outertag:Z

    return v0
.end method

.method public setIn_innertag(Z)V
    .locals 0
    .parameter "in_innertag"

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->in_innertag:Z

    .line 156
    return-void
.end method

.method public setIn_outertag(Z)V
    .locals 0
    .parameter "in_outertag"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->in_outertag:Z

    .line 146
    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 33
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 47
    const-string v0, "entries"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p0, v3}, Lcom/mauiit/htmlproquickguide/DataHandler;->setIn_outertag(Z)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const-string v0, "section"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    const-string v0, "name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->sectionName:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/mauiit/htmlproquickguide/SharedData;->myList:Ljava/util/Vector;

    new-instance v1, Lcom/mauiit/htmlproquickguide/ListItem;

    iget-object v2, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->sectionName:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/mauiit/htmlproquickguide/ListItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {p0, v3}, Lcom/mauiit/htmlproquickguide/DataHandler;->setIn_innertag(Z)V

    goto :goto_0

    .line 58
    :cond_2
    const-string v0, "entry"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->itemName:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->htmlFilename:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->imageFilename:Ljava/lang/String;

    .line 66
    iput-boolean v3, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->in_myentry:Z

    goto :goto_0

    .line 68
    :cond_3
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70
    iput-boolean v3, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->in_name:Z

    goto :goto_0

    .line 72
    :cond_4
    const-string v0, "htmlfilename"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 74
    iput-boolean v3, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->in_htmlfilename:Z

    goto :goto_0

    .line 76
    :cond_5
    const-string v0, "imagefilename"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iput-boolean v3, p0, Lcom/mauiit/htmlproquickguide/DataHandler;->in_imagefilename:Z

    goto :goto_0
.end method
