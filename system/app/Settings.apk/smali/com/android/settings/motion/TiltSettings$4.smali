.class Lcom/android/settings/motion/TiltSettings$4;
.super Ljava/lang/Object;
.source "TiltSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/TiltSettings;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/TiltSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/TiltSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion/TiltSettings$4;->this$0:Lcom/android/settings/motion/TiltSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/motion/TiltSettings$4;->this$0:Lcom/android/settings/motion/TiltSettings;

    invoke-static {v0}, Lcom/android/settings/motion/TiltSettings;->access$400(Lcom/android/settings/motion/TiltSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_zooming"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/motion/TiltSettings$4;->this$0:Lcom/android/settings/motion/TiltSettings;

    invoke-static {v0}, Lcom/android/settings/motion/TiltSettings;->access$200(Lcom/android/settings/motion/TiltSettings;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion/TiltSettings$4;->this$0:Lcom/android/settings/motion/TiltSettings;

    invoke-static {v0}, Lcom/android/settings/motion/TiltSettings;->access$500(Lcom/android/settings/motion/TiltSettings;)V

    goto :goto_0
.end method
