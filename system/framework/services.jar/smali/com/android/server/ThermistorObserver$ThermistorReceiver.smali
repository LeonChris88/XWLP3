.class final Lcom/android/server/ThermistorObserver$ThermistorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ThermistorObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThermistorObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThermistorReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ThermistorObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/ThermistorObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ThermistorObserver$ThermistorReceiver;->this$0:Lcom/android/server/ThermistorObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ThermistorObserver;Lcom/android/server/ThermistorObserver$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/ThermistorObserver$ThermistorReceiver;-><init>(Lcom/android/server/ThermistorObserver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v3, "TO.TestIntent.STOP.TEMPERATURE"

    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$1400()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/ThermistorObserver;->access$1402(I)I

    const-string v3, "TO.TestIntent.CONTROL.SET.TEMPERATURE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    const-string v3, "TO.TestIntent.SET.CONTROL.TIME"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/ThermistorObserver$ThermistorReceiver;->this$0:Lcom/android/server/ThermistorObserver;

    invoke-static {v3}, Lcom/android/server/ThermistorObserver;->access$1500(Lcom/android/server/ThermistorObserver;)[[I

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/ThermistorObserver$ThermistorReceiver;->this$0:Lcom/android/server/ThermistorObserver;

    invoke-static {v3}, Lcom/android/server/ThermistorObserver;->access$1500(Lcom/android/server/ThermistorObserver;)[[I

    move-result-object v3

    aget-object v3, v3, v2

    const/4 v4, 0x0

    aget v5, v0, v2

    aput v5, v3, v4

    iget-object v3, p0, Lcom/android/server/ThermistorObserver$ThermistorReceiver;->this$0:Lcom/android/server/ThermistorObserver;

    invoke-static {v3}, Lcom/android/server/ThermistorObserver;->access$1500(Lcom/android/server/ThermistorObserver;)[[I

    move-result-object v3

    aget-object v3, v3, v2

    const/4 v4, 0x1

    aget v5, v1, v2

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/ThermistorObserver$ThermistorReceiver;->this$0:Lcom/android/server/ThermistorObserver;

    invoke-static {v3}, Lcom/android/server/ThermistorObserver;->access$1600(Lcom/android/server/ThermistorObserver;)V

    return-void
.end method
