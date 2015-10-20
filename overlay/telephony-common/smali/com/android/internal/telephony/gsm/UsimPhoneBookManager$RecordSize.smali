.class Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$RecordSize;
.super Ljava/lang/Object;
.source "UsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecordSize"
.end annotation


# instance fields
.field mRecordCount:I

.field mRecordSize:I

.field mTotalSize:I

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;[I)V
    .locals 1
    .param p2, "recordSize"    # [I

    .prologue
    .line 1061
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$RecordSize;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1062
    const/4 v0, 0x0

    aget v0, p2, v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$RecordSize;->mRecordSize:I

    .line 1063
    const/4 v0, 0x1

    aget v0, p2, v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$RecordSize;->mTotalSize:I

    .line 1064
    const/4 v0, 0x2

    aget v0, p2, v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$RecordSize;->mRecordCount:I

    .line 1065
    return-void
.end method
