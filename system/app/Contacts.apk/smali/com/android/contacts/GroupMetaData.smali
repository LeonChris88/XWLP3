.class public final Lcom/android/contacts/GroupMetaData;
.super Ljava/lang/Object;
.source "GroupMetaData.java"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mDataSet:Ljava/lang/String;

.field private mDefaultGroup:Z

.field private mFavorites:Z

.field private mGroupId:J

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/GroupMetaData;->mAccountName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/contacts/GroupMetaData;->mAccountType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/contacts/GroupMetaData;->mDataSet:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/contacts/GroupMetaData;->mGroupId:J

    iput-object p6, p0, Lcom/android/contacts/GroupMetaData;->mTitle:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/android/contacts/GroupMetaData;->mDefaultGroup:Z

    iput-boolean p8, p0, Lcom/android/contacts/GroupMetaData;->mFavorites:Z

    return-void
.end method


# virtual methods
.method public getGroupId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/GroupMetaData;->mGroupId:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/GroupMetaData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isDefaultGroup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/GroupMetaData;->mDefaultGroup:Z

    return v0
.end method
