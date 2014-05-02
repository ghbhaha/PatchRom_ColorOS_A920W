.class public abstract Landroid/os/IDualBatteryService$Stub;
.super Landroid/os/Binder;
.source "IDualBatteryService.java"

# interfaces
.implements Landroid/os/IDualBatteryService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDualBatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDualBatteryService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IDualBatteryService"

.field static final TRANSACTION_getAllowUserSetFlag:I = 0xc

.field static final TRANSACTION_getBatALevel:I = 0x6

.field static final TRANSACTION_getBatAVoltage:I = 0x8

.field static final TRANSACTION_getBatBLevel:I = 0x7

.field static final TRANSACTION_getBatBVoltage:I = 0x9

.field static final TRANSACTION_getBatteryPresentStatus:I = 0x5

.field static final TRANSACTION_getInternalChangeStatus:I = 0xb

.field static final TRANSACTION_getPmicChangeStatus:I = 0xa

.field static final TRANSACTION_getPreserve1:I = 0xd

.field static final TRANSACTION_getPreserve2:I = 0xe

.field static final TRANSACTION_getSupplyPowerBattery:I = 0x4

.field static final TRANSACTION_setSupplyPowerBattery:I = 0x1

.field static final TRANSACTION_setThd1:I = 0x2

.field static final TRANSACTION_setThd2:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "android.os.IDualBatteryService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IDualBatteryService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "android.os.IDualBatteryService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IDualBatteryService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/os/IDualBatteryService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Landroid/os/IDualBatteryService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IDualBatteryService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 42
    :sswitch_0
    const-string v3, "android.os.IDualBatteryService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "android.os.IDualBatteryService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 50
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IDualBatteryService$Stub;->setSupplyPowerBattery(I)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 56
    .end local v0           #_arg0:I
    :sswitch_2
    const-string v3, "android.os.IDualBatteryService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 59
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IDualBatteryService$Stub;->setThd1(I)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 65
    .end local v0           #_arg0:I
    :sswitch_3
    const-string v3, "android.os.IDualBatteryService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 68
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IDualBatteryService$Stub;->setThd2(I)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 74
    .end local v0           #_arg0:I
    :sswitch_4
    const-string v3, "android.os.IDualBatteryService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Landroid/os/IDualBatteryService$Stub;->getSupplyPowerBattery()I

    move-result v1

    .line 76
    .local v1, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 82
    .end local v1           #_result:I
    :sswitch_5
    const-string v3, "android.os.IDualBatteryService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/os/IDualBatteryService$Stub;->getBatteryPresentStatus()I

    move-result v1

    .line 84
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 90
    .end local v1           #_result:I
    :sswitch_6
    const-string v3, "android.os.IDualBatteryService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroid/os/IDualBatteryService$Stub;->getBatALevel()I

    move-result v1

    .line 92
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 98
    .end local v1           #_result:I
    :sswitch_7
    const-string v3, "android.os.IDualBatteryService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroid/os/IDualBatteryService$Stub;->getBatBLevel()I

    move-result v1

    .line 100
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 106
    .end local v1           #_result:I
    :sswitch_8
    const-string v3, "android.os.IDualBatteryService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Landroid/os/IDualBatteryService$Stub;->getBatAVoltage()I

    move-result v1

    .line 108
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 114
    .end local v1           #_result:I
    :sswitch_9
    const-string v3, "android.os.IDualBatteryService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroid/os/IDualBatteryService$Stub;->getBatBVoltage()I

    move-result v1

    .line 116
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 122
    .end local v1           #_result:I
    :sswitch_a
    const-string v3, "android.os.IDualBatteryService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Landroid/os/IDualBatteryService$Stub;->getPmicChangeStatus()I

    move-result v1

    .line 124
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 130
    .end local v1           #_result:I
    :sswitch_b
    const-string v3, "android.os.IDualBatteryService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Landroid/os/IDualBatteryService$Stub;->getInternalChangeStatus()I

    move-result v1

    .line 132
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 138
    .end local v1           #_result:I
    :sswitch_c
    const-string v3, "android.os.IDualBatteryService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Landroid/os/IDualBatteryService$Stub;->getAllowUserSetFlag()I

    move-result v1

    .line 140
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 146
    .end local v1           #_result:I
    :sswitch_d
    const-string v3, "android.os.IDualBatteryService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/os/IDualBatteryService$Stub;->getPreserve1()I

    move-result v1

    .line 148
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 154
    .end local v1           #_result:I
    :sswitch_e
    const-string v3, "android.os.IDualBatteryService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Landroid/os/IDualBatteryService$Stub;->getPreserve2()I

    move-result v1

    .line 156
    .restart local v1       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
