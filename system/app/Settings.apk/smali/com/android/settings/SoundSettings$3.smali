.class Lcom/android/settings/SoundSettings$3;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SoundSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SoundSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    invoke-static {v0}, Lcom/android/settings/SoundSettings;->access$100(Lcom/android/settings/SoundSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    iget-object v1, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/SoundSettings;->access$100(Lcom/android/settings/SoundSettings;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v0, v2, v1, v2}, Lcom/android/settings/SoundSettings;->access$500(Lcom/android/settings/SoundSettings;ILandroid/preference/Preference;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    invoke-static {v0}, Lcom/android/settings/SoundSettings;->access$200(Lcom/android/settings/SoundSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    iget-object v1, p0, Lcom/android/settings/SoundSettings$3;->this$0:Lcom/android/settings/SoundSettings;

    invoke-static {v1}, Lcom/android/settings/SoundSettings;->access$200(Lcom/android/settings/SoundSettings;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v0, v3, v1, v3}, Lcom/android/settings/SoundSettings;->access$500(Lcom/android/settings/SoundSettings;ILandroid/preference/Preference;I)V

    :cond_1
    return-void
.end method
