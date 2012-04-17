.class Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/widget/ContactsViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageChangeListener"
.end annotation


# instance fields
.field private mCurrentPosition:I

.field private mNextPosition:I

.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 1

    const/4 v0, -0x1

    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    iput v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mNextPosition:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;Lcom/android/contacts/activities/DialtactsActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;-><init>(Lcom/android/contacts/activities/DialtactsActivity;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget v1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/contacts/activities/DialtactsActivity;->access$000(Lcom/android/contacts/activities/DialtactsActivity;IZ)V

    :cond_0
    iget v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mNextPosition:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    iget v1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mNextPosition:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/contacts/activities/DialtactsActivity;->access$000(Lcom/android/contacts/activities/DialtactsActivity;IZ)V

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/DialtactsActivity;->invalidateOptionsMenu()V

    iget v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mNextPosition:I

    iput v0, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    if-ne v1, p1, :cond_0

    const-string v1, "DialtactsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Previous position and next position became same ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    iput p1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mNextPosition:I

    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 0

    iput p1, p0, Lcom/android/contacts/activities/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    return-void
.end method
