.class Lcom/android/settings/motion/TiltSensitivityPreference$1;
.super Ljava/lang/Object;
.source "TiltSensitivityPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/TiltSensitivityPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/TiltSensitivityPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/TiltSensitivityPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion/TiltSensitivityPreference$1;->this$0:Lcom/android/settings/motion/TiltSensitivityPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/motion/TiltSensitivityPreference$1;->this$0:Lcom/android/settings/motion/TiltSensitivityPreference;

    const/4 v1, -0x3

    invoke-static {v0, v1}, Lcom/android/settings/motion/TiltSensitivityPreference;->access$002(Lcom/android/settings/motion/TiltSensitivityPreference;I)I

    iget-object v0, p0, Lcom/android/settings/motion/TiltSensitivityPreference$1;->this$0:Lcom/android/settings/motion/TiltSensitivityPreference;

    invoke-static {v0}, Lcom/android/settings/motion/TiltSensitivityPreference;->access$100(Lcom/android/settings/motion/TiltSensitivityPreference;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/motion/TiltSettings;->startSensitivityTest(I)V

    return-void
.end method
