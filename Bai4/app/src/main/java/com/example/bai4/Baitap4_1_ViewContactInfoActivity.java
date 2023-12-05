package com.example.bai4;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

public class Baitap4_1_ViewContactInfoActivity extends AppCompatActivity {
    TextView a,b,c;
    Button button;
    public void onCreate( Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.layout1_showinfo);
        a=findViewById(R.id.name);
        b=findViewById(R.id.email);
        c=findViewById(R.id.project);
        button=findViewById(R.id.finishbutton);
        button.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                finish();
            }
        });
        Bundle bundle=getIntent().getExtras();
        String name=bundle.getString("namekey");
        String email=bundle.getString("emailkey");
        String project =bundle.getString("projectkey");
        a.setText(name);
        b.setText(email);
        c.setText(project);
    }
}
