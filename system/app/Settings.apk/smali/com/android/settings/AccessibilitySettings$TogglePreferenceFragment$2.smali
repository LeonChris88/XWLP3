.class Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment$2;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->installActionBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/AccessibilitySettings$ToggleSwitch;Z)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;

    invoke-static {v2}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->access$900(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;

    invoke-virtual {v1, v0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->showDialog(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;

    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;

    invoke-static {v3}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->access$1000(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;

    invoke-static {v2}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->access$1100(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1, v0}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->showDialog(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;

    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;

    invoke-static {v2}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->access$1000(Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_1
.end method
