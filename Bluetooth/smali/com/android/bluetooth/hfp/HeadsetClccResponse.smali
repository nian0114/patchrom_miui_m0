.class Lcom/android/bluetooth/hfp/HeadsetClccResponse;
.super Ljava/lang/Object;
.source "HeadsetPhoneState.java"


# instance fields
.field mDirection:I

.field mIndex:I

.field mMode:I

.field mMpty:Z

.field mNumber:Ljava/lang/String;

.field mStatus:I

.field mType:I


# direct methods
.method public constructor <init>(IIIIZLjava/lang/String;I)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "direction"    # I
    .param p3, "status"    # I
    .param p4, "mode"    # I
    .param p5, "mpty"    # Z
    .param p6, "number"    # Ljava/lang/String;
    .param p7, "type"    # I

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput p1, p0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mIndex:I

    .line 318
    iput p2, p0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mDirection:I

    .line 319
    iput p3, p0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mStatus:I

    .line 320
    iput p4, p0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mMode:I

    .line 321
    iput-boolean p5, p0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mMpty:Z

    .line 322
    iput-object p6, p0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mNumber:Ljava/lang/String;

    .line 323
    iput p7, p0, Lcom/android/bluetooth/hfp/HeadsetClccResponse;->mType:I

    .line 324
    return-void
.end method
