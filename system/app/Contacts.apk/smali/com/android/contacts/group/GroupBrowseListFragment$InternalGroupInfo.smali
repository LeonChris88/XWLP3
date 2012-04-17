.class public Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;
.super Ljava/lang/Object;
.source "GroupBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternalGroupInfo"
.end annotation


# instance fields
.field private accountName:Ljava/lang/String;

.field private accountType:Ljava/lang/String;

.field private id:J

.field public systemId:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->setId(J)V

    invoke-virtual {p0, p3}, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->setAccountName(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->setAccountType(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->accountType:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->id:J

    return-wide v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->accountName:Ljava/lang/String;

    return-void
.end method

.method public setAccountType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->accountType:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->id:J

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->systemId:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment$InternalGroupInfo;->title:Ljava/lang/String;

    return-void
.end method
