.class public Lcom/android/mms/ui/NullDialog;
.super Ljava/lang/Object;
.source "NullDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# static fields
.field private static instance:Lcom/android/mms/ui/NullDialog;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/mms/ui/NullDialog;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/NullDialog;->instance:Lcom/android/mms/ui/NullDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/ui/NullDialog;

    invoke-direct {v0}, Lcom/android/mms/ui/NullDialog;-><init>()V

    sput-object v0, Lcom/android/mms/ui/NullDialog;->instance:Lcom/android/mms/ui/NullDialog;

    :cond_0
    sget-object v0, Lcom/android/mms/ui/NullDialog;->instance:Lcom/android/mms/ui/NullDialog;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public dismiss()V
    .locals 0

    return-void
.end method
