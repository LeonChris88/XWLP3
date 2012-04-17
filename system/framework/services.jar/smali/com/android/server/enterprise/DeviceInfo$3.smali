.class Lcom/android/server/enterprise/DeviceInfo$3;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/DeviceInfo;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/DeviceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    invoke-static {v0}, Lcom/android/server/enterprise/DeviceInfo;->access$500(Lcom/android/server/enterprise/DeviceInfo;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    invoke-static {v0}, Lcom/android/server/enterprise/DeviceInfo;->access$800(Lcom/android/server/enterprise/DeviceInfo;)J

    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    invoke-static {v0}, Lcom/android/server/enterprise/DeviceInfo;->access$600(Lcom/android/server/enterprise/DeviceInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    invoke-static {v0}, Lcom/android/server/enterprise/DeviceInfo;->access$500(Lcom/android/server/enterprise/DeviceInfo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/DeviceInfo$3;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    invoke-static {v1}, Lcom/android/server/enterprise/DeviceInfo;->access$900(Lcom/android/server/enterprise/DeviceInfo;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
