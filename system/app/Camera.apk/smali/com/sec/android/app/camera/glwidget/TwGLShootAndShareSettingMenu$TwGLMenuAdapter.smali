.class Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;
.super Ljava/lang/Object;
.source "TwGLShootAndShareSettingMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwGLMenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getNumberOfItems()I

    move-result v0

    return v0
.end method

.method public getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;
    .locals 7

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    move-result-object v4

    const/4 v1, 0x4

    invoke-virtual {v4, v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;

    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;

    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;)Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;

    invoke-static {v6}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;)Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v6

    invoke-static {v1, v2, v3, v6}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v5

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->getZorder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5, v1}, Lcom/sec/android/app/camera/command/MenuCommand;->setZOrder(I)V

    if-nez p2, :cond_1

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;)Lcom/sec/android/app/camera/AbstractCameraActivity;

    move-result-object v1

    const/high16 v2, 0x440a

    const/high16 v3, 0x428c

    if-nez p1, :cond_0

    const/4 v6, 0x0

    :goto_0
    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;)Lcom/sec/android/glview/TwGLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu$TwGLMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareSettingMenu;->getZorder()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->setZOrder(I)V

    :goto_1
    return-object v0

    :cond_0
    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    move-object v0, p2

    goto :goto_1
.end method

.method public reset()V
    .locals 0

    return-void
.end method
