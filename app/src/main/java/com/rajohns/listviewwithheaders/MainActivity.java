package com.rajohns.listviewwithheaders;

import android.support.v7.app.ActionBarActivity;
import android.os.Bundle;
import android.widget.ListView;

import java.util.ArrayList;

public class MainActivity extends ActionBarActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        ListView listView = (ListView)findViewById(R.id.listView);

        Person john = new Person("John", "123 Fake Dr.");
        Person jane = new Person("Jane", "456 Unreal Ln.");
        Person james = new Person("James", "789 Notreal Circle");
        Person sally = new Person("Sally", "147 Seashell Place");
        Person mario = new Person("Mario", "135 Bayside Ct.");
        Person luigi = new Person("Luigi", "246 Bowser Castle");
        Person peach = new Person("Peach", "7911 Peach St.");
        Person toad = new Person("Toad", "81012 Blue Blvd");

        ArrayList<Object> people = new ArrayList<>();
        people.add("Real People");
        people.add(john);
        people.add(jane);
        people.add(james);
        people.add(sally);
        people.add("Fake People");
        people.add(mario);
        people.add(luigi);
        people.add(peach);
        people.add(toad);

        listView.setAdapter(new PersonAdapter(this, people));
    }
}
