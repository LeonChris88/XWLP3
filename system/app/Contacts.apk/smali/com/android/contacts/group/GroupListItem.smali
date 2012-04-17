.class public final Lcom/android/contacts/group/GroupListItem;
.super Ljava/lang/Object;
.source "GroupListItem.java"


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field private final mAccountType:Ljava/lang/String;

.field private final mDataSet:Ljava/lang/String;

.field private final mGroupId:J

.field private final mIsFirstGroupInAccount:Z

.field private final mMemberCount:I

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZI)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/group/GroupListItem;->mAccountName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/contacts/group/GroupListItem;->mAccountType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/contacts/group/GroupListItem;->mDataSet:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/contacts/group/GroupListItem;->mGroupId:J

    iput-object p6, p0, Lcom/android/contacts/group/GroupListItem;->mTitle:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/android/contacts/group/GroupListItem;->mIsFirstGroupInAccount:Z

    iput p8, p0, Lcom/android/contacts/group/GroupListItem;->mMemberCount:I

    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupListItem;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getDataSet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupListItem;->mDataSet:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/group/GroupListItem;->mGroupId:J

    return-wide v0
.end method

.method public getMemberCount()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/group/GroupListItem;->mMemberCount:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupListItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isFirstGroupInAccount()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/group/GroupListItem;->mIsFirstGroupInAccount:Z

    return v0
.end method
