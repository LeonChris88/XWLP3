.class Lcom/android/settings/motion/PanSettings$4;
.super Ljava/lang/Object;
.source "PanSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/PanSettings;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/PanSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/PanSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion/PanSettings$4;->this$0:Lcom/android/settings/motion/PanSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/motion/PanSettings$4;->this$0:Lcom/android/settings/motion/PanSettings;

    invoke-static {v0}, Lcom/android/settings/motion/PanSettings;->access$400(Lcom/android/settings/motion/PanSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_panning"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/motion/PanSettings$4;->this$0:Lcom/android/settings/motion/PanSettings;

    invoke-static {v0}, Lcom/android/settings/motion/PanSettings;->access$200(Lcom/android/settings/motion/PanSettings;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion/PanSettings$4;->this$0:Lcom/android/settings/motion/PanSettings;

    invoke-static {v0}, Lcom/android/settings/motion/PanSettings;->access$500(Lcom/android/settings/motion/PanSettings;)V

    goto :goto_0
.end method
