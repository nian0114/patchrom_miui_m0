.class public Lcom/android/internal/util/slim/ButtonConfig;
.super Ljava/lang/Object;
.source "ButtonConfig.java"


# instance fields
.field private mClickAction:Ljava/lang/String;

.field private mClickActionDescription:Ljava/lang/String;

.field private mIconUri:Ljava/lang/String;

.field private mLongpressAction:Ljava/lang/String;

.field private mLongpressActionDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "clickAction"
    .parameter "clickActionDescription"
    .parameter "longpressAction"
    .parameter "longpressActionDescription"
    .parameter "iconUri"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/slim/ButtonConfig;->mClickAction:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/util/slim/ButtonConfig;->mClickActionDescription:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/util/slim/ButtonConfig;->mLongpressAction:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/util/slim/ButtonConfig;->mLongpressActionDescription:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/util/slim/ButtonConfig;->mIconUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClickAction()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/slim/ButtonConfig;->mClickAction:Ljava/lang/String;

    return-object v0
.end method

.method public getClickActionDescription()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/slim/ButtonConfig;->mClickActionDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/slim/ButtonConfig;->mIconUri:Ljava/lang/String;

    return-object v0
.end method

.method public getLongpressAction()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/slim/ButtonConfig;->mLongpressAction:Ljava/lang/String;

    return-object v0
.end method

.method public getLongpressActionDescription()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/slim/ButtonConfig;->mLongpressActionDescription:Ljava/lang/String;

    return-object v0
.end method

.method public setClickAction(Ljava/lang/String;)V
    .locals 0
    .parameter "action"

    .prologue
    iput-object p1, p0, Lcom/android/internal/util/slim/ButtonConfig;->mClickAction:Ljava/lang/String;

    return-void
.end method

.method public setClickActionDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    iput-object p1, p0, Lcom/android/internal/util/slim/ButtonConfig;->mClickActionDescription:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .parameter "iconUri"

    .prologue
    iput-object p1, p0, Lcom/android/internal/util/slim/ButtonConfig;->mIconUri:Ljava/lang/String;

    return-void
.end method

.method public setLongpressAction(Ljava/lang/String;)V
    .locals 0
    .parameter "action"

    .prologue
    iput-object p1, p0, Lcom/android/internal/util/slim/ButtonConfig;->mLongpressAction:Ljava/lang/String;

    return-void
.end method

.method public setLongpressActionDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    iput-object p1, p0, Lcom/android/internal/util/slim/ButtonConfig;->mLongpressActionDescription:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/slim/ButtonConfig;->mClickActionDescription:Ljava/lang/String;

    return-object v0
.end method
