.class Lcom/android/settings/motion/DoubleTapSettings$1;
.super Landroid/os/Handler;
.source "DoubleTapSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion/DoubleTapSettings;
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

    iput-object p1, p0, Lcom/android/settings/motion/DoubleTapSettings$1;->this$0:Lcom/android/settings/motion/DoubleTapSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/motion/DoubleTapSettings$1;->this$0:Lcom/android/settings/motion/DoubleTapSettings;

    invoke-static {v0}, Lcom/android/settings/motion/DoubleTapSettings;->access$000(Lcom/android/settings/motion/DoubleTapSettings;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method
