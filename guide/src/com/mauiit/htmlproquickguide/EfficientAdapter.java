package com.mauiit.htmlproquickguide;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.Vector;

public class EfficientAdapter
  extends BaseAdapter
  implements Filterable
{
  private Context context;
  private Bitmap mBlankArrowIcon;
  private LayoutInflater mInflater;
  private Bitmap mRightArrowIcon;
  private int size;
  
  public EfficientAdapter(Context paramContext)
  {
    this.mInflater = LayoutInflater.from(paramContext);
    this.mRightArrowIcon = BitmapFactory.decodeResource(paramContext.getResources(), 2130837508);
    this.mBlankArrowIcon = BitmapFactory.decodeResource(paramContext.getResources(), 2130837504);
    this.size = SharedData.myList.size();
    this.context = paramContext;
  }
  
  public int getCount()
  {
    return this.size;
  }
  
  public Filter getFilter()
  {
    return null;
  }
  
  public Object getItem(int paramInt)
  {
    return SharedData.myList.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ViewHolder localViewHolder;
    ListItem localListItem;
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(2130903041, null);
      localViewHolder = new ViewHolder();
      localViewHolder.text = ((TextView)paramView.findViewById(2131099649));
      localViewHolder.icon = ((ImageView)paramView.findViewById(2131099650));
      localViewHolder.myItemLay = ((RelativeLayout)paramView.findViewById(2131099648));
      paramView.setTag(localViewHolder);
      localListItem = (ListItem)SharedData.myList.get(paramInt);
      if (localListItem.itemType != 1) {
        break label142;
      }
      localViewHolder.icon.setImageBitmap(this.mBlankArrowIcon);
      localViewHolder.myItemLay.setBackgroundResource(2130837505);
    }
    for (;;)
    {
      localViewHolder.text.setText(localListItem.itemText);
      return paramView;
      localViewHolder = (ViewHolder)paramView.getTag();
      break;
      label142:
      localViewHolder.icon.setImageBitmap(this.mRightArrowIcon);
      localViewHolder.myItemLay.setBackgroundResource(2130837507);
    }
  }
  
  static class ViewHolder
  {
    ImageView icon;
    RelativeLayout myItemLay;
    TextView text;
  }
}


/* Location:           C:\Users\fox\Desktop\AndroidDES\dex2jar-0.0.9.15\1_dex2jar.jar
 * Qualified Name:     com.mauiit.htmlproquickguide.EfficientAdapter
 * JD-Core Version:    0.7.0.1
 */