.class Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter$1;
.super Ljava/lang/Object;
.source "AccessibilityTutorialActivity.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;-><init>(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter$1;->this$0:Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter$1;->this$0:Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;

    invoke-static {v0}, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;->access$200(Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;)Landroid/view/View$OnHoverListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter$1;->this$0:Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;

    invoke-static {v0}, Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;->access$200(Lcom/android/settings/AccessibilityTutorialActivity$AppsAdapter;)Landroid/view/View$OnHoverListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnHoverListener;->onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
