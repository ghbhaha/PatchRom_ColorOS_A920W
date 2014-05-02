.class public Lcom/android/internal/app/AmoiSecurityConfirmDialog;
.super Landroid/app/Activity;
.source "AmoiSecurityConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;,
        Lcom/android/internal/app/AmoiSecurityConfirmDialog$ConfirmDialogDismissListener;,
        Lcom/android/internal/app/AmoiSecurityConfirmDialog$CallerInfo;
    }
.end annotation


# static fields
.field public static final AMOI_SECURITY_CHECK_DONE:Ljava/lang/String; = "amoi.systemsecurity.checkdone"

.field public static final AMOI_SECURITY_CHECK_RESULT:Ljava/lang/String; = "amoi.systemsecurity.checkresult"

.field public static final APP_NAME_BE_CHECKED:Ljava/lang/String; = "appNameBeChecked"

.field public static final APP_WANT_TODO:Ljava/lang/String; = "appWantToDo"

.field private static final DEBUG_SYSTEM_SECURITY:Z = true

.field public static final SECURITY_CONFIRM_MESSAGE:Ljava/lang/String; = "securityConfirmMessage"


# instance fields
.field mdialog:Landroid/app/CheckUserPermissionDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog;->mdialog:Landroid/app/CheckUserPermissionDialog;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/AmoiSecurityConfirmDialog;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/internal/app/AmoiSecurityConfirmDialog;->amoiLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/app/AmoiSecurityConfirmDialog;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/AmoiSecurityConfirmDialog;->saveSystemSecurityCheck(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private amoiLog(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 186
    if-eqz p1, :cond_0

    .line 187
    const-string v0, "AmoiSecurityConfirmDialog"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :goto_0
    return-void

    .line 189
    :cond_0
    const-string v0, "AmoiSecurityConfirmDialog"

    const-string/jumbo v1, "null msg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveSystemSecurityCheck(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 11
    .parameter "appName"
    .parameter "appWant"
    .parameter "allow"

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveSystemSecurityCheck: appName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " appWant"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "allow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/AmoiSecurityConfirmDialog;->amoiLog(Ljava/lang/String;)V

    .line 145
    const/4 v6, 0x0

    .line 146
    .local v6, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/internal/app/AmoiSecurityConfirmDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/AmoiProviderData$Field;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    aput-object p2, v2, v9

    const-string/jumbo v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v9

    const-string/jumbo v5, "name DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 148
    if-nez v6, :cond_0

    .line 180
    :goto_0
    return v9

    .line 151
    :cond_0
    const/4 v9, 0x1

    .line 152
    .local v9, retV:Z
    if-eqz p3, :cond_1

    const-string v8, "enable"

    .line 154
    .local v8, permission:Ljava/lang/String;
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 155
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 156
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 158
    .local v10, values:Landroid/content/ContentValues;
    invoke-virtual {v10, p2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/internal/app/AmoiSecurityConfirmDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/AmoiProviderData$Field;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "name=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 163
    .local v7, i:I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_2

    .line 164
    const/4 v9, 0x1

    goto :goto_2

    .line 152
    .end local v7           #i:I
    .end local v8           #permission:Ljava/lang/String;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_1
    const-string v8, "disable"

    goto :goto_1

    .line 166
    .restart local v7       #i:I
    .restart local v8       #permission:Ljava/lang/String;
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 170
    .end local v7           #i:I
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_3
    :try_start_1
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 172
    .restart local v10       #values:Landroid/content/ContentValues;
    const-string/jumbo v0, "name"

    invoke-virtual {v10, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v10, p2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/internal/app/AmoiSecurityConfirmDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/AmoiProviderData$Field;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const-string/jumbo v4, "onCreate"

    invoke-direct {p0, v4}, Lcom/android/internal/app/AmoiSecurityConfirmDialog;->amoiLog(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/android/internal/app/AmoiSecurityConfirmDialog;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 33
    .local v2, data:Landroid/os/Bundle;
    const-string/jumbo v4, "securityConfirmMessage"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, message:Ljava/lang/String;
    const-string v4, "appNameBeChecked"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, appName:Ljava/lang/String;
    const-string v4, "appWantToDo"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, appWant:Ljava/lang/String;
    new-instance v4, Landroid/app/CheckUserPermissionDialog;

    new-instance v5, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;

    new-instance v6, Lcom/android/internal/app/AmoiSecurityConfirmDialog$CallerInfo;

    invoke-direct {v6, p0, p0, v0, v1}, Lcom/android/internal/app/AmoiSecurityConfirmDialog$CallerInfo;-><init>(Lcom/android/internal/app/AmoiSecurityConfirmDialog;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, p0, v6}, Lcom/android/internal/app/AmoiSecurityConfirmDialog$SecurityConfirmDialogListener;-><init>(Lcom/android/internal/app/AmoiSecurityConfirmDialog;Lcom/android/internal/app/AmoiSecurityConfirmDialog$CallerInfo;)V

    invoke-direct {v4, p0, v3, v5}, Landroid/app/CheckUserPermissionDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v4, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog;->mdialog:Landroid/app/CheckUserPermissionDialog;

    .line 38
    iget-object v4, p0, Lcom/android/internal/app/AmoiSecurityConfirmDialog;->mdialog:Landroid/app/CheckUserPermissionDialog;

    new-instance v5, Lcom/android/internal/app/AmoiSecurityConfirmDialog$ConfirmDialogDismissListener;

    invoke-direct {v5, p0, p0}, Lcom/android/internal/app/AmoiSecurityConfirmDialog$ConfirmDialogDismissListener;-><init>(Lcom/android/internal/app/AmoiSecurityConfirmDialog;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/app/CheckUserPermissionDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 39
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 44
    return-void
.end method
