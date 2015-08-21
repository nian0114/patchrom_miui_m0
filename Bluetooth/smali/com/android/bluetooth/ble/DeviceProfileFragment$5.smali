.class Lcom/android/bluetooth/ble/DeviceProfileFragment$5;
.super Ljava/lang/Object;
.source "DeviceProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/ble/DeviceProfileFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

.field final synthetic val$preference:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/ble/DeviceProfileFragment;Landroid/preference/Preference;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$5;->this$0:Lcom/android/bluetooth/ble/DeviceProfileFragment;

    iput-object p2, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$5;->val$preference:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/android/bluetooth/ble/DeviceProfileFragment$5;->val$preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
