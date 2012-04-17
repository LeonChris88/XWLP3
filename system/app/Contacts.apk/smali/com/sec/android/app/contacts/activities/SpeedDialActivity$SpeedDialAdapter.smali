.class Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;
.super Landroid/widget/BaseAdapter;
.source "SpeedDialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SpeedDialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedDialAdapter"
.end annotation


# instance fields
.field cursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    if-nez p2, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$700(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400c4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v8, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    invoke-direct {v8, p2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, v8, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberAdd:Landroid/widget/ImageView;

    invoke-static {}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$800()[I

    move-result-object v1

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p1, :cond_c

    const-wide/16 v9, -0x1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1000(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v2

    add-int/lit8 v3, p1, -0x1

    aget-wide v2, v2, v3

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1100(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1200()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "speed_dial_data_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v4}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v4

    add-int/lit8 v5, p1, -0x1

    aget-wide v4, v4, v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    const-string v2, "raw_contact_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1300()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    const-wide/16 v6, -0x1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    const-wide/16 v0, -0x1

    cmp-long v0, v9, v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1400(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v0, v6, v7, v8, p1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setItemLayout(JLcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    :goto_2
    return-object p2

    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1000(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1100(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1200()[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key_number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    const-string v2, "raw_contact_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1000(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    const-string v4, "speed_dial_data_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v0, v1

    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_a
    iget-object v0, v8, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v8, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v8, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberAdd:Landroid/widget/ImageView;

    const v1, 0x7f02011b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1400(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    iget-object v0, v8, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mReOrderImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    :goto_3
    iget-object v0, v8, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v8, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_2

    :cond_c
    iget-object v0, v8, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberAdd:Landroid/widget/ImageView;

    const v1, 0x7f020143

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, v8, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const v1, 0x7f0a007d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, v8, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v8, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, v8, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$400(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, v8, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method
