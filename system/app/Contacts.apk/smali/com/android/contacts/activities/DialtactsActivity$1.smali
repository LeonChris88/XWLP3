.class Lcom/android/contacts/activities/DialtactsActivity$1;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/DialtactsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$200(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/DialtactsActivity;->access$200(Lcom/android/contacts/activities/DialtactsActivity;)Lcom/sec/android/app/contacts/widget/ContactsViewPager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/widget/ContactsViewPager;->setCurrentItem(IZ)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/activities/DialtactsActivity$1;->this$0:Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/contacts/activities/DialtactsActivity;->access$302(Lcom/android/contacts/activities/DialtactsActivity;I)I

    :cond_1
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method
