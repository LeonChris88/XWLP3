.class Lcom/android/settings/motion/TurnOverSettings$5;
.super Ljava/lang/Object;
.source "TurnOverSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/TurnOverSettings;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/TurnOverSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/TurnOverSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion/TurnOverSettings$5;->this$0:Lcom/android/settings/motion/TurnOverSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion/TurnOverSettings$5;->this$0:Lcom/android/settings/motion/TurnOverSettings;

    invoke-static {v0}, Lcom/android/settings/motion/TurnOverSettings;->access$800(Lcom/android/settings/motion/TurnOverSettings;)V

    return-void
.end method
