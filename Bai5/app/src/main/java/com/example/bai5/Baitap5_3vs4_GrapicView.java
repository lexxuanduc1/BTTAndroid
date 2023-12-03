package com.example.bai5;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.media.MediaParser;
import android.media.MediaPlayer;
import android.view.MotionEvent;
import android.view.View;

import androidx.annotation.NonNull;

public class Baitap5_3vs4_GrapicView  extends View {
    Bitmap[] frames=new Bitmap[6];
    int i=0;
    long last_tick=0;
    long period=200;
    Context ctext;
    MediaPlayer mPlayer;
    public Baitap5_3vs4_GrapicView(Context context){
        super(context);
        ctext=context;
        mPlayer=MediaPlayer.create(ctext,R.raw.music);
        mPlayer.start();
        Resources resources = getResources();
        String packageName = context.getPackageName();
        for(int i=0;i<6;i++){
            int resourceId = resources.getIdentifier("img" + (i + 1), "drawable", packageName);
            Bitmap originalBitmap = BitmapFactory.decodeResource(resources, resourceId);
            int newWidth = 400;
            int newHeight = 400;
            frames[i] = Bitmap.createScaledBitmap(originalBitmap, newWidth, newHeight, false);
        }
    }

    @Override
    protected void onDraw(@NonNull Canvas canvas) {
        if(i<6){
            long time=(System.currentTimeMillis()-last_tick);
            if(time>=period){
                last_tick=System.currentTimeMillis();
                canvas.drawBitmap(frames[i],40,40,new Paint());
                i++;
                postInvalidate();
            }
            else{
                canvas.drawBitmap(frames[i],40,40,new Paint());
                postInvalidate();
            }


        }
        else{
            i=0;
            postInvalidate();
        }

    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        i++;
        return true;
    }
}
