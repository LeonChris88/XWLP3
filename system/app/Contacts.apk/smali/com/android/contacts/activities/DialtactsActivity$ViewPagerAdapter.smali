.class public Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;
.super Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;
.source "DialtactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

.field private mContactTileListFragment:Lcom/android/contacts/list/ContactTileListFragment;

.field private mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;Landroid/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct {p0, p2}, Lcom/sec/android/app/dialertab/widget/DialtactsFragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No fragment at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mDialpadFragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mCallLogFragment:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mContactTileListFragment:Lcom/android/contacts/list/ContactTileListFragment;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/contacts/list/ContactTileListFragment;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactTileListFragment;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mContactTileListFragment:Lcom/android/contacts/list/ContactTileListFragment;

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$ViewPagerAdapter;->mContactTileListFragment:Lcom/android/contacts/list/ContactTileListFragment;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
