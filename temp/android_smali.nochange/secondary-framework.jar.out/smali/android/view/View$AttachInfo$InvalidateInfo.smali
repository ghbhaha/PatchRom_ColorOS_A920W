.class Landroid/view/View$AttachInfo$InvalidateInfo;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/util/Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View$AttachInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InvalidateInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/util/Poolable",
        "<",
        "Landroid/view/View$AttachInfo$InvalidateInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final POOL_LIMIT:I = 0xa

.field private static final sPool:Landroid/util/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pool",
            "<",
            "Landroid/view/View$AttachInfo$InvalidateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field bottom:I

.field left:I

.field private mIsPooled:Z

.field private mNext:Landroid/view/View$AttachInfo$InvalidateInfo;

.field right:I

.field target:Landroid/view/View;

.field top:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17715
    new-instance v0, Landroid/view/View$AttachInfo$InvalidateInfo$1;

    invoke-direct {v0}, Landroid/view/View$AttachInfo$InvalidateInfo$1;-><init>()V

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Pools;->finitePool(Landroid/util/PoolableManager;I)Landroid/util/Pool;

    move-result-object v0

    invoke-static {v0}, Landroid/util/Pools;->synchronizedPool(Landroid/util/Pool;)Landroid/util/Pool;

    move-result-object v0

    sput-object v0, Landroid/view/View$AttachInfo$InvalidateInfo;->sPool:Landroid/util/Pool;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 17713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static acquire()Landroid/view/View$AttachInfo$InvalidateInfo;
    .locals 1

    .prologue
    .line 17749
    sget-object v0, Landroid/view/View$AttachInfo$InvalidateInfo;->sPool:Landroid/util/Pool;

    invoke-interface {v0}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v0

    check-cast v0, Landroid/view/View$AttachInfo$InvalidateInfo;

    return-object v0
.end method


# virtual methods
.method public getNextPoolable()Landroid/view/View$AttachInfo$InvalidateInfo;
    .locals 1

    .prologue
    .line 17745
    iget-object v0, p0, Landroid/view/View$AttachInfo$InvalidateInfo;->mNext:Landroid/view/View$AttachInfo$InvalidateInfo;

    return-object v0
.end method

.method public bridge synthetic getNextPoolable()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17713
    invoke-virtual {p0}, Landroid/view/View$AttachInfo$InvalidateInfo;->getNextPoolable()Landroid/view/View$AttachInfo$InvalidateInfo;

    move-result-object v0

    return-object v0
.end method

.method public isPooled()Z
    .locals 1

    .prologue
    .line 17757
    iget-boolean v0, p0, Landroid/view/View$AttachInfo$InvalidateInfo;->mIsPooled:Z

    return v0
.end method

.method release()V
    .locals 1

    .prologue
    .line 17753
    sget-object v0, Landroid/view/View$AttachInfo$InvalidateInfo;->sPool:Landroid/util/Pool;

    invoke-interface {v0, p0}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .line 17754
    return-void
.end method

.method public setNextPoolable(Landroid/view/View$AttachInfo$InvalidateInfo;)V
    .locals 0
    .parameter "element"

    .prologue
    .line 17741
    iput-object p1, p0, Landroid/view/View$AttachInfo$InvalidateInfo;->mNext:Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 17742
    return-void
.end method

.method public bridge synthetic setNextPoolable(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17713
    check-cast p1, Landroid/view/View$AttachInfo$InvalidateInfo;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/view/View$AttachInfo$InvalidateInfo;->setNextPoolable(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    return-void
.end method

.method public setPooled(Z)V
    .locals 0
    .parameter "isPooled"

    .prologue
    .line 17761
    iput-boolean p1, p0, Landroid/view/View$AttachInfo$InvalidateInfo;->mIsPooled:Z

    .line 17762
    return-void
.end method
