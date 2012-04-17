.class Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ConfirmAddDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/ConfirmAddDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 20

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$400(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$500()Ljava/lang/String;

    move-result-object v17

    const-string v18, "onQueryComplete: discard result, the query handler is reset!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->isFinishing()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v17

    if-eqz v17, :cond_2

    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    packed-switch p1, :pswitch_data_0

    :cond_3
    :goto_1
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :pswitch_0
    const/4 v11, 0x0

    if-eqz p3, :cond_4

    :try_start_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_4

    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-nez v17, :cond_4

    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    const/16 v17, 0x0

    array-length v0, v12

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v12, v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    :cond_4
    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$600(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Landroid/widget/ImageView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v17

    if-eqz p3, :cond_5

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v17

    :pswitch_1
    if-eqz p3, :cond_3

    :try_start_3
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$702(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    const/16 v17, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const-wide/16 v17, 0x0

    cmp-long v17, v13, v17

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v17 .. v19}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$802(Lcom/android/contacts/activities/ConfirmAddDetailActivity;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$700(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$900(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$800(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)J

    move-result-wide v17

    const/16 v19, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v13, v14, v9, v1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1000(Lcom/android/contacts/activities/ConfirmAddDetailActivity;JLandroid/net/Uri;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1100(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1200(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    goto/16 :goto_1

    :pswitch_2
    if-eqz p3, :cond_7

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v17

    if-lez v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1300(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1100(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1200(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    goto/16 :goto_1

    :pswitch_3
    if-eqz p3, :cond_3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    :goto_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v17

    if-nez v17, :cond_c

    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_b

    const/16 v17, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_b

    const-string v17, "persist.sys.country"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v17, "ro.csc.sales_code"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/4 v6, 0x1

    const-string v17, "TNZ"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    const-string v17, "VNZ"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    const-string v17, "VNX"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    const-string v17, "NZC"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    const-string v17, "PH"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    const-string v17, "NO"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    const-string v17, "SE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    :cond_8
    const/4 v6, 0x0

    :cond_9
    const-string v17, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    if-eqz v6, :cond_a

    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :cond_a
    move-object/from16 v0, v16

    invoke-virtual {v4, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    :cond_c
    invoke-static {}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1400()[Ljava/lang/String;

    move-result-object v3

    array-length v8, v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v8, :cond_d

    aget-object v10, v3, v5

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1100(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    move-object/from16 v18, v0

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1500(Lcom/android/contacts/activities/ConfirmAddDetailActivity;Ljava/lang/String;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/activities/ConfirmAddDetailActivity$QueryHandler;->this$0:Lcom/android/contacts/activities/ConfirmAddDetailActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/activities/ConfirmAddDetailActivity;->access$1200(Lcom/android/contacts/activities/ConfirmAddDetailActivity;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
