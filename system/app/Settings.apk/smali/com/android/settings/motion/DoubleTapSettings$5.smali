.class Lcom/android/settings/motion/DoubleTapSettings$5;
.super Ljava/lang/Object;
.source "DoubleTapSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/DoubleTapSettings;->showGuideDialog()V
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

    iput-object p1, p0, Lcom/android/settings/motion/DoubleTapSettings$5;->this$0:Lcom/android/settings/motion/DoubleTapSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapSettings$5;->this$0:Lcom/android/settings/motion/DoubleTapSettings;

    invoke-static {v0}, Lcom/android/settings/motion/DoubleTapSettings;->access$600(Lcom/android/settings/motion/DoubleTapSettings;)V

    return-void
.end method
