.class Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$1;
.super Ljava/lang/Object;
.source "SingleSpellCheckerPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$1;->this$0:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference$1;->this$0:Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;

    invoke-static {v0, p1}, Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;->access$000(Lcom/android/settings/inputmethod/SingleSpellCheckerPreference;Landroid/view/View;)V

    return-void
.end method
