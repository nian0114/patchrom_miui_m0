.class public abstract Lcom/miui/whetstone/IWhetstone$Stub;
.super Landroid/os/Binder;
.source "IWhetstone.java"

# interfaces
.implements Lcom/miui/whetstone/IWhetstone;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/IWhetstone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/IWhetstone$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.whetstone.IWhetstone"

.field static final TRANSACTION_deepClean:I = 0x12

.field static final TRANSACTION_getApplicationThread:I = 0x5

.field static final TRANSACTION_getSmartConfigLevel:I = 0x11

.field static final TRANSACTION_getWhetstoneLevel:I = 0x4

.field static final TRANSACTION_getWhetstonePackage:I = 0x2

.field static final TRANSACTION_injectInputEvent:I = 0xa

.field static final TRANSACTION_installPackage:I = 0xc

.field static final TRANSACTION_isInCharging:I = 0xd

.field static final TRANSACTION_isNeeded:I = 0x1

.field static final TRANSACTION_putSetting:I = 0xb

.field static final TRANSACTION_screenShot:I = 0x9

.field static final TRANSACTION_setWhetstoneLevel:I = 0x3

.field static final TRANSACTION_wifiSmartConfigMacAsyncWithUid:I = 0xe

.field static final TRANSACTION_wifiSmartConfigStartAsync:I = 0x6

.field static final TRANSACTION_wifiSmartConfigStop:I = 0x7

.field static final TRANSACTION_wifiSmartConfigSupport:I = 0x8

.field static final TRANSACTION_wifiSmartConfigUap:I = 0x10

.field static final TRANSACTION_wifiSmartConfigUapAsync:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.miui.whetstone.IWhetstone"

    invoke-virtual {p0, p0, v0}, Lcom/miui/whetstone/IWhetstone$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstone;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.miui.whetstone.IWhetstone"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/miui/whetstone/IWhetstone;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/miui/whetstone/IWhetstone$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/miui/whetstone/IWhetstone$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 283
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v2, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v2, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v2, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 50
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/miui/whetstone/IWhetstone$Stub;->isNeeded(I)Z

    move-result v17

    .line 51
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v17, :cond_0

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    const/4 v2, 0x1

    goto :goto_0

    .line 52
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 57
    .end local v3    # "_arg0":I
    .end local v17    # "_result":Z
    :sswitch_2
    const-string v2, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 60
    .local v3, "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/miui/whetstone/IWhetstone$Stub;->getWhetstonePackage(Landroid/os/IBinder;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;

    move-result-object v17

    .line 61
    .local v17, "_result":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v17, :cond_1

    .line 63
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    const/4 v2, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 69
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    .line 67
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 73
    .end local v3    # "_arg0":Landroid/os/IBinder;
    .end local v17    # "_result":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    :sswitch_3
    const-string v2, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 76
    .local v3, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/miui/whetstone/IWhetstone$Stub;->setWhetstoneLevel(I)V

    .line 77
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    const/4 v2, 0x1

    goto :goto_0

    .line 82
    .end local v3    # "_arg0":I
    :sswitch_4
    const-string v2, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getWhetstoneLevel()I

    move-result v17

    .line 84
    .local v17, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 90
    .end local v17    # "_result":I
    :sswitch_5
    const-string v2, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 93
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/miui/whetstone/IWhetstone$Stub;->getApplicationThread(I)Landroid/os/IBinder;

    move-result-object v17

    .line 94
    .local v17, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 96
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 100
    .end local v3    # "_arg0":I
    .end local v17    # "_result":Landroid/os/IBinder;
    :sswitch_6
    const-string v2, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 110
    .local v6, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .local v8, "_arg5":Landroid/os/IBinder;
    move-object/from16 v2, p0

    .line 113
    invoke-virtual/range {v2 .. v8}, Lcom/miui/whetstone/IWhetstone$Stub;->wifiSmartConfigStartAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 114
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 118
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg5":Landroid/os/IBinder;
    :sswitch_7
    const-string v2, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->wifiSmartConfigStop()V

    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 125
    :sswitch_8
    const-string v2, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->wifiSmartConfigSupport()Z

    move-result v17

    .line 127
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    if-eqz v17, :cond_2

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 128
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 133
    .end local v17    # "_result":Z
    :sswitch_9
    const-string v2, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 137
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 138
    .local v4, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/miui/whetstone/IWhetstone$Stub;->screenShot(II)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 139
    .local v17, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    if-eqz v17, :cond_3

    .line 141
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    const/4 v2, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 147
    :goto_4
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 145
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 151
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v17    # "_result":Landroid/graphics/Bitmap;
    :sswitch_a
    const-string v2, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 154
    sget-object v2, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputEvent;

    .line 160
    .local v3, "_arg0":Landroid/view/InputEvent;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 161
    .restart local v4    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/miui/whetstone/IWhetstone$Stub;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v17

    .line 162
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v17, :cond_5

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 157
    .end local v3    # "_arg0":Landroid/view/InputEvent;
    .end local v4    # "_arg1":I
    .end local v17    # "_result":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/view/InputEvent;
    goto :goto_5

    .line 163
    .restart local v4    # "_arg1":I
    .restart local v17    # "_result":Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    .line 168
    .end local v3    # "_arg0":Landroid/view/InputEvent;
    .end local v4    # "_arg1":I
    .end local v17    # "_result":Z
    :sswitch_b
    const-string v2, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 175
    .restart local v5    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->putSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    .line 176
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    if-eqz v17, :cond_6

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 177
    :cond_6
    const/4 v2, 0x0

    goto :goto_7

    .line 182
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v17    # "_result":Z
    :sswitch_c
    const-string v2, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 185
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 191
    .local v3, "_arg0":Landroid/net/Uri;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageInstallObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver;

    move-result-object v4

    .line 193
    .local v4, "_arg1":Landroid/content/pm/IPackageInstallObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 194
    .local v5, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/miui/whetstone/IWhetstone$Stub;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;I)Z

    move-result v17

    .line 195
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v17, :cond_8

    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 188
    .end local v3    # "_arg0":Landroid/net/Uri;
    .end local v4    # "_arg1":Landroid/content/pm/IPackageInstallObserver;
    .end local v5    # "_arg2":I
    .end local v17    # "_result":Z
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/net/Uri;
    goto :goto_8

    .line 196
    .restart local v4    # "_arg1":Landroid/content/pm/IPackageInstallObserver;
    .restart local v5    # "_arg2":I
    .restart local v17    # "_result":Z
    :cond_8
    const/4 v2, 0x0

    goto :goto_9

    .line 201
    .end local v3    # "_arg0":Landroid/net/Uri;
    .end local v4    # "_arg1":Landroid/content/pm/IPackageInstallObserver;
    .end local v5    # "_arg2":I
    .end local v17    # "_result":Z
    :sswitch_d
    const-string v2, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->isInCharging()Z

    move-result v17

    .line 203
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    if-eqz v17, :cond_9

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 204
    :cond_9
    const/4 v2, 0x0

    goto :goto_a

    .line 209
    .end local v17    # "_result":Z
    :sswitch_e
    const-string v2, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 219
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 221
    .restart local v7    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 223
    .local v8, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    .local v9, "_arg6":Landroid/os/IBinder;
    move-object/from16 v2, p0

    .line 224
    invoke-virtual/range {v2 .. v9}, Lcom/miui/whetstone/IWhetstone$Stub;->wifiSmartConfigMacAsyncWithUid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V

    .line 225
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 229
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg5":I
    .end local v9    # "_arg6":Landroid/os/IBinder;
    :sswitch_f
    const-string v2, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 233
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 235
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 237
    .local v13, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 239
    .restart local v6    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .local v7, "_arg4":Landroid/os/IBinder;
    move-object/from16 v10, p0

    move-object v11, v3

    move-object v12, v4

    move-object v15, v6

    move-object/from16 v16, v7

    .line 240
    invoke-virtual/range {v10 .. v16}, Lcom/miui/whetstone/IWhetstone$Stub;->wifiSmartConfigUapAsync(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/os/IBinder;)V

    .line 241
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 245
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Landroid/os/IBinder;
    .end local v13    # "_arg2":J
    :sswitch_10
    const-string v2, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 249
    .restart local v3    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 251
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 253
    .restart local v13    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg3":Ljava/lang/String;
    move-object/from16 v10, p0

    move-object v11, v3

    move-object v12, v4

    move-object v15, v6

    .line 254
    invoke-virtual/range {v10 .. v15}, Lcom/miui/whetstone/IWhetstone$Stub;->wifiSmartConfigUap(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 255
    .local v17, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 261
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v13    # "_arg2":J
    .end local v17    # "_result":Ljava/lang/String;
    :sswitch_11
    const-string v2, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IWhetstone$Stub;->getSmartConfigLevel()I

    move-result v17

    .line 263
    .local v17, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 269
    .end local v17    # "_result":I
    :sswitch_12
    const-string v2, "com.miui.whetstone.IWhetstone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    .line 272
    sget-object v2, Lcom/miui/whetstone/WhetstoneConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/whetstone/WhetstoneConfig;

    .line 277
    .local v3, "_arg0":Lcom/miui/whetstone/WhetstoneConfig;
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/miui/whetstone/IWhetstone$Stub;->deepClean(Lcom/miui/whetstone/WhetstoneConfig;)I

    move-result v17

    .line 278
    .restart local v17    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 275
    .end local v3    # "_arg0":Lcom/miui/whetstone/WhetstoneConfig;
    .end local v17    # "_result":I
    :cond_a
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Lcom/miui/whetstone/WhetstoneConfig;
    goto :goto_b

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
