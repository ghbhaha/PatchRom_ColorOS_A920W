.class public Lcom/android/internal/telephony/GeoCodingQuery;
.super Ljava/lang/Object;
.source "GeoCodingQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;
    }
.end annotation


# static fields
.field static final DBFilePath:Ljava/lang/String; = "/system/etc/geocoding.db"

.field static final LOG_TAG:Ljava/lang/String; = "GeoCodingQuery"

.field private static mContext:Landroid/content/Context;

.field private static mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private static mDbHelper:Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;

.field private static mInstanceObjectSync:Ljava/lang/Object;

.field private static mIsDBReady:Z

.field private static mQuerySync:Ljava/lang/Object;

.field private static myInstance:Lcom/android/internal/telephony/GeoCodingQuery;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    sput-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->mDbHelper:Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;

    .line 56
    sput-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->myInstance:Lcom/android/internal/telephony/GeoCodingQuery;

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/GeoCodingQuery;->mIsDBReady:Z

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->mInstanceObjectSync:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->mQuerySync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sput-object p1, Lcom/android/internal/telephony/GeoCodingQuery;->mContext:Landroid/content/Context;

    .line 63
    invoke-static {p1}, Lcom/android/internal/telephony/GeoCodingQuery;->openDatabase(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public static canQuery()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/android/internal/telephony/GeoCodingQuery;->mIsDBReady:Z

    return v0
.end method

.method private static closeDatabase()V
    .locals 1

    .prologue
    .line 159
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->mDbHelper:Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;

    if-eqz v0, :cond_0

    .line 160
    sget-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->mDbHelper:Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->mDbHelper:Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;

    .line 165
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/GeoCodingQuery;->mIsDBReady:Z

    .line 166
    return-void

    .line 162
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/GeoCodingQuery;
    .locals 2
    .parameter "context"

    .prologue
    .line 67
    sget-object v1, Lcom/android/internal/telephony/GeoCodingQuery;->mInstanceObjectSync:Ljava/lang/Object;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->myInstance:Lcom/android/internal/telephony/GeoCodingQuery;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/android/internal/telephony/GeoCodingQuery;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/GeoCodingQuery;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->myInstance:Lcom/android/internal/telephony/GeoCodingQuery;

    .line 71
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    sget-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->myInstance:Lcom/android/internal/telephony/GeoCodingQuery;

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static openDatabase(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 142
    :try_start_0
    const-string v1, "GeoCodingQuery"

    const-string v2, "Open GeoCoding database."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/geocoding.db"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    new-instance v1, Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/telephony/GeoCodingQuery;->mDbHelper:Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;

    .line 145
    sget-object v1, Lcom/android/internal/telephony/GeoCodingQuery;->mDbHelper:Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/GeoCodingQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 146
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/telephony/GeoCodingQuery;->mIsDBReady:Z

    .line 155
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/GeoCodingQuery;->closeDatabase()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "GeoCodingQuery"

    const-string v2, "Failed to open GeoCoding database!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {}, Lcom/android/internal/telephony/GeoCodingQuery;->closeDatabase()V

    goto :goto_0
.end method

.method public static queryByNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .parameter "number"

    .prologue
    .line 80
    sget-object v14, Lcom/android/internal/telephony/GeoCodingQuery;->mQuerySync:Ljava/lang/Object;

    monitor-enter v14

    .line 81
    :try_start_0
    const-string v9, ""

    .line 82
    .local v9, returnValue:Ljava/lang/String;
    const/16 v6, 0xb

    .line 83
    .local v6, numberValidLength:I
    const/4 v4, 0x4

    .line 85
    .local v4, numberTailLength:I
    sget-object v13, Lcom/android/internal/telephony/GeoCodingQuery;->mDbHelper:Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;

    if-nez v13, :cond_0

    .line 86
    const-string v13, "GeoCodingQuery"

    const-string v15, "Database is not opened !"

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    monitor-exit v14

    move-object v10, v9

    .line 136
    .end local v9           #returnValue:Ljava/lang/String;
    .local v10, returnValue:Ljava/lang/String;
    :goto_0
    return-object v10

    .line 90
    .end local v10           #returnValue:Ljava/lang/String;
    .restart local v9       #returnValue:Ljava/lang/String;
    :cond_0
    const-string v13, "GeoCodingQuery"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "number = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v13, " "

    const-string v15, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 93
    .local v7, queryNumber:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    .line 94
    .local v5, numberTotalLength:I
    if-ge v5, v6, :cond_1

    .line 95
    const-string v13, "GeoCodingQuery"

    const-string v15, "The length of dial number is less than 11 !"

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    monitor-exit v14

    move-object v10, v9

    .end local v9           #returnValue:Ljava/lang/String;
    .restart local v10       #returnValue:Ljava/lang/String;
    goto :goto_0

    .line 100
    .end local v10           #returnValue:Ljava/lang/String;
    .restart local v9       #returnValue:Ljava/lang/String;
    :cond_1
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v15, 0x2b

    if-ne v13, v15, :cond_3

    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v15, 0x38

    if-ne v13, v15, :cond_2

    const/4 v13, 0x2

    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v15, 0x36

    if-eq v13, v15, :cond_3

    .line 101
    :cond_2
    const-string v13, "GeoCodingQuery"

    const-string v15, "The dial number is a international number and didn\'t start with +86!"

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    monitor-exit v14

    move-object v10, v9

    .end local v9           #returnValue:Ljava/lang/String;
    .restart local v10       #returnValue:Ljava/lang/String;
    goto :goto_0

    .line 105
    .end local v10           #returnValue:Ljava/lang/String;
    .restart local v9       #returnValue:Ljava/lang/String;
    :cond_3
    sub-int v12, v5, v6

    .line 106
    .local v12, startIndex:I
    sub-int v2, v5, v4

    .line 107
    .local v2, endIndex:I
    invoke-virtual {v7, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 108
    const-string v13, "GeoCodingQuery"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Query number = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v8, 0x7

    .line 111
    .local v8, queryNumberLength:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v8, :cond_6

    .line 113
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v15, 0x30

    if-lt v13, v15, :cond_4

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v15, 0x39

    if-le v13, v15, :cond_5

    .line 114
    :cond_4
    monitor-exit v14

    move-object v10, v9

    .end local v9           #returnValue:Ljava/lang/String;
    .restart local v10       #returnValue:Ljava/lang/String;
    goto/16 :goto_0

    .line 111
    .end local v10           #returnValue:Ljava/lang/String;
    .restart local v9       #returnValue:Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 124
    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Select city_name from NumberCity, city where _id = CityID and NumberHead = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 125
    .local v11, sqlCmd:Ljava/lang/String;
    sget-object v13, Lcom/android/internal/telephony/GeoCodingQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v15, 0x0

    invoke-virtual {v13, v11, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 127
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-lez v13, :cond_7

    .line 128
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 129
    const/4 v13, 0x0

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 132
    :cond_7
    if-eqz v1, :cond_8

    .line 133
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 136
    :cond_8
    monitor-exit v14

    move-object v10, v9

    .end local v9           #returnValue:Ljava/lang/String;
    .restart local v10       #returnValue:Ljava/lang/String;
    goto/16 :goto_0

    .line 137
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v2           #endIndex:I
    .end local v3           #i:I
    .end local v4           #numberTailLength:I
    .end local v5           #numberTotalLength:I
    .end local v6           #numberValidLength:I
    .end local v7           #queryNumber:Ljava/lang/String;
    .end local v8           #queryNumberLength:I
    .end local v10           #returnValue:Ljava/lang/String;
    .end local v11           #sqlCmd:Ljava/lang/String;
    .end local v12           #startIndex:I
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13
.end method
