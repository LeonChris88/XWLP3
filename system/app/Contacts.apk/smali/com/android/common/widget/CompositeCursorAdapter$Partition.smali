.class public Lcom/android/common/widget/CompositeCursorAdapter$Partition;
.super Ljava/lang/Object;
.source "CompositeCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/widget/CompositeCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Partition"
.end annotation


# instance fields
.field count:I

.field cursor:Landroid/database/Cursor;

.field hasHeader:Z

.field idColumnIndex:I

.field showIfEmpty:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->showIfEmpty:Z

    iput-boolean p2, p0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    return-void
.end method


# virtual methods
.method public getHasHeader()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->hasHeader:Z

    return v0
.end method
