.class Lcom/android/settings/motion/ShakeTutorial$4;
.super Ljava/lang/Object;
.source "ShakeTutorial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/ShakeTutorial;->onActivityCreated(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/android/settings/motion/ShakeTutorial$4;->this$0:Lcom/android/settings/motion/ShakeTutorial;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion/ShakeTutorial$4;->this$0:Lcom/android/settings/motion/ShakeTutorial;

    invoke-virtual {v0}, Lcom/android/settings/motion/ShakeTutorial;->showGuideDialog()V

    return-void
.end method
