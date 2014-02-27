package com.mauiit.htmlproquickguide;

public class ListItem
{
  public String htmlFilename;
  public String imageFilename;
  public String itemText;
  public int itemType;
  
  public ListItem(String paramString)
  {
    this.itemType = 1;
    this.itemText = paramString;
    this.htmlFilename = "";
    this.imageFilename = "";
  }
  
  public ListItem(String paramString1, String paramString2)
  {
    this.itemType = 0;
    this.itemText = paramString1;
    this.htmlFilename = paramString2;
    this.imageFilename = "";
  }
  
  public ListItem(String paramString1, String paramString2, String paramString3)
  {
    this.itemType = 0;
    this.itemText = paramString1;
    this.htmlFilename = paramString2;
    this.imageFilename = paramString3;
  }
}


/* Location:           C:\Users\fox\Desktop\AndroidDES\dex2jar-0.0.9.15\1_dex2jar.jar
 * Qualified Name:     com.mauiit.htmlproquickguide.ListItem
 * JD-Core Version:    0.7.0.1
 */