.class Lcom/android/bluetooth/hfp/HeadsetPhoneState;
.super Ljava/lang/Object;
.source "HeadsetPhoneState.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HeadsetPhoneState"


# instance fields
.field private mBatteryCharge:I

.field private mCallState:I

.field private mListening:Z

.field private mMicVolume:I

.field private mNumActive:I

.field private mNumHeld:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRoam:I

.field private mService:I

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignal:I

.field private mSpeakerVolume:I

.field private mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stateMachine"    # Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    .line 41
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumActive:I

    .line 44
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCallState:I

    .line 47
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumHeld:I

    .line 50
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I

    .line 53
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mRoam:I

    .line 56
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    .line 58
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSpeakerVolume:I

    .line 60
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mMicVolume:I

    .line 62
    iput-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mListening:Z

    .line 174
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState$1;-><init>(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 65
    iput-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 66
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)Landroid/telephony/ServiceState;
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/bluetooth/hfp/HeadsetPhoneState;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetPhoneState;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetPhoneState;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/bluetooth/hfp/HeadsetPhoneState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    .prologue
    .line 30
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/bluetooth/hfp/HeadsetPhoneState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/hfp/HeadsetPhoneState;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I

    return p1
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->listenForPhoneState(Z)V

    .line 71
    iput-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 72
    iput-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 73
    return-void
.end method

.method getBatteryCharge()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    return v0
.end method

.method getCallState()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCallState:I

    return v0
.end method

.method getMicVolume()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mMicVolume:I

    return v0
.end method

.method getNumActiveCall()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumActive:I

    return v0
.end method

.method getNumHeldCall()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumHeld:I

    return v0
.end method

.method getRoam()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mRoam:I

    return v0
.end method

.method getService()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    return v0
.end method

.method getSignal()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I

    return v0
.end method

.method getSpeakerVolume()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSpeakerVolume:I

    return v0
.end method

.method isInCall()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 159
    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumActive:I

    if-lt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method listenForPhoneState(Z)V
    .locals 3
    .param p1, "start"    # Z

    .prologue
    const/4 v2, 0x0

    .line 76
    if-eqz p1, :cond_1

    .line 77
    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mListening:Z

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x101

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mListening:Z

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mListening:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 86
    iput-boolean v2, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mListening:Z

    goto :goto_0
.end method

.method sendDeviceStateChanged()V
    .locals 7

    .prologue
    .line 164
    const-string v1, "HeadsetPhoneState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDeviceStateChanged. mService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSignal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRoam="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mRoam:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mBatteryCharge="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mStateMachine:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 168
    .local v0, "sm":Lcom/android/bluetooth/hfp/HeadsetStateMachine;
    if-eqz v0, :cond_0

    .line 169
    const/16 v1, 0xb

    new-instance v2, Lcom/android/bluetooth/hfp/HeadsetDeviceState;

    iget v3, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mService:I

    iget v4, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mRoam:I

    iget v5, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSignal:I

    iget v6, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/bluetooth/hfp/HeadsetDeviceState;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 172
    :cond_0
    return-void
.end method

.method setBatteryCharge(I)V
    .locals 1
    .param p1, "batteryLevel"    # I

    .prologue
    .line 132
    iget v0, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    if-eq v0, p1, :cond_0

    .line 133
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mBatteryCharge:I

    .line 134
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->sendDeviceStateChanged()V

    .line 136
    :cond_0
    return-void
.end method

.method setCallState(I)V
    .locals 0
    .param p1, "callState"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mCallState:I

    .line 109
    return-void
.end method

.method setMicVolume(I)V
    .locals 0
    .param p1, "volume"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mMicVolume:I

    .line 152
    return-void
.end method

.method setNumActiveCall(I)V
    .locals 0
    .param p1, "numActive"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumActive:I

    .line 101
    return-void
.end method

.method setNumHeldCall(I)V
    .locals 0
    .param p1, "numHeldCall"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mNumHeld:I

    .line 117
    return-void
.end method

.method setRoam(I)V
    .locals 0
    .param p1, "roam"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mRoam:I

    .line 129
    return-void
.end method

.method setSpeakerVolume(I)V
    .locals 0
    .param p1, "volume"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->mSpeakerVolume:I

    .line 144
    return-void
.end method
