.class Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$3;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardTransportControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 1
    .parameter "userId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    #calls: Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->updateSettings()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;)V

    return-void
.end method
