.class Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler$1;
.super Ljava/lang/Object;
.source "JoinedContactFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler$1;->this$1:Lcom/sec/android/app/contacts/list/JoinedContactFragment$QueryHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    return-void
.end method
