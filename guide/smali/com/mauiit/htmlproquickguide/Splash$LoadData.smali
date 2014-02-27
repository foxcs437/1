.class Lcom/mauiit/htmlproquickguide/Splash$LoadData;
.super Landroid/os/AsyncTask;
.source "Splash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mauiit/htmlproquickguide/Splash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/io/InputStream;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mauiit/htmlproquickguide/Splash;


# direct methods
.method private constructor <init>(Lcom/mauiit/htmlproquickguide/Splash;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mauiit/htmlproquickguide/Splash$LoadData;->this$0:Lcom/mauiit/htmlproquickguide/Splash;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mauiit/htmlproquickguide/Splash;Lcom/mauiit/htmlproquickguide/Splash$LoadData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/mauiit/htmlproquickguide/Splash$LoadData;-><init>(Lcom/mauiit/htmlproquickguide/Splash;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lcom/mauiit/htmlproquickguide/Splash$LoadData;->doInBackground([Ljava/io/InputStream;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/io/InputStream;)Ljava/lang/Void;
    .locals 8
    .parameter "streams"

    .prologue
    .line 66
    sget-boolean v5, Lcom/mauiit/htmlproquickguide/SharedData;->loaded:Z

    if-nez v5, :cond_0

    .line 71
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 72
    .local v3, saxParserFactory:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 75
    .local v2, saxParser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 78
    .local v4, xr:Lorg/xml/sax/XMLReader;
    new-instance v0, Lcom/mauiit/htmlproquickguide/DataHandler;

    invoke-direct {v0}, Lcom/mauiit/htmlproquickguide/DataHandler;-><init>()V

    .line 79
    .local v0, dataHandler:Lcom/mauiit/htmlproquickguide/DataHandler;
    invoke-interface {v4, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 84
    new-instance v5, Lorg/xml/sax/InputSource;

    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-direct {v5, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v0           #dataHandler:Lcom/mauiit/htmlproquickguide/DataHandler;
    .end local v2           #saxParser:Ljavax/xml/parsers/SAXParser;
    .end local v3           #saxParserFactory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v4           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    const/4 v5, 0x1

    sput-boolean v5, Lcom/mauiit/htmlproquickguide/SharedData;->loaded:Z

    .line 95
    :cond_0
    const/4 v5, 0x0

    return-object v5

    .line 86
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 88
    .local v1, e:Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "XML Pasing Exception = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
