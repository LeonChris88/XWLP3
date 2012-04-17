.class Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SipHandler"
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->mActivity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public hideSip()V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageFragment;->isSipVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageFragment$SipHandler;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    sput-boolean v1, Lcom/android/mms/ui/ComposeMessageFragment;->isSipVisible:Z

    :cond_0
    return-void
.end method

.method public hideSoftInputFromWindow(Landroid/os/IBinder;I)V
    .locals 0

    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0

    return-void
.end method

.method public toggleSoftInput(II)V
    .locals 0

    return-void
.end method

.method public toggleSoftInputFromWindow(Landroid/os/IBinder;II)V
    .locals 0

    return-void
.end method

.method public windowDismissed(Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method
