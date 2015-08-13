.class public abstract Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;
.super Landroid/os/Binder;
.source "IWhetstoneActivityManager.java"

# interfaces
.implements Lcom/miui/whetstone/server/IWhetstoneActivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/server/IWhetstoneActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.whetstone.server.IWhetstoneActivityManager"

.field static final TRANSACTION_bindWhetstoneService:I = 0x6

.field static final TRANSACTION_checkApplicationsMemoryThreshold:I = 0xb

.field static final TRANSACTION_distoryActivity:I = 0x5

.field static final TRANSACTION_getAndroidCachedEmptyProcessMemory:I = 0x9

.field static final TRANSACTION_getBackgroundAPPS:I = 0x2

.field static final TRANSACTION_getPackageNamebyPid:I = 0x1

.field static final TRANSACTION_getSystemPid:I = 0x7

.field static final TRANSACTION_scheduleStopService:I = 0x4

.field static final TRANSACTION_scheduleTrimMemory:I = 0x3

.field static final TRANSACTION_setPerformanceComponents:I = 0x8

.field static final TRANSACTION_updateApplicationsMemoryThreshold:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p0, p0, v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/server/IWhetstoneActivityManager;
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
    const-string v1, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 10
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
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 42
    :sswitch_0
    const-string v7, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v7, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getPackageNamebyPid(I)Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string v7, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getBackgroundAPPS()[Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 65
    .end local v5    # "_result":[Ljava/lang/String;
    :sswitch_3
    const-string v9, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 69
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 70
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->scheduleTrimMemory(II)Z

    move-result v5

    .line 71
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v5, :cond_0

    move v7, v8

    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 77
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v5    # "_result":Z
    :sswitch_4
    const-string v9, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_2

    .line 82
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 87
    .local v2, "_arg1":Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->scheduleStopService(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v5

    .line 88
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v5, :cond_1

    move v7, v8

    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 85
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    .end local v5    # "_result":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/ComponentName;
    goto :goto_1

    .line 94
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/content/ComponentName;
    :sswitch_5
    const-string v9, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 97
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->distoryActivity(I)Z

    move-result v5

    .line 98
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v5, :cond_3

    move v7, v8

    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 104
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_6
    const-string v7, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 107
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->bindWhetstoneService(Landroid/os/IBinder;)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 113
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_7
    const-string v7, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getSystemPid()I

    move-result v5

    .line 115
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 121
    .end local v5    # "_result":I
    :sswitch_8
    const-string v9, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ComponentName;

    .line 124
    .local v0, "_arg0":[Landroid/content/ComponentName;
    invoke-virtual {p0, v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->setPerformanceComponents([Landroid/content/ComponentName;)Z

    move-result v5

    .line 125
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v5, :cond_4

    move v7, v8

    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 131
    .end local v0    # "_arg0":[Landroid/content/ComponentName;
    .end local v5    # "_result":Z
    :sswitch_9
    const-string v7, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getAndroidCachedEmptyProcessMemory()J

    move-result-wide v5

    .line 133
    .local v5, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 139
    .end local v5    # "_result":J
    :sswitch_a
    const-string v7, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 142
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateApplicationsMemoryThreshold(Ljava/util/List;)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 148
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_b
    const-string v7, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 154
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 155
    .local v3, "_arg2":J
    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
