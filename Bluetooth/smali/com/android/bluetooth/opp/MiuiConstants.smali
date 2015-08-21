.class public Lcom/android/bluetooth/opp/MiuiConstants;
.super Ljava/lang/Object;
.source "MiuiConstants.java"


# static fields
.field static final CONNECT_TIME_OUT:J = 0xea60L

.field static final DOWNLOADMANAGER:Ljava/lang/String; = "DownloadManager"

.field static final FEATURE:Ljava/lang/String; = "UseMiuiTransferChannel"

.field static final FILE_LENGTH:J = 0x100000L

.field static final HTTPCLIENT:Ljava/lang/String; = "HttpClient"

.field static final MIUIHTTPD:Ljava/lang/String; = "MiuiHTTPD"

.field static final NANOHTTPD:Ljava/lang/String; = "NanoHTTPD"

.field static final NGINX:Ljava/lang/String; = "nginx"

.field static final WIFI_AP:I = 0x2

.field static final WIFI_DIRECT:I = 0x4

.field static final WLAN:I = 0x1

.field static final discription:Ljava/lang/String; = "UseMiuiTransferChannel"

.field static final download:Ljava/lang/String; = "HttpClient"

.field static final server:Ljava/lang/String; = "NanoHTTPD"

.field static final support:Ljava/lang/String;

.field static final version:Ljava/lang/String; = "1.0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/opp/MiuiConstants;->support:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
