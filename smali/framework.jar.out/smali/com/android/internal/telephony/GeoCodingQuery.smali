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

.field private static mContext:Landroid/content/Context; = null

.field private static mDatabase:Landroid/database/sqlite/SQLiteDatabase; = null

.field private static mDbHelper:Lcom/android/internal/telephony/GeoCodingQuery$DBHelper; = null

.field private static mInstanceObjectSync:Ljava/lang/Object; = null

.field private static mIsDBReady:Z = false

.field private static mIsInternationCode:Z = false

.field private static mQuerySync:Ljava/lang/Object; = null

.field private static myInstance:Lcom/android/internal/telephony/GeoCodingQuery; = null

.field static final newDataBase:Ljava/lang/String; = "/data/data/com.android.phone/files/geocoding.db"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 55
    sput-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->mDbHelper:Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;

    .line 58
    sput-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->myInstance:Lcom/android/internal/telephony/GeoCodingQuery;

    .line 59
    sput-boolean v1, Lcom/android/internal/telephony/GeoCodingQuery;->mIsDBReady:Z

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->mInstanceObjectSync:Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->mQuerySync:Ljava/lang/Object;

    .line 64
    sput-boolean v1, Lcom/android/internal/telephony/GeoCodingQuery;->mIsInternationCode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sput-object p1, Lcom/android/internal/telephony/GeoCodingQuery;->mContext:Landroid/content/Context;

    .line 70
    invoke-static {p1}, Lcom/android/internal/telephony/GeoCodingQuery;->openDatabase(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method private static CheckNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "num"

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 279
    const/4 v1, 0x0

    .line 280
    .local v1, i:I
    const-string v5, " "

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, queryNumber:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 282
    .local v4, text:Ljava/lang/StringBuffer;
    const-string v3, ""

    .line 283
    .local v3, temp:Ljava/lang/String;
    sput-boolean v7, Lcom/android/internal/telephony/GeoCodingQuery;->mIsInternationCode:Z

    .line 284
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lt v5, v9, :cond_1

    .line 285
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_2

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x38

    if-ne v5, v6, :cond_0

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x36

    if-eq v5, v6, :cond_2

    .line 286
    :cond_0
    sput-boolean v8, Lcom/android/internal/telephony/GeoCodingQuery;->mIsInternationCode:Z

    .line 323
    .end local v2           #queryNumber:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .line 289
    .restart local v2       #queryNumber:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, v7, v9}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 290
    const-string v5, "+86"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 291
    invoke-virtual {v4, v7, v9}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 293
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lt v5, v10, :cond_6

    .line 294
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-ne v5, v6, :cond_5

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-ne v5, v6, :cond_5

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x38

    if-ne v5, v6, :cond_4

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x36

    if-eq v5, v6, :cond_5

    .line 296
    :cond_4
    sput-boolean v8, Lcom/android/internal/telephony/GeoCodingQuery;->mIsInternationCode:Z

    goto :goto_0

    .line 299
    :cond_5
    invoke-virtual {v4, v7, v10}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 300
    const-string v5, "0086"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 301
    invoke-virtual {v4, v7, v10}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 304
    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-lt v5, v11, :cond_8

    .line 305
    invoke-virtual {v4, v7, v11}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 306
    const-string v5, "12593"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "17951"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "96218"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "17960"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "12520"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "17969"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 308
    :cond_7
    invoke-virtual {v4, v7, v11}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 311
    :cond_8
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-ge v1, v5, :cond_a

    .line 312
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 313
    .local v0, c:C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_9

    const/16 v5, 0x39

    if-le v0, v5, :cond_c

    .line 314
    :cond_9
    const/16 v5, 0x2d

    if-eq v0, v5, :cond_b

    const/16 v5, 0x20

    if-eq v0, v5, :cond_b

    .line 321
    .end local v0           #c:C
    :cond_a
    invoke-virtual {v4, v7, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 317
    .restart local v0       #c:C
    :cond_b
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 318
    add-int/lit8 v1, v1, -0x1

    .line 311
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static amoiQueryNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "num"

    .prologue
    .line 188
    const-string v0, ""

    .line 189
    .local v0, city:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    .end local v0           #city:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 192
    .restart local v0       #city:Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/GeoCodingQuery;->CheckNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, tel:Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/telephony/GeoCodingQuery;->mIsInternationCode:Z

    if-nez v2, :cond_0

    .line 197
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_2

    const-string v2, "13800138000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 198
    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/GeoCodingQuery;->geoDataBaseRawQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_2
    invoke-static {v1}, Lcom/android/internal/telephony/GeoCodingQuery;->geoDataBaseQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static canQuery()Z
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/android/internal/telephony/GeoCodingQuery;->mIsDBReady:Z

    return v0
.end method

.method private static closeDatabase()V
    .locals 1

    .prologue
    .line 177
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->mDbHelper:Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;

    if-eqz v0, :cond_0

    .line 178
    sget-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->mDbHelper:Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->mDbHelper:Lcom/android/internal/telephony/GeoCodingQuery$DBHelper;

    .line 183
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/GeoCodingQuery;->mIsDBReady:Z

    .line 184
    return-void

    .line 180
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static geoDataBaseQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "num"

    .prologue
    .line 205
    sget-object v12, Lcom/android/internal/telephony/GeoCodingQuery;->mQuerySync:Ljava/lang/Object;

    monitor-enter v12

    .line 206
    :try_start_0
    const-string v8, ""

    .line 207
    .local v8, city:Ljava/lang/String;
    const/4 v0, 0x0

    .line 208
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v10, 0x0

    .line 209
    .local v10, cursor:Landroid/database/Cursor;
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.android.phone/files/geocoding.db"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 210
    const-string v1, "/data/data/com.android.phone/files/geocoding.db"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 217
    :goto_0
    :try_start_1
    const-string v1, "YELLOW"

    const/4 v2, 0x0

    const-string/jumbo v3, "number=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    .line 231
    if-eqz v10, :cond_0

    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 232
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 233
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 236
    :cond_0
    if-eqz v10, :cond_1

    .line 237
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 239
    :cond_1
    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 242
    :cond_2
    monitor-exit v12

    move-object v9, v8

    .end local v8           #city:Ljava/lang/String;
    .local v9, city:Ljava/lang/String;
    :goto_1
    return-object v9

    .line 211
    .end local v9           #city:Ljava/lang/String;
    .restart local v8       #city:Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/geocoding.db"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 212
    const-string v1, "/system/etc/geocoding.db"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0

    .line 214
    :cond_4
    monitor-exit v12

    move-object v9, v8

    .end local v8           #city:Ljava/lang/String;
    .restart local v9       #city:Ljava/lang/String;
    goto :goto_1

    .line 220
    .end local v9           #city:Ljava/lang/String;
    .restart local v8       #city:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 221
    .local v11, e:Ljava/lang/Exception;
    const-string v1, "location"

    const-string v2, "The database may not be suitable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    if-eqz v10, :cond_5

    .line 223
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 225
    :cond_5
    if-eqz v0, :cond_6

    .line 226
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 228
    :cond_6
    monitor-exit v12

    move-object v9, v8

    .end local v8           #city:Ljava/lang/String;
    .restart local v9       #city:Ljava/lang/String;
    goto :goto_1

    .line 243
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v9           #city:Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static geoDataBaseRawQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "num"

    .prologue
    .line 247
    sget-object v6, Lcom/android/internal/telephony/GeoCodingQuery;->mQuerySync:Ljava/lang/Object;

    monitor-enter v6

    .line 248
    :try_start_0
    const-string v0, ""

    .line 249
    .local v0, city:Ljava/lang/String;
    const/4 v3, 0x0

    .line 251
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Ljava/io/File;

    const-string v7, "/data/data/com.android.phone/files/geocoding.db"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 252
    const-string v5, "/data/data/com.android.phone/files/geocoding.db"

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 258
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Select city_name from NumberCity, city where _id = CityID and NumberHead = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, sqlCmd:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 262
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 263
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 264
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 267
    :cond_0
    if-eqz v2, :cond_1

    .line 268
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_1
    if-eqz v3, :cond_2

    .line 271
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 273
    :cond_2
    monitor-exit v6

    move-object v1, v0

    .end local v0           #city:Ljava/lang/String;
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v4           #sqlCmd:Ljava/lang/String;
    .local v1, city:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 253
    .end local v1           #city:Ljava/lang/String;
    .restart local v0       #city:Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/io/File;

    const-string v7, "/system/etc/geocoding.db"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 254
    const-string v5, "/system/etc/geocoding.db"

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    goto :goto_0

    .line 256
    :cond_4
    monitor-exit v6

    move-object v1, v0

    .end local v0           #city:Ljava/lang/String;
    .restart local v1       #city:Ljava/lang/String;
    goto :goto_1

    .line 274
    .end local v1           #city:Ljava/lang/String;
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/GeoCodingQuery;
    .locals 2
    .parameter "context"

    .prologue
    .line 74
    sget-object v1, Lcom/android/internal/telephony/GeoCodingQuery;->mInstanceObjectSync:Ljava/lang/Object;

    monitor-enter v1

    .line 75
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->myInstance:Lcom/android/internal/telephony/GeoCodingQuery;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/android/internal/telephony/GeoCodingQuery;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/GeoCodingQuery;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->myInstance:Lcom/android/internal/telephony/GeoCodingQuery;

    .line 78
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    sget-object v0, Lcom/android/internal/telephony/GeoCodingQuery;->myInstance:Lcom/android/internal/telephony/GeoCodingQuery;

    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static openDatabase(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 155
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/GeoCodingQuery;->mIsDBReady:Z

    .line 156
    return-void
.end method

.method public static queryByNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "number"

    .prologue
    .line 89
    invoke-static {p0}, Lcom/android/internal/telephony/GeoCodingQuery;->amoiQueryNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
