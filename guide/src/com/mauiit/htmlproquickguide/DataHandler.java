package com.mauiit.htmlproquickguide;

import java.util.Vector;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class DataHandler
  extends DefaultHandler
{
  private String htmlFilename;
  private String imageFilename;
  private boolean in_htmlfilename = false;
  private boolean in_imagefilename = false;
  private boolean in_innertag = false;
  private boolean in_myentry = false;
  private boolean in_name = false;
  private boolean in_outertag = false;
  private String itemName;
  private String sectionName;
  
  public void characters(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    String str;
    if (this.in_myentry)
    {
      str = new String(paramArrayOfChar, paramInt1, paramInt2).replaceAll("[\\n\\t]", "");
      if (str.length() > 0)
      {
        if (!this.in_name) {
          break label48;
        }
        this.itemName = str;
      }
    }
    label48:
    do
    {
      return;
      if (this.in_htmlfilename)
      {
        this.htmlFilename = str;
        return;
      }
    } while (!this.in_imagefilename);
    this.imageFilename = str;
  }
  
  public void endDocument()
    throws SAXException
  {}
  
  public void endElement(String paramString1, String paramString2, String paramString3)
    throws SAXException
  {
    if (paramString2.equals("entries")) {
      setIn_outertag(false);
    }
    do
    {
      return;
      if (paramString2.equals("section"))
      {
        setIn_innertag(false);
        return;
      }
      if (paramString2.equals("entry"))
      {
        SharedData.myList.add(new ListItem(this.itemName, this.htmlFilename, this.imageFilename));
        this.in_myentry = false;
        return;
      }
      if (paramString2.equals("name"))
      {
        this.in_name = false;
        return;
      }
      if (paramString2.equals("htmlfilename"))
      {
        this.in_htmlfilename = false;
        return;
      }
    } while (!paramString2.equals("imagefilename"));
    this.in_imagefilename = false;
  }
  
  public boolean isIn_innertag()
  {
    return this.in_innertag;
  }
  
  public boolean isIn_outertag()
  {
    return this.in_outertag;
  }
  
  public void setIn_innertag(boolean paramBoolean)
  {
    this.in_innertag = paramBoolean;
  }
  
  public void setIn_outertag(boolean paramBoolean)
  {
    this.in_outertag = paramBoolean;
  }
  
  public void startDocument()
    throws SAXException
  {}
  
  public void startElement(String paramString1, String paramString2, String paramString3, Attributes paramAttributes)
    throws SAXException
  {
    if (paramString2.equals("entries")) {
      setIn_outertag(true);
    }
    do
    {
      return;
      if (paramString2.equals("section"))
      {
        this.sectionName = paramAttributes.getValue("name");
        SharedData.myList.add(new ListItem(this.sectionName));
        setIn_innertag(true);
        return;
      }
      if (paramString2.equals("entry"))
      {
        this.itemName = "";
        this.htmlFilename = "";
        this.imageFilename = "";
        this.in_myentry = true;
        return;
      }
      if (paramString2.equals("name"))
      {
        this.in_name = true;
        return;
      }
      if (paramString2.equals("htmlfilename"))
      {
        this.in_htmlfilename = true;
        return;
      }
    } while (!paramString2.equals("imagefilename"));
    this.in_imagefilename = true;
  }
}


/* Location:           C:\Users\fox\Desktop\AndroidDES\dex2jar-0.0.9.15\1_dex2jar.jar
 * Qualified Name:     com.mauiit.htmlproquickguide.DataHandler
 * JD-Core Version:    0.7.0.1
 */