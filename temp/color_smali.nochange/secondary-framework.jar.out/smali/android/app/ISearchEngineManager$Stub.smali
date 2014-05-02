.class public abstract Landroid/app/ISearchEngineManager$Stub;
.super Landroid/os/Binder;
.source "ISearchEngineManager.java"

# interfaces
.implements Landroid/app/ISearchEngineManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ISearchEngineManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ISearchEngineManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.ISearchEngineManager"

.field static final TRANSACTION_getAvailableSearchEngines:I = 0x1

.field static final TRANSACTION_getBestMatchSearchEngine:I = 0x3

.field static final TRANSACTION_getDefaultSearchEngine:I = 0x2

.field static final TRANSACTION_getSearchEngineBy:I = 0x4

.field static final TRANSACTION_setDefaultSearchEngine:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.app.ISearchEngineManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ISearchEngineManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/ISearchEngineManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.app.ISearchEngineManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/ISearchEngineManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/app/ISearchEngineManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/app/ISearchEngineManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/ISearchEngineManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 43
    :sswitch_0
    const-string v4, "android.app.ISearchEngineManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v4, "android.app.ISearchEngineManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/app/ISearchEngineManager$Stub;->getAvailableSearchEngines()Ljava/util/List;

    move-result-object v3

    .line 50
    .local v3, _result:Ljava/util/List;,"Ljava/util/List<Landroid/app/SearchEngineInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 56
    .end local v3           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/app/SearchEngineInfo;>;"
    :sswitch_2
    const-string v6, "android.app.ISearchEngineManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Landroid/app/ISearchEngineManager$Stub;->getDefaultSearchEngine()Landroid/app/SearchEngineInfo;

    move-result-object v2

    .line 58
    .local v2, _result:Landroid/app/SearchEngineInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {v2, p3, v5}, Landroid/app/SearchEngineInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 70
    .end local v2           #_result:Landroid/app/SearchEngineInfo;
    :sswitch_3
    const-string v6, "android.app.ISearchEngineManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/ISearchEngineManager$Stub;->getBestMatchSearchEngine(Ljava/lang/String;Ljava/lang/String;)Landroid/app/SearchEngineInfo;

    move-result-object v2

    .line 76
    .restart local v2       #_result:Landroid/app/SearchEngineInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v2, :cond_1

    .line 78
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    invoke-virtual {v2, p3, v5}, Landroid/app/SearchEngineInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 88
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Landroid/app/SearchEngineInfo;
    :sswitch_4
    const-string v6, "android.app.ISearchEngineManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 92
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 93
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/ISearchEngineManager$Stub;->getSearchEngineBy(ILjava/lang/String;)Landroid/app/SearchEngineInfo;

    move-result-object v2

    .line 94
    .restart local v2       #_result:Landroid/app/SearchEngineInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    if-eqz v2, :cond_2

    .line 96
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    invoke-virtual {v2, p3, v5}, Landroid/app/SearchEngineInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 106
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Landroid/app/SearchEngineInfo;
    :sswitch_5
    const-string v6, "android.app.ISearchEngineManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    .line 109
    sget-object v6, Landroid/app/SearchEngineInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchEngineInfo;

    .line 114
    .local v0, _arg0:Landroid/app/SearchEngineInfo;
    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/ISearchEngineManager$Stub;->setDefaultSearchEngine(Landroid/app/SearchEngineInfo;)Z

    move-result v2

    .line 115
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v2, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 112
    .end local v0           #_arg0:Landroid/app/SearchEngineInfo;
    .end local v2           #_result:Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/app/SearchEngineInfo;
    goto :goto_1

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
