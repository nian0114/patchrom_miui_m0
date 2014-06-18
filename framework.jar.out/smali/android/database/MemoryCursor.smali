.class public Landroid/database/MemoryCursor;
.super Landroid/database/AbstractWindowedCursor;
.source "MemoryCursor.java"


# instance fields
.field private final mColumnNames:[Ljava/lang/String;

.field private mDeactivatedWindow:Landroid/database/CursorWindow;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "columnNames"

    .prologue
    invoke-direct {p0}, Landroid/database/AbstractWindowedCursor;-><init>()V

    new-instance v0, Landroid/database/CursorWindow;

    invoke-direct {v0, p1}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/database/MemoryCursor;->setWindow(Landroid/database/CursorWindow;)V

    iput-object p2, p0, Landroid/database/MemoryCursor;->mColumnNames:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fillFromCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/database/MemoryCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorFillWindow(Landroid/database/Cursor;ILandroid/database/CursorWindow;)V

    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/database/MemoryCursor;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/database/MemoryCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0

    return v0
.end method

.method protected onDeactivateOrClose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/database/MemoryCursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/database/MemoryCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/database/MemoryCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    iput-object v0, p0, Landroid/database/MemoryCursor;->mDeactivatedWindow:Landroid/database/CursorWindow;

    iput-object v1, p0, Landroid/database/MemoryCursor;->mWindow:Landroid/database/CursorWindow;

    :cond_0
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->onDeactivateOrClose()V

    invoke-virtual {p0}, Landroid/database/MemoryCursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/database/MemoryCursor;->mDeactivatedWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/database/MemoryCursor;->mDeactivatedWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    iput-object v1, p0, Landroid/database/MemoryCursor;->mDeactivatedWindow:Landroid/database/CursorWindow;

    :cond_1
    return-void
.end method

.method public requery()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/database/MemoryCursor;->mDeactivatedWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/database/MemoryCursor;->mDeactivatedWindow:Landroid/database/CursorWindow;

    invoke-virtual {p0, v0}, Landroid/database/MemoryCursor;->setWindow(Landroid/database/CursorWindow;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/MemoryCursor;->mDeactivatedWindow:Landroid/database/CursorWindow;

    :cond_0
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->requery()Z

    move-result v0

    return v0
.end method
