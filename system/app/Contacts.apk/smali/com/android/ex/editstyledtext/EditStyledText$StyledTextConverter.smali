.class Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;
.super Ljava/lang/Object;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StyledTextConverter"
.end annotation


# instance fields
.field private mEST:Lcom/android/ex/editstyledtext/EditStyledText;

.field private mHtml:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;

.field final synthetic this$0:Lcom/android/ex/editstyledtext/EditStyledText;


# direct methods
.method public constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText;Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->this$0:Lcom/android/ex/editstyledtext/EditStyledText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    iput-object p3, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->mHtml:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextHtmlConverter;

    return-void
.end method

.method static synthetic access$1200(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;)Lcom/android/ex/editstyledtext/EditStyledText;
    .locals 1

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextConverter;->mEST:Lcom/android/ex/editstyledtext/EditStyledText;

    return-object v0
.end method
