package com.rajohns.listviewwithheaders;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import java.util.ArrayList;

/**
 * Created by rajohns on 2/8/15.
 *
 */
public class PersonAdapter extends BaseAdapter {
    private ArrayList<Object> personArray;
    private LayoutInflater inflater;
    private static final int TYPE_PERSON = 0;
    private static final int TYPE_DIVIDER = 1;

    public PersonAdapter(Context context, ArrayList<Object> personArray) {
        this.personArray = personArray;
        this.inflater = (LayoutInflater)context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
    }

    @Override
    public int getCount() {
        return personArray.size();
    }

    @Override
    public long getItemId(int position) {
        return position;
    }

    @Override
    public Object getItem(int position) {
        return personArray.get(position);
    }

    @Override
    public int getViewTypeCount() {
        // TYPE_PERSON and TYPE_DIVIDER
        return 2;
    }

    @Override
    public int getItemViewType(int position) {
        if (getItem(position) instanceof Person) {
            return TYPE_PERSON;
        }

        return TYPE_DIVIDER;
    }

    @Override
    public boolean isEnabled(int position) {
        return (getItemViewType(position) == TYPE_PERSON);
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        int type = getItemViewType(position);
        if (convertView == null) {
            switch (type) {
                case TYPE_PERSON:
                    convertView = inflater.inflate(R.layout.row_item, parent, false);
                    break;
                case TYPE_DIVIDER:
                    convertView = inflater.inflate(R.layout.row_header, parent, false);
                    break;
            }
        }

        switch (type) {
            case TYPE_PERSON:
                Person person = (Person)getItem(position);
                TextView name = (TextView)convertView.findViewById(R.id.nameLabel);
                TextView address = (TextView)convertView.findViewById(R.id.addressLabel);
                name.setText(person.getName());
                address.setText(person.getAddress());
                break;
            case TYPE_DIVIDER:
                TextView title = (TextView)convertView.findViewById(R.id.headerTitle);
                String titleString = (String)getItem(position);
                title.setText(titleString);
                break;
        }

        return convertView;
    }
}
