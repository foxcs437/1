package com.mauiit.htmlproquickguide;

import android.app.Activity;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Bundle;
import java.io.InputStream;
import java.io.PrintStream;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.InputSource;
import org.xml.sax.XMLReader;

public class Splash
  extends Activity
{
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903043);
    new Thread()
    {
      int wait = 0;
      
      /* Error */
      public void run()
      {
        // Byte code:
        //   0: aload_0
        //   1: invokespecial 27	java/lang/Thread:run	()V
        //   4: aload_0
        //   5: getfield 22	com/mauiit/htmlproquickguide/Splash$1:wait	I
        //   8: istore_3
        //   9: iload_3
        //   10: sipush 5000
        //   13: if_icmplt +31 -> 44
        //   16: aload_0
        //   17: getfield 17	com/mauiit/htmlproquickguide/Splash$1:this$0	Lcom/mauiit/htmlproquickguide/Splash;
        //   20: new 29	android/content/Intent
        //   23: dup
        //   24: aload_0
        //   25: getfield 17	com/mauiit/htmlproquickguide/Splash$1:this$0	Lcom/mauiit/htmlproquickguide/Splash;
        //   28: ldc 31
        //   30: invokespecial 34	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
        //   33: invokevirtual 38	com/mauiit/htmlproquickguide/Splash:startActivity	(Landroid/content/Intent;)V
        //   36: aload_0
        //   37: getfield 17	com/mauiit/htmlproquickguide/Splash$1:this$0	Lcom/mauiit/htmlproquickguide/Splash;
        //   40: invokevirtual 41	com/mauiit/htmlproquickguide/Splash:finish	()V
        //   43: return
        //   44: ldc2_w 42
        //   47: invokestatic 47	com/mauiit/htmlproquickguide/Splash$1:sleep	(J)V
        //   50: aload_0
        //   51: bipush 100
        //   53: aload_0
        //   54: getfield 22	com/mauiit/htmlproquickguide/Splash$1:wait	I
        //   57: iadd
        //   58: putfield 22	com/mauiit/htmlproquickguide/Splash$1:wait	I
        //   61: goto -57 -> 4
        //   64: astore_2
        //   65: getstatic 53	java/lang/System:out	Ljava/io/PrintStream;
        //   68: new 55	java/lang/StringBuilder
        //   71: dup
        //   72: ldc 57
        //   74: invokespecial 60	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
        //   77: aload_2
        //   78: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   81: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
        //   84: invokevirtual 73	java/io/PrintStream:println	(Ljava/lang/String;)V
        //   87: aload_0
        //   88: getfield 17	com/mauiit/htmlproquickguide/Splash$1:this$0	Lcom/mauiit/htmlproquickguide/Splash;
        //   91: new 29	android/content/Intent
        //   94: dup
        //   95: aload_0
        //   96: getfield 17	com/mauiit/htmlproquickguide/Splash$1:this$0	Lcom/mauiit/htmlproquickguide/Splash;
        //   99: ldc 31
        //   101: invokespecial 34	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
        //   104: invokevirtual 38	com/mauiit/htmlproquickguide/Splash:startActivity	(Landroid/content/Intent;)V
        //   107: aload_0
        //   108: getfield 17	com/mauiit/htmlproquickguide/Splash$1:this$0	Lcom/mauiit/htmlproquickguide/Splash;
        //   111: invokevirtual 41	com/mauiit/htmlproquickguide/Splash:finish	()V
        //   114: return
        //   115: astore_1
        //   116: aload_0
        //   117: getfield 17	com/mauiit/htmlproquickguide/Splash$1:this$0	Lcom/mauiit/htmlproquickguide/Splash;
        //   120: new 29	android/content/Intent
        //   123: dup
        //   124: aload_0
        //   125: getfield 17	com/mauiit/htmlproquickguide/Splash$1:this$0	Lcom/mauiit/htmlproquickguide/Splash;
        //   128: ldc 31
        //   130: invokespecial 34	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
        //   133: invokevirtual 38	com/mauiit/htmlproquickguide/Splash:startActivity	(Landroid/content/Intent;)V
        //   136: aload_0
        //   137: getfield 17	com/mauiit/htmlproquickguide/Splash$1:this$0	Lcom/mauiit/htmlproquickguide/Splash;
        //   140: invokevirtual 41	com/mauiit/htmlproquickguide/Splash:finish	()V
        //   143: aload_1
        //   144: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	145	0	this	1
        //   115	29	1	localObject	java.lang.Object
        //   64	14	2	localInterruptedException	java.lang.InterruptedException
        //   8	6	3	i	int
        // Exception table:
        //   from	to	target	type
        //   0	4	64	java/lang/InterruptedException
        //   4	9	64	java/lang/InterruptedException
        //   44	61	64	java/lang/InterruptedException
        //   0	4	115	finally
        //   4	9	115	finally
        //   44	61	115	finally
        //   65	87	115	finally
      }
    }.start();
    LoadData localLoadData = new LoadData(null);
    InputStream[] arrayOfInputStream = new InputStream[1];
    arrayOfInputStream[0] = getResources().openRawResource(2130968576);
    localLoadData.execute(arrayOfInputStream);
  }
  
  private class LoadData
    extends AsyncTask<InputStream, Void, Void>
  {
    private LoadData() {}
    
    protected Void doInBackground(InputStream... paramVarArgs)
    {
      if (!SharedData.loaded) {}
      try
      {
        XMLReader localXMLReader = SAXParserFactory.newInstance().newSAXParser().getXMLReader();
        localXMLReader.setContentHandler(new DataHandler());
        localXMLReader.parse(new InputSource(paramVarArgs[0]));
        SharedData.loaded = true;
        return null;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          System.out.println("XML Pasing Exception = " + localException);
        }
      }
    }
  }
}


/* Location:           C:\Users\fox\Desktop\AndroidDES\dex2jar-0.0.9.15\1_dex2jar.jar
 * Qualified Name:     com.mauiit.htmlproquickguide.Splash
 * JD-Core Version:    0.7.0.1
 */