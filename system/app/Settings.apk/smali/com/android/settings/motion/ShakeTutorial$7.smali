.class Lcom/android/settings/motion/ShakeTutorial$7;
.super Ljava/lang/Object;
.source "ShakeTutorial.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/ShakeTutorial;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/ShakeTutorial;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/ShakeTutorial;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion/ShakeTutorial$7;->this$0:Lcom/android/settings/motion/ShakeTutorial;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$7;->this$0:Lcom/android/settings/motion/ShakeTutorial;

    invoke-static {v0}, Lcom/android/settings/motion/ShakeTutorial;->access$900(Lcom/android/settings/motion/ShakeTutorial;)V

    return-void
.end method
