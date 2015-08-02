.class public Lcom/android/internal/telephony/OppoRIL;
.super Lcom/android/internal/telephony/RIL;
.source "OppoRIL.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkMode"    # I
    .param p3, "cdmaSubscription"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;II)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/OppoRIL;->mQANElements:I

    return-void
.end method
