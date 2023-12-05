package com.example.bai4;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

import androidx.appcompat.app.AppCompatActivity;

public class Baitap4_1 extends AppCompatActivity {
    EditText a,b,c ;
    Button button;
    @Override
    public void onCreate( Bundle savedInstanceState){
        super.onCreate(savedInstanceState);
        setContentView(R.layout.layout1_info);
        a=findViewById(R.id.editname);
        b=findViewById(R.id.editemail);
        c=findViewById(R.id.editproject);
        button=findViewById(R.id.buttoncontacinfo);
        button.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                Intent intent=new Intent(getApplicationContext(),Baitap4_1_ViewContactInfoActivity.class);
                Bundle bundle=new Bundle();
                bundle.putString("namekey",a.getText().toString());
                bundle.putString("emailkey",b.getText().toString());
                bundle.putString("projectkey",c.getText().toString());
                intent.putExtras(bundle);
                startActivity(intent);
            }
        });

    }
}
