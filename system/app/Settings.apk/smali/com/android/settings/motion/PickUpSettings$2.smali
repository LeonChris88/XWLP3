.class Lcom/android/settings/motion/PickUpSettings$2;
.super Ljava/lang/Object;
.source "PickUpSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/PickUpSettings;->showMotionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/PickUpSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/PickUpSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion/PickUpSettings$2;->this$0:Lcom/android/settings/motion/PickUpSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string v0, "PickUpSettings"

    const-string v1, "showMotionDialog, positive click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/motion/PickUpSettings$2;->this$0:Lcom/android/settings/motion/PickUpSettings;

    invoke-static {v0}, Lcom/android/settings/motion/PickUpSettings;->access$100(Lcom/android/settings/motion/PickUpSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_shake"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/motion/PickUpSettings$2;->this$0:Lcom/android/settings/motion/PickUpSettings;

    invoke-static {v0}, Lcom/android/settings/motion/PickUpSettings;->access$200(Lcom/android/settings/motion/PickUpSettings;)V

    return-void
.end method
