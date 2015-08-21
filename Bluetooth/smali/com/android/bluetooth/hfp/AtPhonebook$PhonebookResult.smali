.class Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;
.super Ljava/lang/Object;
.source "AtPhonebook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/AtPhonebook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhonebookResult"
.end annotation


# instance fields
.field public cursor:Landroid/database/Cursor;

.field public nameColumn:I

.field public numberColumn:I

.field public numberPresentationColumn:I

.field final synthetic this$0:Lcom/android/bluetooth/hfp/AtPhonebook;

.field public typeColumn:I


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hfp/AtPhonebook;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;->this$0:Lcom/android/bluetooth/hfp/AtPhonebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hfp/AtPhonebook;Lcom/android/bluetooth/hfp/AtPhonebook$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/bluetooth/hfp/AtPhonebook;
    .param p2, "x1"    # Lcom/android/bluetooth/hfp/AtPhonebook$1;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/AtPhonebook$PhonebookResult;-><init>(Lcom/android/bluetooth/hfp/AtPhonebook;)V

    return-void
.end method
