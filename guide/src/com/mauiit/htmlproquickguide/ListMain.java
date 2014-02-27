package com.mauiit.htmlproquickguide;

import android.app.ListActivity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;
import java.util.Vector;

public class ListMain
  extends ListActivity
  implements View.OnClickListener
{
  public void onClick(View paramView)
  {
    paramView.getId();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903042);
    setListAdapter(new EfficientAdapter(this));
  }
  
  protected void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.onListItemClick(paramListView, paramView, paramInt, paramLong);
    if (((ListItem)SharedData.myList.get(paramInt)).itemType == 0)
    {
      SharedData.CurrentItem = (ListItem)SharedData.myList.get(paramInt);
      startActivity(new Intent(this, WebDisplay.class));
    }
  }
}


/* Location:           C:\Users\fox\Desktop\AndroidDES\dex2jar-0.0.9.15\1_dex2jar.jar
 * Qualified Name:     com.mauiit.htmlproquickguide.ListMain
 * JD-Core Version:    0.7.0.1
 */