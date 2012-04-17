.class Lcom/android/settings/motion/ShakeTutorial$6;
.super Ljava/lang/Object;
.source "ShakeTutorial.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/ShakeTutorial;->showRetryDialog()V
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

    iput-object p1, p0, Lcom/android/settings/motion/ShakeTutorial$6;->this$0:Lcom/android/settings/motion/ShakeTutorial;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$6;->this$0:Lcom/android/settings/motion/ShakeTutorial;

    invoke-static {v0}, Lcom/android/settings/motion/ShakeTutorial;->access$800(Lcom/android/settings/motion/ShakeTutorial;)V

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$6;->this$0:Lcom/android/settings/motion/ShakeTutorial;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/motion/ShakeTutorial;->access$102(Lcom/android/settings/motion/ShakeTutorial;Z)Z

    invoke-static {}, Lcom/android/settings/motion/ShakeTutorial;->access$200()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$6;->this$0:Lcom/android/settings/motion/ShakeTutorial;

    invoke-static {v0}, Lcom/android/settings/motion/ShakeTutorial;->access$100(Lcom/android/settings/motion/ShakeTutorial;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/motion/ShakeTutorial;->access$200()Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion/ShakeTutorial$6;->this$0:Lcom/android/settings/motion/ShakeTutorial;

    invoke-static {v1}, Lcom/android/settings/motion/ShakeTutorial;->access$300(Lcom/android/settings/motion/ShakeTutorial;)Landroid/hardware/motion/MRListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;)V

    :cond_0
    return-void
.end method
