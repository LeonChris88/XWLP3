.class final Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;
.super Ljava/lang/Object;
.source "GroupChangeOrderListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GroupListItem"
.end annotation


# instance fields
.field public systemId:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/contacts/group/GroupChangeOrderListFragment$GroupListItem;->systemId:Ljava/lang/String;

    return-void
.end method
