.class Lcom/android/server/enterprise/DeviceInfo$2;
.super Landroid/telephony/PhoneStateListener;
.source "DeviceInfo.java"


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

    iput-object p1, p0, Lcom/android/server/enterprise/DeviceInfo$2;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo$2;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->access$702(Lcom/android/server/enterprise/DeviceInfo;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/DeviceInfo$2;->this$0:Lcom/android/server/enterprise/DeviceInfo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/DeviceInfo;->access$702(Lcom/android/server/enterprise/DeviceInfo;Z)Z

    goto :goto_0
.end method
