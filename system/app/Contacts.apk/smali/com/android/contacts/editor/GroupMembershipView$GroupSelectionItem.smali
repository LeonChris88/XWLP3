.class public final Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;
.super Ljava/lang/Object;
.source "GroupMembershipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/GroupMembershipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupSelectionItem"
.end annotation


# instance fields
.field private mChecked:Z

.field private final mGroupId:J

.field private mIsEnabled:Z

.field private mRealTitle:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;ZZLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->mGroupId:J

    iput-object p3, p0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->mTitle:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->mChecked:Z

    iput-boolean p5, p0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->mIsEnabled:Z

    iput-object p6, p0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->mRealTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getGroupId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->mGroupId:J

    return-wide v0
.end method

.method public getRealTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->mRealTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->mChecked:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->mIsEnabled:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->mChecked:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/GroupMembershipView$GroupSelectionItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method
