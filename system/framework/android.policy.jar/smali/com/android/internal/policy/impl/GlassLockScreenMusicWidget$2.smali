.class Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;
.super Landroid/content/BroadcastReceiver;
.source "GlassLockScreenMusicWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/16 v11, 0x12c3

    const/16 v10, 0x12c2

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-static {v8}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$100(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "com.android.music.musicservicecommand.mediainfo"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "playing"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-ne v8, v3, :cond_2

    move v6, v3

    :goto_0
    if-ne v6, v3, :cond_0

    iget-object v8, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-static {v8, v3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$102(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;I)I

    :cond_0
    const-string v8, "isStop"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-ne v8, v3, :cond_3

    :goto_1
    const-string v7, "mediauri"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v10, v6, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v6, v7

    goto :goto_0

    :cond_3
    move v3, v7

    goto :goto_1

    :cond_4
    const-string v8, "com.samsung.music.musicservicecommand.mediainfo"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "playing"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-ne v8, v3, :cond_5

    const/4 v6, 0x1

    :goto_3
    iget-object v8, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$102(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;I)I

    const-string v8, "hostType"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_6

    move v2, v3

    :goto_4
    if-ne v2, v3, :cond_7

    new-array v1, v9, [Ljava/lang/String;

    const-string v8, "title"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    const-string v7, "artist"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v3

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v11, v6, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    :cond_6
    move v2, v7

    goto :goto_4

    :cond_7
    const-string v7, "mediauri"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v10, v6, v2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_8
    iget-object v8, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-static {v8}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$100(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v8

    if-ne v8, v3, :cond_c

    const-string v8, "com.android.music.musicservicecommand.mediainfo"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "playing"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-ne v8, v3, :cond_a

    move v6, v3

    :goto_5
    if-ne v6, v3, :cond_9

    iget-object v8, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-static {v8, v3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$102(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;I)I

    :cond_9
    const-string v8, "isStop"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-ne v8, v3, :cond_b

    :goto_6
    const-string v7, "mediauri"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v10, v6, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_a
    move v6, v7

    goto :goto_5

    :cond_b
    move v3, v7

    goto :goto_6

    :cond_c
    iget-object v8, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-static {v8}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$100(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)I

    move-result v8

    if-ne v8, v9, :cond_1

    const-string v8, "com.samsung.music.musicservicecommand.mediainfo"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "playing"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-ne v8, v3, :cond_d

    const/4 v6, 0x1

    :goto_7
    iget-object v8, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-static {v8, v9}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$102(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;I)I

    const-string v8, "hostType"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_e

    move v2, v3

    :goto_8
    if-ne v2, v3, :cond_f

    new-array v1, v9, [Ljava/lang/String;

    const-string v8, "title"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    const-string v7, "artist"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v3

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v11, v6, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_d
    const/4 v6, 0x0

    goto :goto_7

    :cond_e
    move v2, v7

    goto :goto_8

    :cond_f
    const-string v7, "mediauri"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v10, v6, v2, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-static {v7}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->access$200(Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2
.end method
