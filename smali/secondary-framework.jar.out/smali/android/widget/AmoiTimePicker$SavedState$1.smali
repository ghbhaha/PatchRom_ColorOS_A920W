.class final Landroid/widget/AmoiTimePicker$SavedState$1;
.super Ljava/lang/Object;
.source "AmoiTimePicker.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AmoiTimePicker$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/widget/AmoiTimePicker$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/widget/AmoiTimePicker$SavedState;
    .locals 2
    .parameter "in"

    .prologue
    .line 343
    new-instance v0, Landroid/widget/AmoiTimePicker$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/widget/AmoiTimePicker$SavedState;-><init>(Landroid/os/Parcel;Landroid/widget/AmoiTimePicker$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 341
    invoke-virtual {p0, p1}, Landroid/widget/AmoiTimePicker$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/widget/AmoiTimePicker$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/widget/AmoiTimePicker$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 347
    new-array v0, p1, [Landroid/widget/AmoiTimePicker$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 341
    invoke-virtual {p0, p1}, Landroid/widget/AmoiTimePicker$SavedState$1;->newArray(I)[Landroid/widget/AmoiTimePicker$SavedState;

    move-result-object v0

    return-object v0
.end method
