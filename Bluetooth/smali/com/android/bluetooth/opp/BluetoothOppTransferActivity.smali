.class public Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;
.super Lmiui/app/AlertActivity;
.source "BluetoothOppTransferActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field public static final DIALOG_RECEIVE_COMPLETE_FAIL:I = 0x2

.field public static final DIALOG_RECEIVE_COMPLETE_SUCCESS:I = 0x1

.field public static final DIALOG_RECEIVE_ONGOING:I = 0x0

.field public static final DIALOG_SEND_COMPLETE_FAIL:I = 0x5

.field public static final DIALOG_SEND_COMPLETE_SUCCESS:I = 0x4

.field public static final DIALOG_SEND_ONGOING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothOppTransferActivity"

.field private static final V:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mIsComplete:Z

.field private mLine1View:Landroid/widget/TextView;

.field private mLine2View:Landroid/widget/TextView;

.field private mLine3View:Landroid/widget/TextView;

.field private mLine5View:Landroid/widget/TextView;

.field private mNeedUpdateButton:Z

.field private mObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

.field private mPara:Lcom/android/internal/app/AlertController$AlertParams;

.field private mPercentView:Landroid/widget/TextView;

.field private mProgressTransfer:Landroid/widget/ProgressBar;

.field private mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

.field private mUri:Landroid/net/Uri;

.field private mView:Landroid/view/View;

.field private mWhichDialog:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lmiui/app/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mNeedUpdateButton:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mNeedUpdateButton:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->updateProgressbar()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 3

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    .line 246
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    .line 247
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPercentView:Landroid/widget/TextView;

    .line 249
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->customizeViewContent()V

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mNeedUpdateButton:Z

    .line 253
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->updateProgressbar()V

    .line 255
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private customizeViewContent()V
    .locals 8

    .prologue
    const v7, 0x7f0b0011

    const v4, 0x7f0b0010

    const v3, 0x7f0b000f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 264
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne v1, v5, :cond_5

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    const v1, 0x7f06004c

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "tmp":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    const v1, 0x7f06004d

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    const v1, 0x7f06004e

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:I

    int-to-long v3, v3

    invoke-static {p0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    const v2, 0x7f0b0013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-nez v1, :cond_4

    const v1, 0x7f060050

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v0    # "tmp":Ljava/lang/String;
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPercentView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void

    .restart local v0    # "tmp":Ljava/lang/String;
    :cond_4
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne v1, v5, :cond_1

    const v1, 0x7f060057

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 283
    .end local v0    # "tmp":Ljava/lang/String;
    :cond_5
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_9

    .line 285
    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    const v1, 0x7f060059

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .restart local v0    # "tmp":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    const v1, 0x7f06004d

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    const v1, 0x7f06005a

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:I

    int-to-long v3, v3

    invoke-static {p0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    const v2, 0x7f0b0013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    const v1, 0x7f06005b

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 298
    :cond_8
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    const v1, 0x7f06005c

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 302
    .end local v0    # "tmp":Ljava/lang/String;
    :cond_9
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 303
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    const/16 v2, 0x1ee

    if-ne v1, v2, :cond_a

    .line 304
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    const v1, 0x7f06006f

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .restart local v0    # "tmp":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    const v1, 0x7f060054

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    const v1, 0x7f060070

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:I

    int-to-long v3, v3

    invoke-static {p0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :goto_3
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    const v2, 0x7f0b0013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    .line 327
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 315
    .end local v0    # "tmp":Ljava/lang/String;
    :cond_a
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    const v1, 0x7f060053

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "tmp":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    const v1, 0x7f060054

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    const v1, 0x7f060055

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getStatusDescription(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 328
    .end local v0    # "tmp":Ljava/lang/String;
    :cond_b
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 329
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    const v1, 0x7f06005e

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .restart local v0    # "tmp":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine1View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    const v1, 0x7f06005f

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine2View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    const v1, 0x7f060055

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getStatusDescription(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine3View:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mView:Landroid/view/View;

    const v2, 0x7f0b0013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    .line 340
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mLine5View:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private displayWhichDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 179
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v0, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    .line 180
    .local v0, "direction":I
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v2

    .line 181
    .local v2, "isSuccess":Z
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v1

    .line 183
    .local v1, "isComplete":Z
    if-ne v0, v4, :cond_3

    .line 184
    if-ne v1, v4, :cond_2

    .line 185
    if-ne v2, v4, :cond_1

    .line 187
    iput v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    if-nez v2, :cond_0

    .line 189
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 191
    :cond_2
    if-nez v1, :cond_0

    .line 192
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 194
    :cond_3
    if-nez v0, :cond_0

    .line 195
    if-ne v1, v4, :cond_5

    .line 196
    if-ne v2, v4, :cond_4

    .line 197
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 199
    :cond_4
    if-nez v2, :cond_0

    .line 200
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    goto :goto_0

    .line 202
    :cond_5
    if-nez v1, :cond_0

    .line 203
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    goto :goto_0
.end method

.method private setUpDialog()V
    .locals 3

    .prologue
    const v2, 0x1010355

    .line 213
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    .line 214
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f06004b

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 216
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f060052

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 218
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 219
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f060051

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 220
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 238
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 239
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->setupAlert()V

    .line 240
    return-void

    .line 221
    :cond_2
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 222
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f060058

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 223
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 224
    :cond_3
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 225
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconAttrId:I

    .line 226
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f060056

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 227
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 228
    :cond_4
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 229
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f06005d

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 230
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 231
    :cond_5
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 232
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconAttrId:I

    .line 233
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f060060

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 234
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 235
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f060061

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 236
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPara:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0
.end method

.method private updateButton()V
    .locals 6

    .prologue
    const v5, 0x1010355

    const/16 v4, 0x8

    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 455
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 456
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f060058

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 460
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v1, v5}, Lcom/android/internal/app/AlertController;->getIconAttributeResId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 461
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f060056

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 464
    :cond_2
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 465
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f06005d

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 468
    :cond_3
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v1, v5}, Lcom/android/internal/app/AlertController;->getIconAttributeResId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 470
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f060060

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 472
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f060061

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateProgressbar()V
    .locals 5

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    .line 421
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    if-nez v0, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:I

    if-nez v0, :cond_2

    .line 429
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 434
    :goto_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mCurrentBytes:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 436
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mPercentView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:I

    int-to-long v1, v1

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mCurrentBytes:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->formatProgressText(JJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mIsComplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mNeedUpdateButton:Z

    if-eqz v0, :cond_0

    .line 445
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->displayWhichDialog()V

    .line 446
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->updateButton()V

    .line 447
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->customizeViewContent()V

    goto :goto_0

    .line 431
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mProgressTransfer:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x5

    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 350
    packed-switch p2, :pswitch_data_0

    .line 413
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->finish()V

    .line 414
    return-void

    .line 352
    :pswitch_0
    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne v2, v4, :cond_1

    .line 354
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTimeStamp:Ljava/lang/Long;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v2, v3, v4, v5}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->openReceivedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;)V

    .line 358
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 361
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mID:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 363
    :cond_1
    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne v2, v3, :cond_2

    .line 367
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 370
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mID:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 374
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    invoke-static {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->retryTransfer(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;)V

    .line 376
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDestAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 379
    .local v1, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    const v2, 0x7f06006c

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 385
    .end local v1    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 386
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 387
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mID:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 393
    :pswitch_1
    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne v2, v6, :cond_6

    .line 395
    :cond_3
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, ""

    .local v0, "msg":Ljava/lang/String;
    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-nez v2, :cond_5

    const v2, 0x7f06006b

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 403
    :cond_4
    :goto_1
    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 405
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mID:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    :cond_5
    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne v2, v6, :cond_4

    const v2, 0x7f06006e

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 407
    .end local v0    # "msg":Ljava/lang/String;
    :cond_6
    iget v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-ne v2, v3, :cond_0

    .line 409
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 350
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Lmiui/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    .line 138
    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    invoke-direct {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    .line 139
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    .line 140
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    if-nez v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->finish()V

    .line 166
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mTransInfo:Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mIsComplete:Z

    .line 148
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->displayWhichDialog()V

    .line 151
    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mIsComplete:Z

    if-nez v1, :cond_1

    .line 152
    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;)V

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

    .line 153
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 157
    :cond_1
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mWhichDialog:I

    if-eqz v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V

    .line 162
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 165
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->setUpDialog()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 170
    const-string v0, "BluetoothOppTransferActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransferActivity;->mObserver:Lcom/android/bluetooth/opp/BluetoothOppTransferActivity$BluetoothTransferContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    invoke-super {p0}, Lmiui/app/AlertActivity;->onDestroy()V

    return-void
.end method
