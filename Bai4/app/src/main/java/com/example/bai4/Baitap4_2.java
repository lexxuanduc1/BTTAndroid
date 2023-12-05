package com.example.bai4;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

public class Baitap4_2 extends AppCompatActivity {
    Button btn;
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.layout2);
        btn=findViewById(R.id.buttonshowme);
        btn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (ContextCompat.checkSelfPermission(Baitap4_2.this, "android.permission.CALL_PHONE") == PackageManager.PERMISSION_GRANTED) {
                    // Quyền đã được cấp, thực hiện cuộc gọi
                    Intent callIntent = new Intent(Intent.ACTION_CALL, Uri.parse("tel:(+84)123456789"));
                    callIntent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                    startActivity(callIntent);
                } else {
                    // Yêu cầu quyền nếu chưa được cấp
                    int MY_PERMISSIONS_REQUEST_CALL_PHONE=123;
                    ActivityCompat.requestPermissions(Baitap4_2.this, new String[]{"android.permission.CALL_PHONE"}, MY_PERMISSIONS_REQUEST_CALL_PHONE);
                }
            }
        });
    }
}
