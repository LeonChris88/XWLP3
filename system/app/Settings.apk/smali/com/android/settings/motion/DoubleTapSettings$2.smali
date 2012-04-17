.class Lcom/android/settings/motion/DoubleTapSettings$2;
.super Ljava/lang/Object;
.source "DoubleTapSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/DoubleTapSettings;->showMotionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/DoubleTapSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/DoubleTapSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion/DoubleTapSettings$2;->this$0:Lcom/android/settings/motion/DoubleTapSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string v0, "DoubleTapSettings"

    const-string v1, "showMotionDialog, positive click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapSettings$2;->this$0:Lcom/android/settings/motion/DoubleTapSettings;

    invoke-static {v0}, Lcom/android/settings/motion/DoubleTapSettings;->access$100(Lcom/android/settings/motion/DoubleTapSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_double_tap"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapSettings$2;->this$0:Lcom/android/settings/motion/DoubleTapSettings;

    invoke-static {v0}, Lcom/android/settings/motion/DoubleTapSettings;->access$200(Lcom/android/settings/motion/DoubleTapSettings;)V

    return-void
.end method
