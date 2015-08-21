.class Lcom/android/bluetooth/ble/DeviceProfileFragment$6;
.super Ljava/lang/Object;
.source "DeviceProfileFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/ble/DeviceProfileFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/DeviceProfileFragment;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$6;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$6;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    # getter for: Lcom/android/bluetooth/ble/DeviceProfileFragment;->mMiBleProfile:Lmiui/bluetooth/ble/MiBleProfile;
    invoke-static {v0}, Lcom/android/bluetooth/ble/DeviceProfileFragment;->access$000(Lcom/android/bluetooth/ble/DeviceProfileFragment;)Lmiui/bluetooth/ble/MiBleProfile;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, 0x8

    aput-byte v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lmiui/bluetooth/ble/MiBleProfile;->setProperty(I[B)Z

    return-void
.end method
