.class Lcom/android/settings/motion/TiltSettings$5;
.super Ljava/lang/Object;
.source "TiltSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/android/settings/motion/TiltSettings$5;->this$0:Lcom/android/settings/motion/TiltSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion/TiltSettings$5;->this$0:Lcom/android/settings/motion/TiltSettings;

    invoke-static {v0}, Lcom/android/settings/motion/TiltSettings;->access$600(Lcom/android/settings/motion/TiltSettings;)V

    return-void
.end method
