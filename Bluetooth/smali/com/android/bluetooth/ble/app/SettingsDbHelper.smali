.class public Lcom/android/bluetooth/ble/app/SettingsDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SettingsDbHelper.java"


# static fields
.field static final COLUMN_DEVICE:Ljava/lang/String; = "device"

.field static final COLUMN_SETTING:Ljava/lang/String; = "setting"

.field static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table settings(device text not null, setting text not null, value text, PRIMARY KEY (device, setting));"

.field static final DATABASE_NAME:Ljava/lang/String; = "miuible.db"

.field static final DATABASE_VERSION:I = 0x1

.field static final TABLE_SETTINGS:Ljava/lang/String; = "settings"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "miuible.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const-string v0, "create table settings(device text not null, setting text not null, value text, PRIMARY KEY (device, setting));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const-string v0, "DROP TABLE IF EXISTS settings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/ble/app/SettingsDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
