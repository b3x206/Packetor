package com.yongf.flutter.packetcaptureflutter.db;

import android.content.Context;
import android.util.Log;

import androidx.annotation.NonNull;
import androidx.room.Database;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.sqlite.db.SupportSQLiteDatabase;

public class RoomHelper {
    private static final String TAG = RoomHelper.class.getSimpleName();
    private static NatSessionDatabase INSTANCE;

    public static void setupDatabase(Context context) {
        INSTANCE = Room.databaseBuilder(context.getApplicationContext(), NatSessionDatabase.class, "database_nat_session")
            .addCallback(new RoomDatabase.Callback() {
                @Override
                public void onCreate(@NonNull SupportSQLiteDatabase db) {
                    super.onCreate(db);
                    Log.i(TAG, "onCreate Room " + db.getPath());
                }

                @Override
                public void onOpen(@NonNull SupportSQLiteDatabase db) {
                    super.onOpen(db);
                    Log.i(TAG, "onOpen Room " + db.getPath());
                }
            })
            .allowMainThreadQueries()
            .addMigrations()
            .fallbackToDestructiveMigration()
            .build();
    }

    public static NatSessionDatabase getNatSessionDatabase() {
        if (INSTANCE == null) {
            throw new IllegalStateException("Database is not initialized. Call setupDatabase() first.");
        }

        return INSTANCE;
    }
}
