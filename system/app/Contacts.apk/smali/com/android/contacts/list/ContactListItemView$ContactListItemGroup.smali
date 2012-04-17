.class public Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;
.super Landroid/view/ViewGroup;
.source "ContactListItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactListItemGroup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactListItemView;


# direct methods
.method public constructor <init>(Lcom/android/contacts/list/ContactListItemView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected layoutLeftSide(IIII)I
    .locals 13

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$4200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    add-int v5, p4, v9

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$4300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    add-int v7, p2, v9

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v9

    add-int v10, v5, v8

    add-int v11, v7, v6

    invoke-virtual {v9, v5, v7, v10, v11}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$4400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    add-int/2addr v9, v8

    add-int/2addr v5, v9

    :cond_0
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$4200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    add-int v4, p4, v9

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/LinearLayout;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$4300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    add-int/2addr v9, p2

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$2000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$4500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int v2, v9, v10

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/LinearLayout;

    move-result-object v9

    add-int v10, v4, v1

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$1900(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    add-int/2addr v11, v2

    invoke-virtual {v9, v4, v2, v10, v11}, Landroid/widget/LinearLayout;->layout(IIII)V

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$4400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v9

    add-int/2addr v9, v1

    add-int/2addr v4, v9

    :cond_1
    if-le v5, v4, :cond_2

    move/from16 p4, v5

    :goto_0
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1400(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$1400(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->getMeasuredWidth()I

    move-result v3

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$1400(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v9

    add-int v10, p4, v3

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$3200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    sub-int v11, p1, v11

    move/from16 v0, p4

    invoke-virtual {v9, v0, p2, v10, v11}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->layout(IIII)V

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/android/contacts/list/ContactListItemView;->access$4602(Lcom/android/contacts/list/ContactListItemView;Z)Z

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$4700(Lcom/android/contacts/list/ContactListItemView;)V

    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v9}, Lcom/android/contacts/list/ContactListItemView;->access$4800(Lcom/android/contacts/list/ContactListItemView;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$3700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int/2addr v10, p2

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$3500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    add-int v11, v11, p4

    iget-object v12, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$3700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v12

    sub-int v12, p1, v12

    move/from16 v0, p4

    invoke-virtual {v9, v0, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_1
    return p4

    :cond_2
    move/from16 p4, v4

    goto :goto_0

    :cond_3
    iget-object v9, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/contacts/list/ContactListItemView;->access$4602(Lcom/android/contacts/list/ContactListItemView;Z)Z

    goto :goto_1
.end method

.method protected layoutRightSide(IIII)I
    .locals 15

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/contacts/list/ContactListItemView;->isInvisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_0
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->getMeasuredWidth()I

    move-result v4

    sub-int p4, p4, v4

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v10

    add-int v11, p4, v4

    iget-object v12, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$3200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v12

    sub-int v12, p1, v12

    move/from16 v0, p4

    move/from16 v1, p2

    invoke-virtual {v10, v0, v1, v11, v12}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->layout(IIII)V

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/contacts/list/ContactListItemView;->access$3302(Lcom/android/contacts/list/ContactListItemView;Z)Z

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$3400(Lcom/android/contacts/list/ContactListItemView;)V

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$3500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    sub-int p4, p4, v10

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$3600(Lcom/android/contacts/list/ContactListItemView;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$3900(Lcom/android/contacts/list/ContactListItemView;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$3700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    add-int v11, v11, p2

    iget-object v12, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$3800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$3500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v12

    add-int v12, v12, p4

    iget-object v13, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v13}, Lcom/android/contacts/list/ContactListItemView;->access$3700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v13

    sub-int v13, p1, v13

    iget-object v14, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v14}, Lcom/android/contacts/list/ContactListItemView;->access$3800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v13, v14

    move/from16 v0, p4

    invoke-virtual {v10, v0, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$4000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int v9, p4, v10

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$4000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int v8, p4, v10

    :goto_1
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v7

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v5

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$4300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int v6, p2, v10

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v10

    sub-int v11, v9, v7

    add-int v12, v6, v5

    invoke-virtual {v10, v11, v6, v9, v12}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$4400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int/2addr v10, v7

    sub-int/2addr v9, v10

    :cond_1
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$4300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int v10, v10, p2

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$2000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$4500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    add-int v3, v10, v11

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/LinearLayout;

    move-result-object v10

    sub-int v11, v8, v2

    iget-object v12, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$1900(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v12

    add-int/2addr v12, v3

    invoke-virtual {v10, v11, v3, v8, v12}, Landroid/widget/LinearLayout;->layout(IIII)V

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$4400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    add-int/2addr v10, v2

    sub-int/2addr v8, v10

    :cond_2
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_3
    if-ge v9, v8, :cond_6

    move/from16 p4, v9

    :goto_2
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$1400(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1400(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->getMeasuredWidth()I

    move-result v4

    sub-int p4, p4, v4

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$1400(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v10

    add-int v11, p4, v4

    iget-object v12, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$3200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v12

    sub-int v12, p1, v12

    move/from16 v0, p4

    move/from16 v1, p2

    invoke-virtual {v10, v0, v1, v11, v12}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->layout(IIII)V

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/contacts/list/ContactListItemView;->access$4602(Lcom/android/contacts/list/ContactListItemView;Z)Z

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$4700(Lcom/android/contacts/list/ContactListItemView;)V

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$3500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    sub-int p4, p4, v10

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$4800(Lcom/android/contacts/list/ContactListItemView;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$3700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    add-int v11, v11, p2

    iget-object v12, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$3500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v12

    add-int v12, v12, p4

    iget-object v13, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v13}, Lcom/android/contacts/list/ContactListItemView;->access$3700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v13

    sub-int v13, p1, v13

    move/from16 v0, p4

    invoke-virtual {v10, v0, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_3
    return p4

    :cond_4
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$3900(Lcom/android/contacts/list/ContactListItemView;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$3700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    add-int v11, v11, p2

    iget-object v12, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v12}, Lcom/android/contacts/list/ContactListItemView;->access$3500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v12

    add-int v12, v12, p4

    iget-object v13, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v13}, Lcom/android/contacts/list/ContactListItemView;->access$3700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v13

    sub-int v13, p1, v13

    move/from16 v0, p4

    invoke-virtual {v10, v0, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_0

    :cond_5
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/contacts/list/ContactListItemView;->access$3302(Lcom/android/contacts/list/ContactListItemView;Z)Z

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$4100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    sub-int v10, p4, v10

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$4200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    sub-int v9, v10, v11

    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$4100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    sub-int v10, p4, v10

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v11}, Lcom/android/contacts/list/ContactListItemView;->access$4200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v11

    sub-int v8, v10, v11

    goto/16 :goto_1

    :cond_6
    move/from16 p4, v8

    goto/16 :goto_2

    :cond_7
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v10}, Lcom/android/contacts/list/ContactListItemView;->access$4100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v10

    sub-int p4, p4, v10

    goto/16 :goto_2

    :cond_8
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/android/contacts/list/ContactListItemView;->access$4602(Lcom/android/contacts/list/ContactListItemView;Z)Z

    goto :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 22

    sub-int v9, p5, p3

    sub-int v18, p4, p2

    const/16 v16, 0x0

    move v3, v9

    const-string v6, ""

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string v19, "he"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    const-string v19, "iw"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->mPaddingRight:I

    move/from16 v19, v0

    sub-int v13, p4, v19

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v0, v9, v1, v3, v2}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->layoutLeftSide(IIII)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/CheckBox;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/CheckBox;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v5

    sub-int v19, v3, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$1700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    sub-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    add-int v4, v16, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    sub-int v13, v13, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/CheckBox;

    move-result-object v19

    sub-int v20, v13, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$1700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v4

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v4, v13, v2}, Landroid/widget/CheckBox;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v19, v19, v5

    sub-int v13, v13, v19

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2500(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/QuickContactBadge;

    move-result-object v19

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2500(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/QuickContactBadge;

    move-result-object v12

    :goto_0
    if-eqz v12, :cond_3

    sub-int v19, v3, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    sub-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    add-int v11, v16, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    sub-int v13, v13, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2800(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    sub-int v19, v13, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v11

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v11, v13, v1}, Landroid/view/View;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$2900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$2800(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    sub-int v20, v13, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v11

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v11, v13, v2}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2800(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    sub-int v13, v13, v19

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v17, v19, v20

    add-int v19, v3, v16

    sub-int v19, v19, v17

    div-int/lit8 v15, v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    sub-int v20, v13, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v10, v15, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v15, v15, v19

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    sub-int v14, v13, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$1300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$1300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v10, v15, v14, v1}, Landroid/widget/TextView;->layout(IIII)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$1300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-nez v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v15, v15, v19

    :cond_7
    move v8, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    sub-int v20, v13, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v10, v15, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v15, v15, v19

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v19

    sub-int v19, v13, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    sub-int v8, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    sub-int v20, v13, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v8, v15, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$3100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    sub-int v8, v8, v19

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v10, v15, v8, v1}, Landroid/widget/TextView;->layout(IIII)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-nez v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v15, v15, v19

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$1000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$1000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    sub-int v20, v13, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v10, v15, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    :cond_d
    :goto_1
    return-void

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v12

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->mPaddingRight:I

    move/from16 v19, v0

    sub-int v19, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v0, v9, v1, v3, v2}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->layoutRightSide(IIII)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/CheckBox;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/CheckBox;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v5

    sub-int v19, v3, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$1700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    sub-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    add-int v4, v16, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v10, v10, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/CheckBox;

    move-result-object v19

    add-int v20, v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$2400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$1700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v4

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v10, v4, v1, v2}, Landroid/widget/CheckBox;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v19, v19, v5

    add-int v10, v10, v19

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2500(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/QuickContactBadge;

    move-result-object v19

    if-eqz v19, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2500(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/QuickContactBadge;

    move-result-object v12

    :goto_2
    if-eqz v12, :cond_12

    sub-int v19, v3, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    sub-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    add-int v11, v16, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2700(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v10, v10, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2800(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v19, v19, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v11

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v10, v11, v0, v1}, Landroid/view/View;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$2900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$2800(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v11

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v10, v11, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2800(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v10, v10, v19

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v17, v19, v20

    add-int v19, v3, v16

    sub-int v19, v19, v17

    div-int/lit8 v15, v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v15, v13, v2}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v15, v15, v19

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v14, v10, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$1300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$1300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v15, v13, v1}, Landroid/widget/TextView;->layout(IIII)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$1300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-nez v19, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v15, v15, v19

    :cond_16
    move v7, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v15, v13, v2}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v15, v15, v19

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v19

    add-int v19, v19, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v7, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v15, v7, v2}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$3100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v7, v7, v19

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v7, v15, v13, v1}, Landroid/widget/TextView;->layout(IIII)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-nez v19, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_1b

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v19

    add-int v15, v15, v19

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$1000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$1000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/list/ContactListItemView;->access$3000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v20

    add-int v20, v20, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/ContactListItemView;->access$400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v21

    add-int v21, v21, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v15, v13, v2}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_1

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/ContactListItemView;->access$2600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v12

    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {v6, p1}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->resolveSize(II)I

    move-result v2

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v1

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v3, v6}, Lcom/android/contacts/list/ContactListItemView;->access$102(Lcom/android/contacts/list/ContactListItemView;I)I

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v3, v6}, Lcom/android/contacts/list/ContactListItemView;->access$202(Lcom/android/contacts/list/ContactListItemView;I)I

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v3, v6}, Lcom/android/contacts/list/ContactListItemView;->access$302(Lcom/android/contacts/list/ContactListItemView;I)I

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v3, v6}, Lcom/android/contacts/list/ContactListItemView;->access$402(Lcom/android/contacts/list/ContactListItemView;I)I

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v3, v6}, Lcom/android/contacts/list/ContactListItemView;->access$502(Lcom/android/contacts/list/ContactListItemView;I)I

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/widget/TextView;->measure(II)V

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->access$102(Lcom/android/contacts/list/ContactListItemView;I)I

    :cond_0
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/widget/TextView;->measure(II)V

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$700(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->access$202(Lcom/android/contacts/list/ContactListItemView;I)I

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/widget/TextView;->measure(II)V

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->access$302(Lcom/android/contacts/list/ContactListItemView;I)I

    :cond_2
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/widget/TextView;->measure(II)V

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v5}, Lcom/android/contacts/list/ContactListItemView;->access$900(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->access$302(Lcom/android/contacts/list/ContactListItemView;I)I

    :cond_3
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$1000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$1000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/widget/TextView;->measure(II)V

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$1000(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->access$402(Lcom/android/contacts/list/ContactListItemView;I)I

    :cond_4
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$1200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v5}, Lcom/android/contacts/list/ContactListItemView;->access$1200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/ImageView;->measure(II)V

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$1100(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->access$502(Lcom/android/contacts/list/ContactListItemView;I)I

    :cond_5
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$1300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$1300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/widget/TextView;->measure(II)V

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v5}, Lcom/android/contacts/list/ContactListItemView;->access$1300(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->access$502(Lcom/android/contacts/list/ContactListItemView;I)I

    :cond_6
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$100(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$300(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$400(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$500(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->mPaddingTop:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->mPaddingBottom:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$1400(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$1400(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->measure(II)V

    :cond_7
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->isInvisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$1500(Lcom/android/contacts/list/ContactListItemView;)Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Lcom/android/contacts/list/ContactListItemView$DontPressWithParentImageView;->measure(II)V

    :cond_9
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/widget/CheckBox;->measure(II)V

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$1600(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->access$1702(Lcom/android/contacts/list/ContactListItemView;I)I

    :cond_a
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$1800(Lcom/android/contacts/list/ContactListItemView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v4}, Lcom/android/contacts/list/ContactListItemView;->access$2000(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/contacts/list/ContactListItemView;->access$1902(Lcom/android/contacts/list/ContactListItemView;I)I

    :cond_b
    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$2100(Lcom/android/contacts/list/ContactListItemView;)V

    iget-object v3, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->this$0:Lcom/android/contacts/list/ContactListItemView;

    invoke-static {v3}, Lcom/android/contacts/list/ContactListItemView;->access$2200(Lcom/android/contacts/list/ContactListItemView;)I

    move-result v3

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->mPaddingTop:I

    add-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/android/contacts/list/ContactListItemView$ContactListItemGroup;->setMeasuredDimension(II)V

    return-void
.end method
