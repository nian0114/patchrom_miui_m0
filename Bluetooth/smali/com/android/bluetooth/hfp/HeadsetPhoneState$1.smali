.class Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;
.super Landroid/telephony/PhoneStateListener;
.source "HeadsetPhoneState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetPhoneState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method private cdmaDbmEcioToSignal(Landroid/telephony/SignalStrength;)I
    .locals 13
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    const/4 v12, 0x7

    .line 221
    const/4 v6, 0x0

    .line 222
    .local v6, "levelDbm":I
    const/4 v7, 0x0

    .line 223
    .local v7, "levelEcio":I
    const/4 v2, 0x0

    .line 224
    .local v2, "cdmaIconLevel":I
    const/4 v4, 0x0

    .line 225
    .local v4, "evdoIconLevel":I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 226
    .local v0, "cdmaDbm":I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 228
    .local v1, "cdmaEcio":I
    const/16 v10, -0x4b

    if-lt v0, v10, :cond_2

    const/4 v6, 0x4

    .line 235
    :goto_0
    const/16 v10, -0x5a

    if-lt v1, v10, :cond_6

    const/4 v7, 0x4

    .line 241
    :goto_1
    if-ge v6, v7, :cond_a

    move v2, v6

    .line 244
    :goto_2
    iget-object v10, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v10}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$000(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)Landroid/telephony/ServiceState;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v10}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$000(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v10

    if-eq v10, v12, :cond_0

    iget-object v10, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v10}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$000(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1

    .line 249
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result v3

    .line 250
    .local v3, "evdoEcio":I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v5

    .line 251
    .local v5, "evdoSnr":I
    const/4 v8, 0x0

    .line 252
    .local v8, "levelEvdoEcio":I
    const/4 v9, 0x0

    .line 255
    .local v9, "levelEvdoSnr":I
    const/16 v10, -0x28a

    if-lt v3, v10, :cond_b

    const/4 v8, 0x4

    .line 261
    :goto_3
    if-le v5, v12, :cond_f

    const/4 v9, 0x4

    .line 267
    :goto_4
    if-ge v8, v9, :cond_13

    move v4, v8

    .line 270
    .end local v3    # "evdoEcio":I
    .end local v5    # "evdoSnr":I
    .end local v8    # "levelEvdoEcio":I
    .end local v9    # "levelEvdoSnr":I
    :cond_1
    :goto_5
    if-le v2, v4, :cond_14

    .end local v2    # "cdmaIconLevel":I
    :goto_6
    return v2

    .line 229
    .restart local v2    # "cdmaIconLevel":I
    :cond_2
    const/16 v10, -0x55

    if-lt v0, v10, :cond_3

    const/4 v6, 0x3

    goto :goto_0

    .line 230
    :cond_3
    const/16 v10, -0x5f

    if-lt v0, v10, :cond_4

    const/4 v6, 0x2

    goto :goto_0

    .line 231
    :cond_4
    const/16 v10, -0x64

    if-lt v0, v10, :cond_5

    const/4 v6, 0x1

    goto :goto_0

    .line 232
    :cond_5
    const/4 v6, 0x0

    goto :goto_0

    .line 236
    :cond_6
    const/16 v10, -0x6e

    if-lt v1, v10, :cond_7

    const/4 v7, 0x3

    goto :goto_1

    .line 237
    :cond_7
    const/16 v10, -0x82

    if-lt v1, v10, :cond_8

    const/4 v7, 0x2

    goto :goto_1

    .line 238
    :cond_8
    const/16 v10, -0x96

    if-lt v1, v10, :cond_9

    const/4 v7, 0x1

    goto :goto_1

    .line 239
    :cond_9
    const/4 v7, 0x0

    goto :goto_1

    :cond_a
    move v2, v7

    .line 241
    goto :goto_2

    .line 256
    .restart local v3    # "evdoEcio":I
    .restart local v5    # "evdoSnr":I
    .restart local v8    # "levelEvdoEcio":I
    .restart local v9    # "levelEvdoSnr":I
    :cond_b
    const/16 v10, -0x2ee

    if-lt v3, v10, :cond_c

    const/4 v8, 0x3

    goto :goto_3

    .line 257
    :cond_c
    const/16 v10, -0x384

    if-lt v3, v10, :cond_d

    const/4 v8, 0x2

    goto :goto_3

    .line 258
    :cond_d
    const/16 v10, -0x41a

    if-lt v3, v10, :cond_e

    const/4 v8, 0x1

    goto :goto_3

    .line 259
    :cond_e
    const/4 v8, 0x0

    goto :goto_3

    .line 262
    :cond_f
    const/4 v10, 0x5

    if-le v5, v10, :cond_10

    const/4 v9, 0x3

    goto :goto_4

    .line 263
    :cond_10
    const/4 v10, 0x3

    if-le v5, v10, :cond_11

    const/4 v9, 0x2

    goto :goto_4

    .line 264
    :cond_11
    const/4 v10, 0x1

    if-le v5, v10, :cond_12

    const/4 v9, 0x1

    goto :goto_4

    .line 265
    :cond_12
    const/4 v9, 0x0

    goto :goto_4

    :cond_13
    move v4, v9

    .line 267
    goto :goto_5

    .end local v3    # "evdoEcio":I
    .end local v5    # "evdoSnr":I
    .end local v8    # "levelEvdoEcio":I
    .end local v9    # "levelEvdoSnr":I
    :cond_14
    move v2, v4

    .line 270
    goto :goto_6
.end method

.method private gsmAsuToSignal(Landroid/telephony/SignalStrength;)I
    .locals 5
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 204
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 205
    .local v0, "asu":I
    const/16 v4, 0x10

    if-lt v0, v4, :cond_1

    const/4 v1, 0x5

    .line 210
    :cond_0
    :goto_0
    return v1

    .line 206
    :cond_1
    const/16 v4, 0x8

    if-ge v0, v4, :cond_0

    .line 207
    if-lt v0, v1, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    .line 208
    :cond_2
    if-lt v0, v2, :cond_3

    move v1, v2

    goto :goto_0

    .line 209
    :cond_3
    if-lt v0, v3, :cond_4

    move v1, v3

    goto :goto_0

    .line 210
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    # setter for: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$002(Lcom/android/bluetooth/hfp/HeadsetPhoneState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 178
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    # setter for: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I
    invoke-static {v3, v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$102(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I

    .line 181
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->setRoam(I)V

    .line 183
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->sendDeviceStateChanged()V

    .line 184
    return-void

    :cond_0
    move v0, v2

    .line 178
    goto :goto_0

    :cond_1
    move v1, v2

    .line 181
    goto :goto_1
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 188
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$200(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I

    move-result v0

    .line 189
    .local v0, "prevSignal":I
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->gsmAsuToSignal(Landroid/telephony/SignalStrength;)I

    move-result v2

    # setter for: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I
    invoke-static {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$202(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I

    .line 196
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    # getter for: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$200(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->sendDeviceStateChanged()V

    .line 198
    :cond_0
    return-void

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;->cdmaDbmEcioToSignal(Landroid/telephony/SignalStrength;)I

    move-result v2

    # setter for: Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I
    invoke-static {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->access$202(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I

    goto :goto_0
.end method
